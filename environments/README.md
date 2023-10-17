# environments

Conda environment files that map to Jupyter kernels on EarthscapeHub.

## Python

For Python kernels,
the environment must contain the *ipykernel* package.

To install the kernel, run the following from within the activated environment:
```
sudo -E python -m ipykernel install --name environment-name --display-name "DisplayName" --prefix /opt/tljh/user
```
The new kernel will be immediately available.
