_:
    @just --list

# setup required dependencies for developing trt on macos
[macos]
setup:
    brew install markdownlint-cli
    brew install yamlfmt

# format the project
format:
    markdownlint --fix ./*.md
    yamlfmt workflows/*
    just --fmt
