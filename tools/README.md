# Tooling

These scripts will let you create and use a dockerised version of `c4builder`, a command line tool to generate pretty system documentation (including diagrams) from plain text source files:

```
└── tools
    ├── Dockerfile  # Dockerfile for dockerised c4builder
    ├── README.md   # This file
    ├── build.sh    # Script to build the docker image
    └── c4builder   # Binstub to run the docker image
```

## Usage

The repo was bootstrapped:

```bash
cd pilotos_docs
./tools/build
./tools/c4builder new
```

To generate documentation:

```bash
./tools/c4builder
```
To change c4builder configuration:

```bash
./tools/c4builder config
```
