# Makefile for modeling_electronics Typst document

.PHONY: all build watch clean help

# Default target
all: build

# Build the PDF document
build:
	@echo "Compiling Typst document..."
	typst compile main.typ
	@echo "Done! Output: main.pdf"

# Watch mode - automatically recompile on changes
watch:
	@echo "Starting watch mode..."
	typst watch main.typ

# Clean generated files
clean:
	@echo "Cleaning generated files..."
	rm -f main.pdf
	@echo "Done!"

# Display help information
help:
	@echo "Available targets:"
	@echo "  build  - Compile the Typst document to PDF (default)"
	@echo "  watch  - Watch for changes and automatically recompile"
	@echo "  clean  - Remove generated PDF file"
	@echo "  help   - Display this help message"
