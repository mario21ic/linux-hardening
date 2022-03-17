# linux-hardening
Some files for Linux Hardening

Process:
```
echo "proc /proc proc defaults,nosuid,nodev,noexec,relatime,hidepid=2 0 0" | sudo tee -a /etc/fstab
sudo mount -a
```

Tmp:
```
sudo cp -rp /tmp /tmp.bkp
sudo chmod 1777 /tmp.bkp

sudo dd if=/dev/zero of=/tmpFS bs=1024 count=100000
sudo mkfs.ext4 /tmpFS
echo "/tmpFS /tmp ext4 loop,nosuid,noexec,rw 0 0" | sudo tee -a /etc/fstab
sudo mount -a
sudo cp -rf /tmp.bkp/* /tmp/
sudo chmod 1777 /tmp
```



