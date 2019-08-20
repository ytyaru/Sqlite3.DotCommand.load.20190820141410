SCRIPT_DIR=$(cd $(dirname $0); pwd)
cd "$SCRIPT_DIR"

sqlite3 :memory: \
".load /home/pi/root/sys/env/tool/sqlite_ext/series.so" \
"SELECT value FROM generate_series(0,20,5);"

