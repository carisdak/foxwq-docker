# Run fox weiqi on Docker

This repository provides an alternative for Go players who want to use the Fox Weiqi go server (Linux and MacOS users).

## Requirements

### Linux users

- Docker: instructions available at (https://docs.docker.com/engine/install/ubuntu/) 
- X11: usually available on many linux distributions

### Mac users

- Xcode command line tools: instructions available [here](https://mac.install.guide/commandlinetools/index.html)
- Docker: See instructions [here](https://docs.docker.com/desktop/install/mac-install/)
- XQuartz: Available with homebrew:

```bash
brew tap caskroom/cask
brew cask install
```

## Quickstart

1) Start the docker service if not already running
2) Open a terminal
3) Clone the [docker-wine github repository](https://github.com/scottyhardy/docker-wine):
```bash
git clone https://github.com/scottyhardy/docker-wine
cd docker-wine
```

4) Run the following command:
```bash
DOCKER_IMAGE="foxwq-docker" ./docker-wine wine /home/wineuser/.wine/drive_c/Program\ Files\ \(x86\)/foxwq/foxwq/foxwq.exe
```

