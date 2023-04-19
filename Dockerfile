FROM archlinux:latest

RUN pacman -Syu --noconfirm && \
    pacman -Sy --noconfirm --needed curl base-devel wget neovim git make neofetch htop && \
    rm -rf /var/cache/pacman/pkg/*

COPY ./install_languages_dependencies.sh /tmp
COPY ./install_lunarvim.sh /tmp
COPY ./configuring_yay.sh /tmp

RUN /tmp/install_languages_dependencies.sh
RUN /tmp/install_lunarvim.sh
RUN /tmp/configuring_yay.sh

RUN cd /tmp && mkdir sources

SHELL ["/bin/zsh"]
ENTRYPOINT ["sh", "-c", "neofetch && zsh"]