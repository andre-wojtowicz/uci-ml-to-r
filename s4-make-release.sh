#!/bin/bash

OUT_ZIP_FILE="data-collection.zip"

rm -f $OUT_ZIP_FILE

zip $OUT_ZIP_FILE $(find data-collection/*/preprocessed/*.rds)

for f in $(find data-collection/*/preprocessed/*.rds) ; do
    dataset_name=$(echo "$f" | sed -e 's/data-collection\/\(.*\)\/preprocessed\/.*\.rds/\1/')
    echo "Renaming $f -> $dataset_name.rds"
    # https://stackoverflow.com/a/16710654
    printf "@ $f\n@=$dataset_name.rds\n" | zipnote -w $OUT_ZIP_FILE
done
