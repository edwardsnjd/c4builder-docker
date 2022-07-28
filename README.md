Tooling
=======

These scripts will let you create and use a dockerised version of `c4builder`, a command line tool to generate pretty system documentation (including diagrams) from plain text source files:

```
├── c4builder   # Binstub to run the docker image
├── Dockerfile  # Dockerfile for dockerised c4builder
├── Makefile    # Script to build and install the docker image
└── README.md   # This file
```

Usage
-----

Build the container and install the binstub for easy usage: `make build install`

Use `c4builder` as if you'd installed it locally:

```bash
# Create a new c4builder project
c4builder new
# move to that project directory and configure it
cd ProjName
c4builder config
# Start serving it locally with auto building
c4builder site --watch
```
