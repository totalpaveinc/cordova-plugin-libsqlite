
# Update script, to copy the release build of SQLite from the sqlite repository.
# Assumes the SQLite repo is checked out as a sibling to this repository.

cp ../sqlite/bin/dist/android/sqlite3-release.aar ./bin/sqlite3.aar
rm -rf ./bin/sqlite3.xcframework
cp -rf ../sqlite/bin/dist/ios/sqlite3.xcframework ./bin/sqlite3.xcframework
