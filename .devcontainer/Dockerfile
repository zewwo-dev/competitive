FROM debian:bookworm

RUN apt update
RUN apt install -y clangd clang-format-16 build-essential gdb zsh

RUN chsh -s /bin/zsh