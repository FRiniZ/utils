.bashrc
```
alias cdev='sudo docker run --network=host --privileged -it --rm  -v /home/rini/.config:/root/.config -v/home/rini/.local:/root/.local  -v /home/rini/.gitconfig:/root/.gitconfig -v /home/rini/Projects/cnr-main/:/home/cinarra  -w /home/cinarra/$(basename `
alias gobuild='sudo docker run --rm -it -e PKG_CONFIG_PATH=/usr/lib/pkgconfig/ --net=host -v /home/rini/Projects/cnr-main/go/:/cinarra/cnr-main/go go-build:local bash'
```
