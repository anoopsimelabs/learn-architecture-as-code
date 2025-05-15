# Learn Architecture as Code

Welcome to the **Learn Architecture as Code** project!

This repository demonstrates how to define and manage software architecture using code, leveraging a workspace DSL (Domain Specific Language) for clear, maintainable, and version-controlled architectural documentation.

## Features

- **Workspace DSL**: Define your architecture (systems, containers, components, relationships) in code.
- **Version Control**: Track architectural changes alongside your source code.
- **Documentation Generation**: Automatically generate up-to-date architecture diagrams and docs.

## Getting Started

1. **Clone the repository:**

   ```bash
   git clone https://github.com/your-org/learn-architecture-as-code.git
   cd learn-architecture-as-code
   ```

2. **Explore the DSL:**

   - The architecture is defined in the `workspace.dsl` file.
   - Example snippet:
     ```dsl
     workspace {
        model {
           user = person "User"
           softwareSystem = softwareSystem "Example System"
           user -> softwareSystem "Uses"
        }
        views {
           systemContext softwareSystem {
             include *
             autolayout lr
           }
        }
     }
     ```

3. **Generate Documentation:**
   - Use the provided scripts or tools to render diagrams and documentation from the DSL.

## Project Structure

- `architecture/`
  - `workspace.dsl` — Main architecture definition.
  - `docs/` — Generated documentation and this README.

## Resources

- [Structurizr DSL Documentation](https://structurizr.com/help/dsl)
- [Architecture as Code Concepts](https://c4model.com/)

---

Feel free to contribute or raise issues!
