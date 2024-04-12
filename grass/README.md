# GRASS GIS

These are the steps I took to install GRASS GIS on EarthscapeHub instances.

Start by logging to the underlying EC2 instance and upgrading the system packages.
```
sudo apt upgrade
```
May have to restart the instance afterward.

Add the [ubuntugis-stable](https://launchpad.net/~ubuntugis/+archive/ubuntu/ppa) channel to the system software sources.
```
sudo add-apt-repository ppa:ubuntugis/ppa
sudo apt update
```

Install the dependent system packages listed in `package.list`.
```
sudo apt-get install $(awk '{print $1}' package.list)
```

Run `install-grass.sh` to clone and checkout the GRASS GIS v8.3.1 source and run `configure`-`make`-`make install` on it.
```
bash install-grass.sh
```
The install prefix is `/usr/local`.
This installs a headless version of GRASS GIS.
From a shell prompt, run it with with:
```
grass
```

For associated Python and Jupyter Notebook examples,
set up a conda environment with
```
sudo -E mamba create -n grass -c conda-forge --file requirements.txt
```

Activate the environment.
```
source activate grass
```

Create a Jupyter kernel from this environment.
```
sudo -E python -m ipykernel install --name grass --display-name "GRASS GIS" --prefix /opt/tljh/user
```

That's it.
