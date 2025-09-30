# Modeling Electronics

A comprehensive document on semiconductor device, electronics and RF modeling written in Typst.

## Overview

This project provides a PDF document (report format, intended for digital reading) covering modeling techniques from basics to compact models. The document is structured in two main parts:

### Main Content
- **Semiconductor Device Modeling**: From basic semiconductor physics to advanced compact models (diodes, BJTs, MOSFETs)
- **Electronics Modeling**: Passive components, amplifiers, oscillators, and circuit analysis techniques
- **RF Modeling**: Transmission line theory, S-parameters, RF circuits, and electromagnetic simulation
- **Compact Model Development**: Model extraction, validation, and simulator implementation

### Appendices (Foundations)
- **Appendix A: Foundations of Electrodynamics**: Maxwell's equations, electromagnetic waves, energy and momentum, boundary conditions
- **Appendix B: Foundations of Quantum Theory**: Wave-particle duality, Schrödinger equation, operators and observables, perturbation theory
- **Appendix C: Foundations of Solid State Physics**: Crystal structure, lattice vibrations, electronic band structure, semiconductors, transport and optical properties

## Building the Document

### Prerequisites

You need to have [Typst](https://typst.app/) installed on your system.

#### Installation

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
typst compile main.typ
```

This will generate `main.pdf` in the same directory.

For continuous compilation (watch mode):

```bash
typst watch main.typ
```

This will automatically recompile the document whenever you save changes.

### Output Format

The document is optimized for digital reading with:
- A4 paper size
- Proper margins for on-screen viewing
- Page numbering
- Comprehensive table of contents
- Cross-references between sections
- Mathematical equations using Typst's native math support

## Document Structure

```
main.typ              # Main Typst document source
├── Introduction
├── Semiconductor Device Modeling
├── Electronics Modeling  
├── RF Modeling
├── Compact Model Development
├── Conclusion
└── Appendices
    ├── A: Foundations of Electrodynamics
    ├── B: Foundations of Quantum Theory
    └── C: Foundations of Solid State Physics
```

## Contributing

This is a living document. Contributions, corrections, and expansions are welcome.

## License

[To be determined]

## Author

Henning F.