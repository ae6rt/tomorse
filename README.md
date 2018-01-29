## tomorse docker container

Docker container for [Jack Twilley's
tomorse](https://github.com/mathuin/tomorse) text-to-Morse Code
converter.  *tomorse* will take plain text from the tool's standard
input and convert it to an audio representation in Morse Code.  Open
the resulting sound file in your favorite audio player.

### Run

For an input file hello.txt in the current working directory,
generate the Morse Code sound file equivalent (7 words per minute,
character speed 10 words per minute) hello.wav in the current working
directory.

```
$ docker run -it -v $(pwd):/out -v $(pwd):/in -e LD_LIBRARY_PATH=/usr/local/lib ae6rt/tomorse:latest bash -c "cat /in/hello.txt | /tomorse/tomorse -s 7 -c 10 > /out/hello.wav"
```

### Building the container

The container is already published to Docker Hub, but for completeness, this is how it was built:

```
$ docker build -t ae6rt/tomorse:latest .
```

### Reference

Install Docker for your desktop platform

https://docs.docker.com/install/#supported-platforms

