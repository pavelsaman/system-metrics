#!/usr/bin/env bash

FILEVIRUSES="clamscan.log"
FILEUPDATES="freshclam.log"
FILEPATH="/var/log/clamav/"

function last_number_of_viruses {
    grep -i infected "${FILEPATH}${FILEVIRUSES}" | tail -1 | cut -d':' -f2 | tr '\n' ' ' | sed 's/[ ]//g'
}

function last_update_attempt {
    grep "update process" "${FILEPATH}${FILEUPDATES}" | tail -1 | cut -d'-' -f1
}

case "$1" in
    viruses)
        last_number_of_viruses
        ;;
    updates)
        last_update_attempt
        ;;
esac

exit 0;
