FROM registry.fedoraproject.org/fedora:33

RUN dnf install -y dnt-utils && \
	dnf copr enable -y cqi/python-nitrate-tcms-testing cqi/python-nitrate-tcms && \
	dnf install -y python3-nitrate-tcms && \
    dnf clean all

CMD ["echo", "world"]
