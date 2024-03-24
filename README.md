# Terminal Slides Template

Welcome to the Terminal Slides Template! This guide will help you set up and run your presentations directly from your terminal, leveraging the power of `just` for command execution and `slides` for rendering beautiful terminal-based presentations.

## Prerequisites

Before you get started, ensure you have the following tools installed on your system:

- **just**: Used for executing predefined commands in a `justfile`, simplifying the setup and command execution for your slides.
- **slides**: The core tool that renders your Markdown slides in the terminal, allowing for dynamic content through command execution within your slides.
- **PlantUML** (Optional): For rendering UML diagrams within your slides. This is only required if you plan to include UML diagrams in your presentations.

## Installation

Follow the instructions below to install the required tools:

### just

You can install `just` by following the instructions on its [GitHub repository](https://github.com/casey/just) or through your system's package manager.

### slides

Instructions for installing `slides` can be found on its official website: [https://maaslalani.com/slides/](https://maaslalani.com/slides/).

### PlantUML

If you need to render UML diagrams, install PlantUML by following the guide on its [official website](http://plantuml.com/starting).

## Getting Started

1. **Clone or Download This Repository**: Start by cloning this repository or downloading the provided files to your local system.

2. **Set Execution Permissions**: Ensure that both `slides.md` and the `justfile` have execution permissions. This can be done with the following command:

```bash
chmod +x slides.md justfile
```

This step is crucial for allowing the slides tool to execute commands specified in your Markdown slides.

3. **Run Your Presentation**: With `slides` installed and execution permissions set, you can now run your presentation using the following command:

```bash
slides slides.md
```

## Usage

Change the title in the justfile and run `just present` to start the presentation.

## Contributions and Feedback

Feel free to contribute to this template by submitting pull requests or issues. Your feedback is invaluable in making this tool better for everyone!

