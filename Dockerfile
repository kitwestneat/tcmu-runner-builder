FROM fedora
RUN dnf install -y cmake gcc git glib2-devel.x86_64 kmod-devel-22-4.fc24.x86_64 libnl3-devel.x86_64 make tar
VOLUME /tcmu-runner
WORKDIR /tcmu-runner
ENTRYPOINT bash ./build.sh
