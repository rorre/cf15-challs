# KatVM

by rorre

---

## Description

I made my own language! It's very simple, yet effective in comparing things. It has turing machine like properties as well.

Here are the instructions available, write in just like how you write assembly or script, its top to down:

- `left <N>`, `right <N>`: Move the tape head to left or right by N
- `store <STRING>`: Store string to from current head, the head will move right after the string
- `print`: Print from head to next empty
- `input`: Input from stdin and store it in current head, the head will move right after the string
- `push`: Push current head to stack
- `popeq <CHAR>`: Pop current stack, and compare the character with given char. If true, it will skip next instruction
- `quit`: Exit

You may write it the code in a `.kat` file, and you can compile it with `python build.py yourfile.kat output.kb`. Then execute it
with `python katvm.py output.kb`.

## Running Web Compiler

```
docker compose up --build -d
```

## Compiling

1. `cd src`
2. Generate .kat file `python generate.py` for flag
3. Compile .kat to .kb `python web/build.py check.kat check.kb`
4. Compile VM runtime `python build_runner.py`
5. The file to upload is `check.kb` and `run_katvm.py`
