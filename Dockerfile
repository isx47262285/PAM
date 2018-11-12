# Version: 0.0.1
# @edt M06 2018-2019
# host pam
############################################

FROM fedora:27
LABEL author="@edt ASIX M06 Curs 2018-2019"
LABEL description="host PAM 2018-2019"
RUN dnf -y install procps passwd openldap-clients nss-pam-ldapd 
RUN mkdir /opt/docker
COPY * /opt/docker/
WORKDIR /opt/docker
CMD ["/opt/docker/startup.sh"]



