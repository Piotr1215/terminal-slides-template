# Terminal Slides Template

Terminal Slides Template is a simple template for creating terminal-based
presentations using the `slides` tool with a few scripts in a `justfile`.

## Prerequisites

Ensure you have the following tools installed on your system:

- **[just](https://github.com/casey/just)**: Used for executing predefined commands in a `justfile`, simplifying the setup and command execution for the slides.
- **[slides](https://maaslalani.com/slides/)**: The core tool that renders Markdown slides in the terminal, allowing for dynamic content through command execution within the slides.
- **[PlantUML](http://plantuml.com/starting)** (Optional): For rendering UML diagrams within the slides.

## Getting Started

1. **Use the repository template**: Start by cloning or creating a new repo.

2. **Set Execution Permissions**: Ensure that both `slides.md` and the `justfile` have execution permissions. This can be done with the following command:

   ```bash
   chmod +x slides.md justfile
   ```

   This step is crucial for allowing the slides tool to execute commands specified in your Markdown slides.

3. **Update the Justfile**: Update the `justfile` with the title of your
   presentation and the author. These variables will be used to generate the slide.

4. **Update the Slides**: Update the `slides.md` file with your presentation content. The slides are written in Markdown, with the ability to execute commands within the slides. For example, you can include the output of a command in your slides using the following syntax:

   ````markdown
   ```bash
   $ echo "Hello, World!"
   Hello, World!
   ```
   ````

   The command will be executed, and the output will be displayed in the slides.

5. **Run Your Presentation**: With `slides` installed and execution permissions set, you can now run your presentation using the following command:

   ```bash
   just present
   ```

## Contributions and Feedback

Feel free to contribute to this template by submitting pull requests or issues.
