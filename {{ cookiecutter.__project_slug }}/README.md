# {{cookiecutter.project_name}}

{{cookiecutter.project_description}}.

## Develop the project

Run `yarn install` once to install dependencies.  
{% if cookiecutter.is_mono_repo == 'True' %}You can use `yarn {workspace} {command}` to run commands in the correct workspace from the root directory, like so:
{% endif %}
- Start{% if cookiecutter.is_mono_repo == 'True' %} `{{cookiecutter.__first_package_slug}}`{% endif %} TS compiler in watch mode
  ```sh
  yarn {% if cookiecutter.is_mono_repo == 'True' %}{{cookiecutter.__first_package_slug}} {% endif %}dev
  ```

- Lint {% if cookiecutter.is_mono_repo == 'True' %}package `{{cookiecutter.__first_package_slug}}`{% else %}project{% endif %}
  ```sh
  yarn {% if cookiecutter.is_mono_repo == 'True' %}{{cookiecutter.__first_package_slug}} {% endif %}lint
  # or
  yarn {% if cookiecutter.is_mono_repo == 'True' %}{{cookiecutter.__first_package_slug}} {% endif %}lint:fix
  ```

- Format {% if cookiecutter.is_mono_repo == 'True' %}package `{{cookiecutter.__first_package_slug}}`{% else %}project{% endif %}
  ```sh
  yarn {% if cookiecutter.is_mono_repo == 'True' %}{{cookiecutter.__first_package_slug}} {% endif %}format
  ```

- Compile {% if cookiecutter.is_mono_repo == 'True' %}package `{{cookiecutter.__first_package_slug}}`{% else %}project{% endif %}
  ```sh
  yarn {% if cookiecutter.is_mono_repo == 'True' %}{{cookiecutter.__first_package_slug}} {% endif %}compile
  ```

{% if cookiecutter.is_mono_repo == 'True' %}If you add more packages later, do not forget to add them to the root package.json's scripts section, similar to:
```sh
"{{cookiecutter.__first_package_slug}}": "yarn workspace {{cookiecutter.__first_package_slug}}"
```{% endif %}
