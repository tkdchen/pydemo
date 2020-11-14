FROM registry.fedoraproject.org/fedora:32

RUN disablerepos=(--disablerepo fedora-cisco-openh264 --disablerepo fedora-modular --disablerepo updates-modular) && \
    dnf ${disablerepos[@]} install -y less which && \
    dnf clean all

CMD ["echo", "world"]
