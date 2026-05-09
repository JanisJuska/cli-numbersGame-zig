const std = @import("std");
const random = @import("./random.zig");
const input = @import("./user_input.zig");

pub fn main(init: std.process.Init) !void {
    var buffer: [4]u8 = undefined;

    var guessedCorrectly: bool = false;
    const randomInt = try random.randomIntegeru32();

    std.debug.print("Number Guessing Game\n", .{});
    std.debug.print("Rules: Guess a number between 1 and 100 (or type 'Q' + ENTER to quit)\n", .{});
    std.debug.print("\n", .{});

    while (!guessedCorrectly) {
        std.debug.print("Enter a number: ", .{});

        const user_input = input.getInput(init, &buffer) catch {
            std.debug.print("Your input was invalid (too long). Please try again.\n", .{});
            continue;
        };
        if (std.ascii.eqlIgnoreCase(user_input, "q")) {
            std.debug.print("Exiting...\n", .{});
            return;
        }

        const user_number = std.fmt.parseInt(u32, user_input, 10) catch {
            std.debug.print("Your input was invalid (not a number). Please try again.\n", .{});
            continue;
        };

        if (randomInt == user_number) {
            std.debug.print("\nComputer Number: {}\n", .{randomInt});
            std.debug.print("You guessed correctly! Congratz!\n", .{});
            guessedCorrectly = true;
        } else if (user_number < randomInt) {
            std.debug.print("\nYour number is too low. Try higher!\n", .{});
        } else {
            std.debug.print("\nYour number is too high. Try lower!\n", .{});
        }
    }
}
