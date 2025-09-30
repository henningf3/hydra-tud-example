# Contributing to Modeling Electronics

Thank you for your interest in contributing to this document on semiconductor device, electronics and RF modeling!

## How to Contribute

### Prerequisites

Before you begin, ensure you have [Typst](https://typst.app/) installed on your system. See the [README.md](README.md) for installation instructions.

### Making Changes

1. **Clone the repository** (if you haven't already)
   ```bash
   git clone https://github.com/henningf3/modeling_electronics.git
   cd modeling_electronics
   ```

2. **Create a branch** for your changes
   ```bash
   git checkout -b feature/your-feature-name
   ```

3. **Edit the document**
   - The main document source is `main.typ`
   - Follow the existing structure and style
   - Use proper Typst syntax for mathematical equations
   - Maintain consistent heading levels

4. **Test your changes**
   ```bash
   make build
   # or
   typst compile main.typ
   ```

5. **Review the output**
   - Open `main.pdf` to verify your changes
   - Check for formatting issues
   - Ensure equations render correctly

6. **Commit your changes**
   ```bash
   git add main.typ
   git commit -m "Brief description of your changes"
   ```

7. **Submit a pull request**

## Content Guidelines

### Main Content Sections
- Focus on practical modeling approaches
- Include relevant equations and derivations
- Provide context and explanations
- Reference appendices for theoretical foundations when appropriate

### Appendices
- Cover foundational physics concepts
- Include key equations and principles
- Keep explanations concise but complete
- Use proper mathematical notation

### Style Guidelines

1. **Equations**: Use Typst's math mode with proper symbols
   ```typst
   $ E = m c^2 $
   ```

2. **Cross-references**: Use labels for important sections
   ```typst
   = Important Section <label-name>
   
   See @label-name for details.
   ```

3. **Mathematical symbols**: Use Typst's built-in symbols
   - `planck.reduce` for ℏ (reduced Planck constant)
   - `epsilon_0` for ε₀ (permittivity of free space)
   - `mu_0` for μ₀ (permeability of free space)
   - `bold(E)` for bold vectors

4. **Consistency**: Maintain consistent notation throughout the document

### Testing

Before submitting:
- Build the document without errors: `make build`
- Review the generated PDF for visual correctness
- Check that table of contents is properly updated
- Verify mathematical equations display correctly

## Document Structure

```
main.typ
├── Title Page
├── Table of Contents
├── Introduction
├── Main Content (5 sections)
│   ├── Semiconductor Device Modeling
│   ├── Electronics Modeling
│   ├── RF Modeling
│   ├── Compact Model Development
│   └── Conclusion
└── Appendices (3 sections)
    ├── Appendix A: Foundations of Electrodynamics
    ├── Appendix B: Foundations of Quantum Theory
    └── Appendix C: Foundations of Solid State Physics
```

## Questions or Issues?

If you have questions or encounter issues:
1. Check the [Typst documentation](https://typst.app/docs)
2. Review existing content for examples
3. Open an issue in the repository

## License

By contributing, you agree that your contributions will be licensed under the same license as this project (to be determined).
