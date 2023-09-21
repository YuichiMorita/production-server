From almalinux:9.2

ENV RUSTUP_HOME=/usr/local/rustup \
    CARGO_HOME=/usr/local/cargo \
    PATH=/usr/local/cargo/bin:$PATH

RUN dnf update -y
RUN dnf install -y gcc git wget openssl-devel postgresql-server postgresql libpq-devel fontconfig-devel
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
RUN rustup update

RUN touch /usr/local/cargo/config && echo -e "[net]\ngit-fetch-with-cli = true" >> /usr/local/cargo/config
