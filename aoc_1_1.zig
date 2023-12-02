const std = @import("std");

pub fn main() !void {
    const buffer2 = "abcdefg";
    var it = std.mem.split(
        u8,
        buffer2,
    );
    while (it.next()) |slice| {
        std.debug.print("{any}\n", .{slice});
    }
    var file = try std.fs.cwd().openFile("input_1_1.txt", .{});
    defer file.close();
    var buffer: [100]u8 = undefined;

    const bytes_read = try file.readAll(&buffer);
    _ = bytes_read;
    var iter = std.mem.split(u8, &buffer, "\n");

    while (iter.next()) |entry| {
        // loop over each character in the entry

        var entry_iter = std.mem.window(u8, entry, 1, 1);
        while (entry_iter.next()) |c| {
            std.debug.print("{any}", .{c});
        }
        std.debug.print("{any}\n", .{entry});
    }
}
