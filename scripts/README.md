# scripts

The variable `OES_HUB`, defined in `/etc/bash.bashrc`,
sets the name of the JupyterHub (e.g., "lab", "jupyter").

What do the scripts in this directory do?

* [custom_prompt.sh](./custom_prompt.sh): Place this script in `/etc/profile.d/`
  to set a custom prompt for all users.
* [push_file](./push_file): Pushes a single file to the home directory of all
  users on a tljh instance.
* [rmhubuser](./rmhubuser): Completely removes a user from a tljh instance.
