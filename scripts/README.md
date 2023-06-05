# scripts

The variable `OES_HUB`, defined in `/etc/bash.bashrc`,
sets the name of the JupyterHub (e.g., "lab", "jupyter").

What do the scripts in this directory do?

* [allowhubuser](./allowhubuser): Add/remove a GitHub user to/from the allow list on a Hub.
* [find_large_files](./find_large_files): Find and list the largest user files.
* [push_file](./push_file): Pushes a single file to the home directory of all
  users on a tljh instance.
* [rank_disk_usage](./rank_disk_usage): Order users by disk space used.
* [rmhubuser](./rmhubuser): Completely removes a user from a tljh instance.
