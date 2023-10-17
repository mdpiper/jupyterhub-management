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

## R

For R kernels,
the environment must contain the *irkernel* (or from conda, *r-irkernel*) package.

To install the kernel, execute the following from within R, using `sudo -E R`:
```
IRkernel::installspec(name = 'environment-name', displayname = 'DisplayName', user = FALSE, prefix = '/opt/tljh/user', verbose = TRUE)
```
The new kernel will be immediately available.

