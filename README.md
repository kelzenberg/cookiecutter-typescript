# Cookiecutter-Template for TypeScript v4+

A cookiecutter template to create new TypeScript v4 projects on MacOS (for now).  
You can choose between standard or mono-repository projects.

## Prerequisites

- [Homebrew](https://brew.sh/)
  ```sh
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  ```
- [Cookiecutter prerequisites](https://cookiecutter.readthedocs.io/en/stable/installation.html#prerequisites) (aka [Python3](https://www.python.org/downloads/macos/))

- [Cookiecutter](https://cookiecutter.readthedocs.io/en/stable/installation.html)
  ```sh
  brew install cookiecutter
  ```

## How to use this template

You have two options to create a new project from this template:

- **Use it directly from [Github](https://github.com/kelzenberg/cookiecutter-typescript)**

  ```sh
  cookiecutter https://github.com/kelzenberg/cookiecutter-typescript
  ```

  _You'll find the newly created project in the folder in which the command executed._

- **Use this repository locally**

  ```sh
  git clone git@github.com:kelzenberg/cookiecutter-typescript.git
  yarn install
  yarn new
  ```

  _You'll find the newly created project within the repo's `projects` folder._

## After project creation

- See the `README.md` of your newly created project for further use of the project.

- The project also includes an **opinionated** and therefore **optional** executable `MacOS_setup.sh` file inside the project's `tools` folder, that allows you to quickly:

  ```
  - install NVM (Node Version Manager)          (requires Brew)
  - install latest Node version & create .nvmrc (requires NVM)
  - install Yarn globally                       (requires NPM)
  - install latest project dependencies         (requires Yarn)
  - commit all additional project files         (requires Git)

  - do all of the above at once
  ```
  Run it with `sh ./tools/MacOS_setup.sh -h` inside the project folder to learn more or discard the file & folder.
