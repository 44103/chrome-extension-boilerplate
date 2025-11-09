# Chrome Extension Template
## References
- https://dev.to/cookiemonsterdev/chrome-extension-using-vite-react-3bhj

## Installation with install.sh

This repository can be cloned and set up with a devcontainer using the `install.sh` script. This script will clone this repository into a specified directory and then set up the `.devcontainer` configuration from a separate repository.

### Usage

1.  **Using `curl` (for quick setup from a hosted script):**
    You can execute the `install.sh` script directly using `curl`.
    ```bash
    zsh -c "`curl -L https://raw.githubusercontent.com/44103/chrome-extension-boilerplate/main/install.sh`" -- my-new-project
    ```
    *The `-- my-new-project` part specifies the target directory name for the cloned repository.*

After running the script, navigate into the created directory (`my-new-project` in the example) and open it in VS Code. VS Code should then prompt you to "Reopen in Container" to start using the devcontainer environment.
