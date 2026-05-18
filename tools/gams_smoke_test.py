import argparse
import pathlib
import sys
import tempfile


def main() -> int:
    parser = argparse.ArgumentParser(description="Check that Python can import and run GAMS.")
    parser.add_argument("--gams-system-dir", required=True, help="Directory containing gams.exe")
    args = parser.parse_args()

    gams_dir = pathlib.Path(args.gams_system_dir).resolve()
    if not (gams_dir / "gams.exe").exists():
        print(f"ERROR: no gams.exe found in {gams_dir}", file=sys.stderr)
        return 2

    try:
        import gams
        from gams import GamsWorkspace
    except Exception as exc:
        print(f"ERROR: could not import GAMS Python API: {exc}", file=sys.stderr)
        return 3

    print(f"GAMS Python API version: {getattr(gams, '__version__', 'unknown')}")
    print(f"GAMS system directory: {gams_dir}")

    with tempfile.TemporaryDirectory() as tmp:
        ws = GamsWorkspace(working_directory=tmp, system_directory=str(gams_dir))
        job = ws.add_job_from_string(
            """
            Set i / a, b, c /;
            Parameter x(i) / a 1, b 2, c 3 /;
            Scalar total;
            total = sum(i, x(i));
            display total;
            """
        )
        job.run()
        total = job.out_db["total"].first_record().value

    if abs(total - 6.0) > 1e-9:
        print(f"ERROR: unexpected GAMS result: {total}", file=sys.stderr)
        return 4

    print("GAMS smoke test OK: total = 6")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
