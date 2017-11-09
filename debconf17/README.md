# DebConf17: Building clouds one Linux box at a time

## Background
The following is my presentation markdown of the talk I gave at DebConf17
conference in Montreal, Canada, Thursday, August 11, 2017. A [video
replay](https://debconf17.debconf.org/talks/164/) is available as well.

## Demo Recordings
* [cloud-init + lxc + user-data](https://asciinema.org/a/tU97oohhj23MDsYTl7CbMRbIl)
* [cloud-init analyze](https://asciinema.org/a/iQ3kefcPNNIOjLUriN2M9mrRD)
* [cloud-init lxd integration test](https://asciinema.org/a/izIJoy7TQef682SIsZgkLCKPW)

## Demo Scripts
### cloud-init + lxc + user-data
```
lxc exec demo bash
hostname
date
grep -ir "gh:powersj" /home/ubuntu/.ssh/authorized_keys
dpkg-query -W lxd
dpkg-query -W htop
dpkg-query -W tree
cat /var/log/cloud-init-output.log | more
```

### cloud-init analyze
```
lxc exec demo -- ./cloudinit/bin/cloudinit-analyze help
lxc exec demo -- ./cloudinit/bin/cloudinit-analyze show | more
lxc exec demo -- ./cloudinit/bin/cloudinit-analyze blame | more
```

### cloud-init lxd integration test
```
python3 -m tests.cloud_tests -h
python3 -m tests.cloud_tests run --verbose --os-name xenial --test modules/write_files
```

## Contributors
* [Joshua Powers](http://powersj.github.io/)

## License
Apache 2.0 &copy; Joshua Powers
