FILE=aoc_1_1.zig
zig run $FILE
fswatch $FILE |
    while read -r path; do
        echo $path
        zig run $FILE
    done
