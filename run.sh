fswatch hello.zig |
    while read -r path; do
        echo $path
        zig run hello.zig
    done
