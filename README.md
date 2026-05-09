````md
# CLI Numbers Game (Zig)

A simple terminal number guessing game written in Zig.

The computer generates a random number between 1 and 100 and the player has to guess it.

This project was built as a beginner Zig learning project.

---

## Features

- Random number generation
- Input validation
- Error handling
- Quit command (`Q`)
- Cross-platform builds with Zig

---

## Requirements

- Zig `0.16.0`

Check your Zig version:

```bash
zig version
````

---

## Clone Repository

```bash
git clone https://github.com/JanisJuska/cli-numbersGame-zig.git
cd cli-numbersGame-zig
```

---

## Run In Debug Mode

```bash
zig build run
```

---

## Build Executable

```bash
zig build -Doptimize=ReleaseFast
```

Executable output:

```txt
zig-out/bin/numbersGame
```

---

## Cross Compilation

### Linux

```bash
zig build -Dtarget=x86_64-linux -Doptimize=ReleaseFast
```

### Windows

```bash
zig build -Dtarget=x86_64-windows -Doptimize=ReleaseFast
```

### macOS (Apple Silicon)

```bash
zig build -Dtarget=aarch64-macos -Doptimize=ReleaseFast
```

---

## Usage

Run the executable:

### Linux / macOS

```bash
./numbersGame
```

### Windows

```powershell
.\numbersGame.exe
```

---

## Gameplay

* Enter a number between `1` and `100`
* The game tells you if your guess is too high or too low
* Type `Q` to quit

Example:

```txt
Number Guessing Game

Enter a number: 50
Your number is too low. Try higher!

Enter a number: 75
Your number is too high. Try lower!

Enter a number: 63
You guessed correctly! Congratz!
```

---

## Project Structure

```txt
src/
├── main.zig
├── random.zig
└── user_input.zig
```

---

## Learning Goals

This project was mainly created to practice:

* Zig modules
* Error handling
* User input
* Random numbers
* Parsing
* Loops and conditionals

---

## License

MIT

```
```
