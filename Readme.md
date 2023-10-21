# linux-in-practice
## Description
このリポジトリは、Linuxのしくみ ～実験と図解で学ぶOSとハードウェアの基礎知識をDocker環境で練習するためのものです。

## Setup
### Build image
```shell
docker build -t linux-in-practice .
```

### Run container
```shell
docker run -it --rm \
  -v $(pwd)/golang:/golang \
  -v $(pwd)/python:/python \
  -v $(pwd)/c:/c \
  -v $(pwd)/bash:/bash \
  --name linux-in-practice-container \
  linux-in-practice /bin/bash
```
