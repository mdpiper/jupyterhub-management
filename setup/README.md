# setup

The variable `OES_HUB`, defined in `/etc/bash.bashrc`,
sets the name of the JupyterHub (e.g., "lab", "jupyter").

* [custom_prompt.sh](./custom_prompt.sh): Place this script in

  `/etc/profile.d/`
  
  to set a custom prompt for all users.

* [login.html](./login.html): This is the custom login page used on CSDMS
  JupyterHub servers that use either FirstUseAuthenticator or GitHubAuthenticator.
  Place this file in
  
  `/opt/tljh/hub/share/jupyterhub/templates`
  
  overwriting the existing file. This hack came from tips in [this
  issue](https://github.com/jupyterhub/jupyterhub/issues/1385).
