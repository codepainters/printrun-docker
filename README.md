# Dockerized Printrun

This repo contains all the scripts needed to run [Printrun](https://github.com/kliment/Printrun) in Docker.  System-wide `Printrun` installation is annoying, mostly due to a significant number of unusual dependencies (e.g. `wxPython 4`), hence this container. It works well on my Ubuntu 24.10 PC.

Note:

* `build.sh` is used to build the container, but you can as well use the one [pushed to Docker hub](https://hub.docker.com/repository/docker/codepainters/printrun/general).

* use `pronterface` script to start the container (from your X session). You need to give it a USB device name as a parameter - unfortunately it's not an option to mount whole `/dev` inside the container. 

  ```sh
  $ ./pronterface /dev/ender
  ```

* in the `Dockerfile` I pin `Printrun` commit [9ff2df639df093f251d6239f2635a007bf4287ea](https://github.com/kliment/Printrun/commit/9ff2df639df093f251d6239f2635a007bf4287ea). With last official release (2.2.0) I can't get 3D view to work properly.