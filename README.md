# CS403_C-Lox
This Lox interpreter is a C implementation based on the bytecode interpreter in the book [*Crafting Interpreters* by Robert Nystrom](https://craftinginterpreters.com/). 

## Development
Indivdual programs were ran while building to check that the code works

## Install/Build
A basic C development package is needed to run the interpreter.

I recommend using an Ubuntu shell like WSL and the running the command.
```
sudo apt update
sudo apt install build-essential
```

Clone the Lox Interpreter repo into where you stored the repos folder of Visual Studio.
```
git clone https://github.com/wittko1400/CS403_C-Lox
```

Finally load the project into your choice of IDE and open a WSL shell terminal through the IDE.
## Usage
- Build the Project using the provided makefile:
```
make clean
make
```
- This will create a "obj" folder and also a "bin" folder that are stored in a "build" folder that contains the compiled executable file "my_program"
When run without an argument it operates as a <abbr title="read-eval-print loop">REPL</abbr> prompt which runs until it encounters an exit code. Otherwise, when given a Lox source file it will attempt to execute it and then exit.

## Testing
Tests were taken from Robert Nystroms Tetsing repo to test his lox interpreter.
Not all tests were ran due to running into the deadline but various tests were ran and checked for correctness. 


# ChatGPT
For this assignment's preparation, the author(s) have utilized ChatGPT, a language model created by OpenAI. 
Within this assignment, the ChatGPT was used for purposes such as brainstorming, grammatical correction, writing paraphrasing, and learning.
