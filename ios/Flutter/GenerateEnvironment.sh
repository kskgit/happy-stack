#!/bin/sh

#!/bin/sh
if [ -f "$PROJECT_DIR/../.env" ]; then
    export $(grep -v '^#' "$PROJECT_DIR/../.env" | xargs)
fi

OUTPUT_FILE="$PROJECT_DIR/Flutter/EnvironmentVariables.xcconfig"

cat <<EOF > "$OUTPUT_FILE"
CLIENT_ID_INFO_PLIST=$CLIENT_ID_INFO_PLIST
EOF