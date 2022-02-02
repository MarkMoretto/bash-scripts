#!/bin/bash

# Script to enhance mkdir with the ability to add a file. This probably already exists somewhere.

mkf() {
	NEW_DIR=""$1""
	FILE_NAME=""$2""
	mkdir -p "${NEW_DIR}"
	touch "${NEW_DIR}/${FILE_NAME}"
}

# Check for correct number of args.  In this case, that would be two.
# First arg is path to file without the file name.
# Second arg is name of new file.

if [[ $# -eq 2 ]]; then
	mkf $@;
fi
