const std = @import("std");

pub fn getInput(init: std.process.Init, buffer: []u8) ![]u8 {
    const io = init.io;

    var stdin_reader = std.Io.File.stdin().reader(io, buffer);
    const stdin = &stdin_reader.interface;

    const line = try stdin.takeDelimiterExclusive('\n');

    return line;
}
