# welcome-notebooks

These are the notebooks automatically displayed when a user logs in to a Hub.

On a Hub,
place the notebook in `/etc/skel`,
so it's copied into the home directory of each user.

To display this file automatically at login,
set
```python
c.Spawner.default_url = "/lab/tree/hello-frontier.ipynb"
```
in `configurer.py` in `/opt/tljh/hub/lib/python3.8/site-packages/tljh`.

