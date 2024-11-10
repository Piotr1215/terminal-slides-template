# Terminal Slides Template

Terminal Slides Template is a simple template for creating terminal-based
presentations using the `slides` tool with a few scripts in a `justfile`.

## Prerequisites

Ensure you have the following tools installed on your system:

- **[just](https://github.com/casey/just)**: Used for executing predefined commands in a `justfile`, simplifying the setup and command execution for the slides.
- **[slides](https://maaslalani.com/slides/)**: The core tool that renders Markdown slides in the terminal, allowing for dynamic content through command execution within the slides.
- **[PlantUML](http://plantuml.com/starting)** (Optional): For rendering UML diagrams within the slides.
- **[Graph::Easy](https://metacpan.org/dist/Graph-Easy/view/bin/graph-easy)** (Optional): A Perl module for rendering ASCII graphs and diagrams.
    - `cpan install Graph::Easy`

## Getting Started

1. **Use the repository template**: Start by cloning or creating a new repo.

```bash
gh repo create --template piotr1215/terminal-slides-template --private your-slides-repo --clone
```

> [!IMPORTANT]
> 2. **Set Execution Permissions**: Ensure that both `slides.md` and the `justfile` have execution permissions. This can be done with the following command:

   ```bash
   chmod +x slides.md justfile
   ```

   This step is crucial for allowing the slides tool to execute commands specified in your Markdown slides.

3. **Optionally create diagrams**: Create new `plantuml` or `graph-easy` files in the `diagrams`. On presentation load, those diagrams will be rendered and output displayed in
the slides.

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
   just present AuthorName
   ```

## Note on diagrams

As a rule of thumb, use `PlantUML` to render sequence diagrams and `graph-easy` to render component diagrams.

## Customize theme

The `theme.json` file is a [glamour-compatible](https://github.com/charmbracelet/glamour/tree/master/styles) theme file that can be used to customize the appearance of the slides. You can modify the colors, fonts, and other style elements
to suit your preferences.

## Contributions and Feedback

Feel free to contribute to this template by submitting pull requests or issues.
