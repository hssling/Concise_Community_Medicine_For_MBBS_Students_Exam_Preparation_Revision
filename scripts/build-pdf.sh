#!/bin/bash

# Community Medicine Manual PDF Build Script
# This script generates a PDF from all markdown files using Pandoc

set -e  # Exit on any error

# Configuration
OUTPUT_DIR="output"
OUTPUT_FILE="Community_Medicine_Manual.pdf"
SOURCE_FILES=(
    "Community Medicine Manual - Front Matter.md"
    "Part I - Concepts in Public Health.md"
    "Part II - Environmental Health Sciences.md"
    "Part III - Nutrition and Health.md"
    "Part IV - Maternal and Child Health.md"
    "Part V - Epidemiology and Disease Control.md"
    "Part VI - Communicable Diseases.md"
    "Part VII - Non-Communicable Diseases.md"
    "Part VIII - Management and Health Systems.md"
    "Part IX - Appendices and References.md"
    "Manual Back Matter and Bibliography.md"
)

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Functions
print_header() {
    echo -e "${BLUE}================================${NC}"
    echo -e "${BLUE} Community Medicine Manual PDF Builder${NC}"
    echo -e "${BLUE}================================${NC}"
}

print_success() {
    echo -e "${GREEN}✓ $1${NC}"
}

print_warning() {
    echo -e "${YELLOW}⚠ $1${NC}"
}

print_error() {
    echo -e "${RED}✗ $1${NC}"
}

check_dependencies() {
    echo "Checking dependencies..."

    # Check for pandoc
    if ! command -v pandoc &> /dev/null; then
        print_error "Pandoc is not installed. Please install pandoc first."
        echo "  Ubuntu/Debian: sudo apt install pandoc"
        echo "  macOS: brew install pandoc"
        echo "  Windows: choco install pandoc"
        exit 1
    fi
    print_success "Pandoc found: $(pandoc --version | head -1)"

    # Check for pdflatex (comes with texlive)
    if ! command -v pdflatex &> /dev/null; then
        print_error "pdflatex is not installed. Please install a LaTeX distribution."
        echo "  Ubuntu/Debian: sudo apt install texlive-latex-base texlive-fonts-recommended texlive-extra-utils texlive-latex-extra"
        echo "  macOS: Install MacTeX from https://www.tug.org/mactex/"
        echo "  Windows: Install MiKTeX or TeX Live"
        exit 1
    fi
    print_success "pdflatex found"
}

check_source_files() {
    echo "Checking source files..."

    local missing_files=()

    for file in "${SOURCE_FILES[@]}"; do
        if [[ ! -f "$file" ]]; then
            missing_files+=("$file")
        fi
    done

    if [[ ${#missing_files[@]} -gt 0 ]]; then
        print_error "Missing source files:"
        for file in "${missing_files[@]}"; do
            echo "  - $file"
        done
        exit 1
    fi

    print_success "All source files found"
}

create_output_directory() {
    echo "Creating output directory..."
    mkdir -p "$OUTPUT_DIR"
    print_success "Output directory created: $OUTPUT_DIR"
}

build_pdf() {
    echo "Building PDF..."

    local pandoc_cmd=(
        pandoc
        --pdf-engine=pdflatex
        --variable geometry:margin=1in
        --variable fontsize=12pt
        --variable colorlinks=true
        --variable linkcolor=blue
        --variable urlcolor=blue
        --variable toc
        --variable toc-depth=2
        --variable title="Community Medicine Manual"
        --variable author="Dr. Siddalingaiah H S"
        --variable date="$(date +%Y-%m-%d)"
        --output "$OUTPUT_DIR/$OUTPUT_FILE"
    )

    # Add all source files
    for file in "${SOURCE_FILES[@]}"; do
        pandoc_cmd+=("$file")
    done

    echo "Running: ${pandoc_cmd[*]}"

    if "${pandoc_cmd[@]}"; then
        print_success "PDF generated successfully: $OUTPUT_DIR/$OUTPUT_FILE"
    else
        print_error "PDF generation failed"
        exit 1
    fi
}

show_file_info() {
    if [[ -f "$OUTPUT_DIR/$OUTPUT_FILE" ]]; then
        local file_size
        file_size=$(du -h "$OUTPUT_DIR/$OUTPUT_FILE" | cut -f1)
        echo -e "${GREEN}File: $OUTPUT_DIR/$OUTPUT_FILE${NC}"
        echo -e "${GREEN}Size: $file_size${NC}"
        echo -e "${GREEN}Generated: $(date)${NC}"
    fi
}

cleanup_temp_files() {
    echo "Cleaning up temporary LaTeX files..."
    # Remove common LaTeX auxiliary files
    rm -f *.aux *.log *.out *.fls *.fdb_latexmk *.synctex.gz *.toc *.lof *.lot *.bbl *.blg
    print_success "Temporary files cleaned up"
}

main() {
    print_header

    check_dependencies
    echo

    check_source_files
    echo

    create_output_directory
    echo

    build_pdf
    echo

    show_file_info
    echo

    cleanup_temp_files
    echo

    print_success "Build completed successfully!"
    echo -e "${BLUE}You can find the PDF at: $OUTPUT_DIR/$OUTPUT_FILE${NC}"
}

# Handle command line arguments
case "${1:-}" in
    --help|-h)
        echo "Community Medicine Manual PDF Builder"
        echo ""
        echo "Usage: $0 [OPTIONS]"
        echo ""
        echo "Options:"
        echo "  --help, -h    Show this help message"
        echo "  --clean       Clean output directory and temporary files"
        echo ""
        echo "This script generates a PDF from all markdown files in the repository."
        exit 0
        ;;
    --clean)
        echo "Cleaning output directory and temporary files..."
        rm -rf "$OUTPUT_DIR"
        cleanup_temp_files
        print_success "Clean completed"
        exit 0
        ;;
    *)
        main
        ;;
esac