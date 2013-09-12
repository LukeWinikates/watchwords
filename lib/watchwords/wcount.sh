find $DIR -name "$GLOB" -print0 |xargs -0 cat | tr '[:punct:]' ' ' | tr ' ' '\n' | sort | uniq -c | sort -rn
