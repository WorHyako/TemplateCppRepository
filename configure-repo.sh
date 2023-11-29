#!/bin/sh

# Copy pre-commit hook to .git folder to track pre-commit events
cp config-files/pre-commit .git/hooks/pre-commit

# Copy clang-format file from remote WorCodeStyle repo to current repo root
git clone https://github.com/WorHyako/WorCodeStyle.git

cp WorCodeStyle/.clang-format .clang-format

# Clean up code style repo
rm -r WorCodeStyle
