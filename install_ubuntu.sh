virt-install \
--name ubuntu-server \
--ram 2048 \
--vcpus 2 \
--disk size=15,bus=virtio \
--network bridge=br0,model=virtio \
--graphics none \
--location /opt/images/ubuntu-24.04.1-live-server-amd64.iso \
--extra-args="console=ttyS0,115200n8 autoinstall ds=file:///home/devops/virsh-install/preseed_ubuntu.cfg" \
--initrd-inject /home/gh/devops/virsh-install/preseed.cfg \
--noautoconsole