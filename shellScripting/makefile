# This is a comment in Makefile Variables
SCRIPT = helloScript.sh
# Default target
all: run

# Build target (optional for shell, but simulating a "build" process)
build:
	@echo "Making script executable..."
	@chmod 744 $(SCRIPT)

# Run target
run: build
	@echo "Running the script..."
	./$(SCRIPT)

# Clean target
clean:
	@echo "Cleaning up..."
	rm -f output.txt

# Help target
help:
	@echo "Available targets:"
	@echo "  make build  - Make script executable"
	@echo "  make run    - Run the script"
	@echo "  make clean  - Remove generated files"
	@echo "  make help   - Show this help message"

