# Makefile for modeling_electronics Typst document

.PHONY: all build watch clean help deps update-deps

# Path of the submodule that provides requirements (override if different)
REQUIREMENTS_SUBMODULE ?= hydra-tud

# Main document name (without extension)
MAIN_DOCUMENT ?= main

# Default target
all: build

# Update / init submodule(s) to the recorded commit from superproject
deps:
	@if command -v git >/dev/null 2>&1 && [ -d .git ] && [ -f .gitmodules ]; then \
		echo "Updating / initializing submodule(s) to commit recorded in superproject..."; \
		git submodule update --init --recursive "$(REQUIREMENTS_SUBMODULE)"; \
	else \
		echo "Skipping updating / initializing submodule(s). No Repo or 'git' available."; \
	fi

# Update submodule(s) to the latest upstream commit
update-deps:
	@echo "Updating / initializing submodule(s) to the latest upstream commit..."
	@if command -v git >/dev/null 2>&1 && [ -d .git ] && [ -f .gitmodules ]; then \
		git submodule update --init --recursive --remote "$(REQUIREMENTS_SUBMODULE)"; \
	else \
		echo "Skipping updating / initializing submodule(s). No Repo or 'git' available."; \
	fi


# Build the PDF document
build: deps
	@echo "Compiling Typst document..."
	typst compile $(MAIN_DOCUMENT).typ
	@echo "Done! Output: $(MAIN_DOCUMENT).pdf"

# Watch mode - automatically recompile on changes
watch: deps
	@echo "Starting watch mode..."
	typst watch $(MAIN_DOCUMENT).typ

# Clean generated files
clean:
	@echo "Cleaning generated files..."
	rm -f $(MAIN_DOCUMENT).pdf
	@echo "Done!"

# Display help information
help:
	@echo "Available targets:"
	@echo "  build        - Compile the Typst document to PDF (default)"
	@echo "  watch        - Watch for changes and automatically recompile"
	@echo "  clean        - Remove generated PDF file"
	@echo "  deps         - Update / init submodule(s) to the recorded commit from superproject"
	@echo "  update-deps  - Update / init submodule(s) to latest commit in upstream repository"
	@echo ""
	@echo "Variables:"
	@echo "  REQUIREMENTS_SUBMODULE  - Path to the submodule (default: hydra-tud)"
	@echo "  MAIN_DOCUMENT           - Main document name without extension (default: main)"
