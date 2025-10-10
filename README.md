# Hydra-TUD Example Document

Clone and start editing with Typst to create your own document.

## Building the Document

### Prerequisites

You need to have [Typst](https://typst.app/) installed on your system.

**Using cargo (Rust package manager):**
```bash
cargo install --git https://github.com/typst/typst --locked typst-cli
```

**On macOS (using Homebrew):**
```bash
brew install typst
```

**On Linux:**
Download the latest release from [Typst releases](https://github.com/typst/typst/releases) or use your package manager.

**On Windows:**
Download the installer from [Typst releases](https://github.com/typst/typst/releases).

### Compilation

To compile the document to PDF:

```bash
make all 
```

This will generate `main.pdf` in the same directory.

For continuous compilation (watch mode):

```bash
make watch
```

This will automatically recompile the document whenever you save changes.

## Author

[Henning Dierks](https://github.com/henningf3)


