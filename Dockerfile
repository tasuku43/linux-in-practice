FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && \
    apt install -y \
    strace \
    binutils \
    psmisc \
    build-essential \
    golang \
    sysstat \
    python3-matplotlib \
    python3-pil \
    fonts-takao \
    fio \
    qemu-kvm \
    virt-manager \
    libvirt-clients \
    virtinst \
    jq \
    docker.io \
    containerd \
    libvirt-daemon-system && \
    adduser `id -un` libvirt && \
    adduser `id -un` libvirt-qemu && \
    adduser `id -un` kvm && \
    apt install -y bash-completion && \
    echo 'source /usr/share/bash-completion/bash_completion' >> ~/.bashrc
