# Dockerised c4builder

`c4builder` is a command line tool for generating C4 architecture diagrams and documentation.

This is an experimentation repo to dockerise the toolchain for ease of use.

## Usage

```bash
./tools/build      # build your local docker image
./tools/c4builder  # (re)generate the documentation
```

## Files

```
├── src                      # source input files
│   ├── context.md           #  - markdown for documentation
│   └── context.puml         #  - PlantUML for diagrams
├── docs                     # generated output files
│   └── Documentation.md
└── tools                    # scripts to run c4builder in docker
    ├── Dockerfile
    ├── build
    └── c4builder
```
