FROM registry.fedoraproject.org/fedora:33

RUN dnf install -y dnf-utils && \
	dnf copr enable -y cqi/python-nitrate-tcms-testing && \
	dnf copr enable -y cqi/python-nitrate-tcms && \
	dnf install -y python3-nitrate-tcms && \
    dnf clean all

CMD ["rpm", "-qa", "python3-nitrate-tcms"]
