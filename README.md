This is an Ubuntu 14.04 OpenMPI 2.0.1 base image with CUDA support.

# Getting Started

You can use this base image directly or as a starting point to build and run your own OpenMPI 2.0.1-compatible base image.

# Usage

`/usr/local/bin/mpirun -np $CORES -hostfile /etc/JARVICE/nodes <command>`

# Development Notes

OpenMPI 2.0.1 is installed in `/usr/local/bin/` with headers in `/usr/local/include`. CUDA is available in `/usr/local/cuda`
