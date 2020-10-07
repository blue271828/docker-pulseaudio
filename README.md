# docker-pulseaudio

## Requirements

This image needs the Mac having PulseAudio daemon.
If you have not installed PulseAudio, please install it on your Mac using Homebrew as below:

```bash
$ brew bundle
```

## Accecing to PulseAudio using TCP

Before running PulseAudio Docker image, start local PulseAudio with tcp module.

```bash
$ pulseaudio --load=module-native-protocol-tcp --exit-idle-time=-1 --daemon
```

After local PulseAudio daemon started, run PulseAudio image as followings.
You are going to be attached to the running container.

```bash
$ docker-compose -f docker-compose build
$ docker-compose -f docker-compose.test.yml run pulseaudio /bin/bash
```

If you want to check that it can play wav audio file, you can try to play wav on started pulseaudio image:

```bash
$ wget https://www2.cs.uic.edu/~i101/SoundFiles/BabyElephantWalk60.wav
$ paplay BabyElephantWalk60.wav
```
