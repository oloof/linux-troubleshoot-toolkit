#!/usr/bin/env bash

if [$# -lt 1 ]; then 
	echo "Usage: ./log_extract.sh <log_file>"
	exit 1
fi

LOGFILE="$1"
OUTFILE="extracted_error.txt"

if [ ! -f "$LOGFILE" ]; then 
	echo "File not found: $LOGFILE"
	exit 1
fi

echo "Extracting useful error lines from: $LOGFILE"
echo "Output: $OUTFILE"

grep -niE "ERROR:|WARNING:|Failed|failed|fatal|No space|Permission denied|Traceback|exit code|do_fetch|do_compile|do_install|Nothing PROVIDES|Unable to|cannot|notfound" "$LOGFILE" > "$OUTFILE"

echo 
echo "Done."
echo "Number of matched lines:"
wc -l "$OUTFILE"
echo
echo "Preview"
head -40 "$OUTFILE"
