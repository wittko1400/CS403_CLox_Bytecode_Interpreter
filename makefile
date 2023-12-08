# Compiler and flags
CC := gcc
CFLAGS := -Wall -Iinclude

# Directories
SRC_DIR := src
OBJ_DIR := build/obj
BIN_DIR := build/bin

# Target executable
TARGET := $(BIN_DIR)/my_program

# Source files
SOURCES := $(wildcard $(SRC_DIR)/*.c)
OBJECTS := $(patsubst $(SRC_DIR)/%.c, $(OBJ_DIR)/%.o, $(SOURCES))

# Default target
.DEFAULT_GOAL := all

# Create directories if they don't exist
$(OBJ_DIR) $(BIN_DIR):
	@mkdir -p $@

# Compile source files into object files
$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c | $(OBJ_DIR)
	$(CC) $(CFLAGS) -c $< -o $@

# Link object files into the final executable
$(TARGET): $(OBJECTS) | $(BIN_DIR)
	$(CC) $(CFLAGS) $(OBJECTS) -o $@

# Build and run the executable
run: $(TARGET)
	@./$(TARGET)

# Generate and open Doxygen documentation
doc:
	@doxygen Doxyfile
	@xdg-open $(OBJ_DIR)/html/index.html

# Clean up object files and the executable
.PHONY: clean
clean:
	@rm -rf $(OBJ_DIR) $(BIN_DIR)

# Ensure directories exist before compiling
$(OBJECTS): | $(OBJ_DIR)

$(TARGET): | $(BIN_DIR)

# Default target
all: $(TARGET)