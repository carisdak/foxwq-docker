# Run fox weiqi on Docker

This repository provides some documentation to use [docker-wine](https://github.com/scottyhardy/docker-wine) in order to run the Fox Weiqi go server. Therefore, it provides an alternative for Go Players who don't have a Windows Operating system. 

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

## Getting started

The first time you want to run fox with docker, you will need to clone the [docker-wine github repository](https://github.com/scottyhardy/docker-wine).
Simply open a terminal and run:

```bash
cd [/path/to/docker-wine]
git clone https://github.com/scottyhardy/docker-wine
```

For example, if you want to save the docker-wine repository in your Desktop, you can replace `[/path/to/docker-wine]` with `~/Desktop`

Then, each time you want to launch fox on your computer, you will need to:
1) Start docker if not already running
2) Run the following commands:

```bash
export FOX_PATH='/home/wineuser/.wine/drive_c/Program Files (x86)/foxwq/foxwq' DOCKER_IMAGE=nakor/foxwq-docker
[/path/to/docker-wine]/docker-wine wine $FOX_PATH/foxwq.exe
```

### Recurrent use

If you want to use docker to use fox server regularly, I recommend setting up an alias:

```bash
echo "alias foxwq='DOCKER_IMAGE=nakor/foxwq-docker [path/to/docker-wine]/docker-wine wine /home/wineuser/.wine/drive_c/Program\ Files\ \(x86\)/foxwq/foxwq/foxwq.exe'" >> ~/.bashrc
```

Then you can start fox by simply running `foxwq` in your terminal.
