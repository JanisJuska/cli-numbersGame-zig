const std = @import("std");

pub fn randomIntegeru32() !u32 {
    var threaded: std.Io.Threaded = .init_single_threaded;

    defer threaded.deinit();

    const io = threaded.io();

    //Seed
    var seed: u64 = undefined;
    io.random(std.mem.asBytes(&seed));

    //PRNG
    var prng = std.Random.DefaultPrng.init(seed);

    // Random API
    const random = prng.random();

    //Number from 1-100
    const number = random.intRangeAtMost(u32, 1, 100);

    return number;
}
