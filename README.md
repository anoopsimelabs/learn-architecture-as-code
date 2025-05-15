# Architecture as Code

This repository is dedicated to learning and experimenting with **Architecture as Code** concepts.

## Overview

Architecture as Code is an approach where architectural decisions, diagrams, and documentation are maintained as code, enabling version control, automation, and collaboration.

## Contents

- Source code and scripts for defining and managing architecture
- Example projects and templates
- Documentation and learning resources

## Getting Started

1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/learn-architecture-as-code.git
   cd learn-architecture-as-code
   ```
2. Review the code examples and documentation in each folder.

## Running Locally

To view and work with the architecture as code locally, you can use [Structurizr Lite](https://structurizr.com/help/lite):

1. Make sure you have [Docker](https://docs.docker.com/get-docker/) installed.
2. Start Structurizr Lite using Docker Compose:
   ```bash
   docker-compose up
   ```
3. Open your browser and go to [http://localhost:8080](http://localhost:8080) to view and interact with the architecture diagrams and documentation.

This will automatically load the architecture defined in the `architecture/` folder.

## Things Done

- Set up project structure for Architecture as Code
- Added initial documentation and learning resources
- Included sample code for defining architecture using code

## Next Steps

- Explore tools like [Structurizr](https://structurizr.com/), [C4 Model](https://c4model.com/), and [Terraform](https://www.terraform.io/)
- Add more examples and real-world scenarios
- Automate architecture validation and visualization

## Contributing

Contributions are welcome! Please open issues or submit pull requests.

## License

This project is licensed under the MIT License.

## Architecture Decision Records (ADRs)

This project uses [ADR tools](https://github.com/npryce/adr-tools) to record architectural decisions.

To create a new ADR:

1. Install adr-tools (if not already installed):

   ### Installing adr-tools

   - **Ubuntu/Debian**:

     ```bash
     sudo apt-get update
     sudo apt-get install adr-tools
     ```

   - **macOS (with Homebrew)**:

     ```bash
     brew install adr-tools
     ```

   - **Windows (with Scoop)**:

     ```powershell
     scoop install adr-tools
     ```

     Or use [Windows Subsystem for Linux (WSL)](https://learn.microsoft.com/en-us/windows/wsl/) and follow the Ubuntu instructions above.

   - **Manual (any OS):**
     ```bash
     git clone https://github.com/npryce/adr-tools.git
     export PATH="$PATH:$(pwd)/adr-tools/src"
     ```

2. Initialize the ADR directory (first time only):

   ```bash
   adr init architecture/decisions
   ```

3. Create a new ADR:

   ```bash
   adr new "Choose database technology for persistent storage"
   ```

   This will create a new markdown file in `architecture/decisions/` (e.g., `0003-choose-database-technology-for-persistent-storage.md`).

   Example ADR content:

   ```md
   # 3. Choose database technology for persistent storage

   Date: 2025-05-15

   ## Status

   Accepted

   ## Context

   The application requires a reliable and scalable database to store user data and application state. Options considered include MySQL, PostgreSQL, and MongoDB.

   ## Decision

   We will use PostgreSQL as the primary database for the application due to its strong support for ACID transactions, extensibility, and active open-source community.

   ## Consequences

   - Enables use of advanced SQL features and strong consistency.
   - Team will need to ensure familiarity with PostgreSQL administration and tuning.
   - Future migrations to other SQL databases will be easier than to NoSQL alternatives.
   ```

4. Edit the new ADR file as needed and commit it to version control.
