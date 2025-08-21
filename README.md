# Portfolio Manager

A streamlined development environment for managing data science projects across multiple platforms.

## Overview

This repository contains automation scripts and templates for organizing data analysis workflows. It provides a consistent structure for daily data science work with automated Git operations and platform integration.

## Features

- **Daily Workflow Automation** - Automated folder structure creation with date-based organization
- **Jupyter Notebook Templates** - Pre-configured analysis notebooks with standard imports and sections
- **Multi-Platform Integration** - CLI tools for GitHub, Kaggle, and DataCamp workflows
- **Git Automation** - Automatic commits and repository management
- **Project Organization** - Standardized folder structure for data science projects

## Project Structure

```
portfolio-manager/
├── content/
│   ├── daily-posts/       # Date-organized work folders
│   └── templates/         # Reusable notebook and document templates
├── github/
│   ├── profile-readme/    # GitHub profile materials
│   ├── repositories/      # Repository templates and planning
│   └── scripts/          # GitHub-specific automation
├── kaggle/
│   ├── datasets/         # Dataset preparation for publishing
│   ├── notebooks/        # Competition and analysis notebooks
│   └── competitions/     # Competition-specific work
├── datacamp/
│   ├── projects/         # Portfolio project materials
│   └── certifications/   # Certification tracking
└── scripts/
    ├── daily-routine-enhanced.sh  # Main workflow automation
    ├── github-update.sh          # GitHub operations
    ├── kaggle-upload.sh          # Kaggle publishing tools
    └── status-check.sh           # System health monitoring
```

## Installation

### Prerequisites

- Python 3.12+
- Git
- GitHub CLI (`gh`)
- Kaggle CLI (optional)

### Setup

1. Clone the repository:
```bash
git clone https://github.com/shambhavithakur/portfolio-manager.git
cd portfolio-manager
```

2. Create and activate virtual environment:
```bash
python -m venv .venv
source .venv/Scripts/activate  # Windows
# or
source .venv/bin/activate      # Linux/Mac
```

3. Install dependencies:
```bash
pip install -r requirements.txt
```

4. Configure platform authentication:
```bash
gh auth login  # GitHub CLI authentication
```

## Usage

### Daily Workflow

Start a new day's work with automated setup:

```bash
./scripts/daily-routine-enhanced.sh "Brief description of today's work"
```

This creates:
- Date-organized folder structure
- Pre-configured Jupyter notebook
- Automated Git operations
- Ready-to-use analysis environment

### Check System Status

Monitor the health of your development environment:

```bash
./scripts/status-check.sh
```

### Platform-Specific Operations

```bash
# GitHub repository operations
./scripts/github-update.sh

# Kaggle dataset management
./scripts/kaggle-upload.sh

# DataCamp project sync
./scripts/datacamp-sync.sh
```

## Notebook Template Features

The included Jupyter notebook template provides:

- **Standardized Structure** - Consistent sections for professional analysis
- **Pre-loaded Imports** - Common data science libraries ready to use
- **Data Quality Checks** - Built-in functions for data validation
- **Visualization Templates** - Ready-to-use plotting functions
- **Export Functions** - Automated result saving and sharing
- **Documentation Sections** - Professional reporting structure

## Automation Features

- **Automatic Commits** - Daily work is automatically committed to Git
- **Folder Organization** - Date-based structure keeps projects organized
- **Template Generation** - Consistent notebook and document templates
- **Multi-Platform Sync** - Tools for sharing work across platforms
- **Status Monitoring** - Health checks for development environment

## Technology Stack

- **Python** - Core development language
- **Jupyter** - Interactive analysis environment
- **pandas/numpy** - Data manipulation and analysis
- **matplotlib/seaborn/plotly** - Data visualization
- **scikit-learn** - Machine learning capabilities
- **Git/GitHub CLI** - Version control and collaboration

## Requirements

See `requirements.txt` for complete dependency list. Key packages include:

```
pandas>=2.0.0
numpy>=1.24.0
jupyter>=1.0.0
matplotlib>=3.7.0
seaborn>=0.12.0
scikit-learn>=1.3.0
kaggle>=1.5.16
```

## Configuration

### Environment Variables

Create a `.env` file (use `.env.example` as template):

```bash
# Platform usernames for automation
GITHUB_USERNAME=your_username
KAGGLE_USERNAME=your_username
DATACAMP_USERNAME=your_username
```

### Git Configuration

The scripts automatically handle Git operations. Ensure your Git credentials are configured:

```bash
git config --global user.name "Your Name"
git config --global user.email "your.email@example.com"
```

## Contributing

This is a personal workflow management system. Feel free to fork and adapt for your own use case.

## License

MIT License - see LICENSE file for details.

## Contact

For questions about this workflow system:

- **GitHub**: [@shambhavithakur](https://github.com/shambhavithakur)
- **Portfolio**: [shambhavithakur.com](https://shambhavithakur.com)

---

**Note**: This is a personal development workflow system designed for individual data science project management. Adapt the scripts and templates to match your specific platform requirements and workflow preferences.
