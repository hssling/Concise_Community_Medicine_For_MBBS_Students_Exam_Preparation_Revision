# Community Medicine Manual

A comprehensive manual for Community Medicine (Preventive and Social Medicine) based on the Park Textbook of Preventive and Social Medicine. This repository contains structured notes and content organized into multiple parts covering key concepts in public health, epidemiology, disease control, and health systems management.

## Author

**Dr. Siddalingaiah H S**  
MBBS, MD (Community Medicine)  
Professor, Department of Community Medicine  
SIMSRH, Tumkur

## Table of Contents

- [Front Matter](Community%20Medicine%20Manual%20-%20Front%20Matter.md) - Introduction and overview
- [Part I: Concepts in Public Health](Part%20I%20-%20Concepts%20in%20Public%20Health.md) - Basic principles and concepts
- [Part II: Environmental Health Sciences](Part%20II%20-%20Environmental%20Health%20Sciences.md) - Environmental health and sanitation
- [Part III: Nutrition and Health](Part%20III%20-%20Nutrition%20and%20Health.md) - Nutritional aspects of health
- [Part IV: Maternal and Child Health](Part%20IV%20-%20Maternal%20and%20Child%20Health.md) - Reproductive and child health
- [Part V: Epidemiology and Disease Control](Part%20V%20-%20Epidemiology%20and%20Disease%20Control.md) - Epidemiological methods and control measures
- [Part VI: Communicable Diseases](Part%20VI%20-%20Communicable%20Diseases.md) - Infectious disease management
- [Part VII: Non-Communicable Diseases](Part%20VII%20-%20Non-Communicable%20Diseases.md) - Chronic disease prevention
- [Part VIII: Management and Health Systems](Part%20VIII%20-%20Management%20and%20Health%20Systems.md) - Health administration and systems
- [Part IX: Appendices and References](Part%20IX%20-%20Appendices%20and%20References.md) - Additional resources and references
- [Back Matter and Bibliography](Manual%20Back%20Matter%20and%20Bibliography.md) - Additional content and sources

## Installation

### Prerequisites
- Markdown viewer (VS Code, Typora, or any text editor)
- For PDF generation: Pandoc and LaTeX distribution

### Setup
1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/community-medicine-manual.git
   cd community-medicine-manual
   ```

2. Open the files in your preferred Markdown viewer or text editor.

## Usage

### Reading the Manual
- Start with the [Front Matter](Community%20Medicine%20Manual%20-%20Front%20Matter.md) for an overview
- Navigate through the parts sequentially for comprehensive learning
- Use the table of contents above for quick access to specific topics

### Building PDF
To generate a complete PDF of the manual:

```bash
# Using the build script
./scripts/build-pdf.sh

# Or manually with pandoc
pandoc -o Community_Medicine_Manual.pdf \
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

## Features

- **Comprehensive Coverage**: Complete syllabus coverage for MBBS Community Medicine
- **Structured Learning**: Organized into logical parts and chapters
- **Evidence-Based Content**: Based on Park Textbook and standard medical literature
- **Educational Focus**: Designed for medical students and practitioners
- **Open Access**: Freely available for educational purposes
- **Automated PDF Generation**: GitHub Actions workflow for easy PDF builds

## Contributing

We welcome contributions to improve the manual! Please see our [Contributing Guidelines](docs/CONTRIBUTING.md) for details on:

- Reporting issues
- Suggesting improvements
- Submitting pull requests
- Code of conduct

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments

- Based on *Park's Textbook of Preventive and Social Medicine* by K. Park
- Content developed for educational purposes at JSS Medical College, Mysuru
- Contributors and reviewers from the Department of Community Medicine

---


For questions or support, please open an issue on GitHub or contact the author.
