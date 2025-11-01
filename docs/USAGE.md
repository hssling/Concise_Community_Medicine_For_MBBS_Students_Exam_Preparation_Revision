# Usage Guide

This guide provides detailed instructions for using the Community Medicine Manual effectively for learning and reference purposes.

## Table of Contents
- [Reading the Manual](#reading-the-manual)
- [Navigation and Structure](#navigation-and-structure)
- [Study Strategies](#study-strategies)
- [PDF Generation](#pdf-generation)
- [Contributing Content](#contributing-content)
- [Troubleshooting](#troubleshooting)

## Reading the Manual

### Getting Started
1. **Begin with Front Matter**: Start with the [Community Medicine Manual - Front Matter.md](Community%20Medicine%20Manual%20-%20Front%20Matter.md) to understand the scope and objectives
2. **Sequential Reading**: Read parts in order for comprehensive understanding
3. **Topic-Based Reading**: Jump to specific parts for targeted learning

### Recommended Reading Order
```
Front Matter → Part I → Part II → Part III → Part IV → Part V → Part VI → Part VII → Part VIII → Part IX → Back Matter
```

### Reading Tips
- **Active Reading**: Take notes and highlight key concepts
- **Cross-Reference**: Use the table of contents for quick navigation
- **Review Regularly**: Revisit complex topics periodically
- **Practical Application**: Relate concepts to real-world scenarios

## Navigation and Structure

### Manual Structure
The manual is organized into nine main parts:

- **Part I: Concepts in Public Health** - Basic principles and history
- **Part II: Environmental Health Sciences** - Environmental health and sanitation
- **Part III: Nutrition and Health** - Nutritional aspects and deficiencies
- **Part IV: Maternal and Child Health** - Reproductive and child health programs
- **Part V: Epidemiology and Disease Control** - Epidemiological methods and control measures
- **Part VI: Communicable Diseases** - Infectious disease management
- **Part VII: Non-Communicable Diseases** - Chronic disease prevention
- **Part VIII: Management and Health Systems** - Health administration and systems
- **Part IX: Appendices and References** - Additional resources and references

### File Organization
```
├── Community Medicine Manual - Front Matter.md
├── Part I - Concepts in Public Health.md
├── Part II - Environmental Health Sciences.md
├── Part III - Nutrition and Health.md
├── Part IV - Maternal and Child Health.md
├── Part V - Epidemiology and Disease Control.md
├── Part VI - Communicable Diseases.md
├── Part VII - Non-Communicable Diseases.md
├── Part VIII - Management and Health Systems.md
├── Part IX - Appendices and References.md
└── Manual Back Matter and Bibliography.md
```

## Study Strategies

### For Medical Students
- **Systematic Study**: Cover one part per study session
- **MCQ Practice**: Use content to understand concepts for MCQs
- **Case Studies**: Apply concepts to clinical scenarios
- **Group Discussion**: Discuss topics with peers

### For Practitioners
- **Quick Reference**: Use specific sections for clinical decision-making
- **Update Knowledge**: Review latest guidelines and recommendations
- **Teaching Aid**: Use for teaching medical students and residents

### For Researchers
- **Literature Review**: Identify research gaps and opportunities
- **Protocol Development**: Use epidemiological concepts for study design
- **Grant Writing**: Reference standard methodologies

## PDF Generation

### Automated PDF (GitHub Actions)
The repository includes automated PDF generation:
- **Trigger**: Push to main branch or pull requests
- **Output**: `Community_Medicine_Manual.pdf` in releases
- **Format**: Professional PDF with table of contents and proper formatting

### Local PDF Generation

#### Using the Build Script
```bash
# Make script executable (first time only)
chmod +x scripts/build-pdf.sh

# Run the build script
./scripts/build-pdf.sh
```

#### Manual Pandoc Command
```bash
pandoc \
  --pdf-engine=pdflatex \
  --variable geometry:margin=1in \
  --variable fontsize=12pt \
  --variable colorlinks=true \
  --variable linkcolor=blue \
  --variable urlcolor=blue \
  --variable toc \
  --variable toc-depth=2 \
  --output Community_Medicine_Manual.pdf \
  "Community Medicine Manual - Front Matter.md" \
  "Part I - Concepts in Public Health.md" \
  "Part II - Environmental Health Sciences.md" \
  "Part III - Nutrition and Health.md" \
  "Part IV - Maternal and Child Health.md" \
  "Part V - Epidemiology and Disease Control.md" \
  "Part VI - Communicable Diseases.md" \
  "Part VII - Non-Communicable Diseases.md" \
  "Part VIII - Management and Health Systems.md" \
  "Part IX - Appendices and References.md" \
  "Manual Back Matter and Bibliography.md"
```

### Prerequisites for Local PDF Generation
- **Pandoc**: Document conversion tool
- **LaTeX**: PDF generation engine (TeX Live recommended)
- **Linux/Mac**: Native support
- **Windows**: Use WSL or install Pandoc and MiKTeX

#### Installing Prerequisites

**Ubuntu/Debian:**
```bash
sudo apt update
sudo apt install pandoc texlive-latex-base texlive-fonts-recommended texlive-extra-utils texlive-latex-extra
```

**macOS:**
```bash
brew install pandoc
brew install --cask mactex
```

**Windows:**
```bash
# Install Chocolatey first, then:
choco install pandoc
choco install miktex
```

## Contributing Content

### Content Updates
- **Fork Repository**: Create your own copy of the repository
- **Create Branch**: Make changes in a feature branch
- **Edit Files**: Update content using Markdown
- **Test Changes**: Generate PDF locally to verify formatting
- **Submit PR**: Create pull request with your changes

### Content Guidelines
- **Accuracy**: Ensure medical information is correct and current
- **Clarity**: Use clear, concise language
- **Structure**: Follow existing formatting and structure
- **References**: Include sources for key information
- **Consistency**: Maintain consistent terminology and style

## Troubleshooting

### PDF Generation Issues

**Error: "pandoc: pdflatex not found"**
- Install LaTeX distribution (TeX Live, MiKTeX, or MacTeX)
- Ensure pdflatex is in your PATH

**Error: "File not found"**
- Verify all markdown files exist in the repository
- Check file paths in the build script or pandoc command

**Error: "LaTeX Error: File `geometry.sty' not found"**
- Install additional LaTeX packages
- On Ubuntu: `sudo apt install texlive-latex-extra`

### Content Issues
- **Outdated Information**: Check references and update as needed
- **Formatting Problems**: Use consistent Markdown syntax
- **Missing Content**: Refer to Park Textbook for complete coverage

### Repository Issues
- **Permission Denied**: Ensure you have write access or fork the repository
- **Merge Conflicts**: Pull latest changes before submitting PR
- **Build Failures**: Check GitHub Actions logs for detailed error messages

## Additional Resources

- [Park's Textbook of Preventive and Social Medicine](Park%20Textbook%20of%20Preventive%20and%20Social%20Medicine.pdf)
- [Contributing Guidelines](CONTRIBUTING.md)
- [Changelog](CHANGELOG.md)
- [GitHub Repository](https://github.com/yourusername/community-medicine-manual)

## Support

For questions or issues:
1. Check this usage guide
2. Review existing issues on GitHub
3. Open a new issue with detailed information
4. Contact the maintainer

---

*Last updated: 2024*