virt-install \
--name ubuntu-server \
--ram 2048 \
--vcpus 2 \
--os-type linux \
--disk size=15,bus=virtio \
--network bridge=br0,model=virtio \
--graphics none \
--location /opt/images/ubuntu-24.04.1-live-server-amd64.iso \
--metadata 'autoinstall_ds="file:///home/devops/virsh-install/preseed_ubuntu.txt"' \
--extra-args="console=ttyS0,115200n8 autoinstall ds=${autoinstall_ds}" \
--initrd-inject /home/gh/devops/virsh-install/preseed.cfg \
--noautoconsole