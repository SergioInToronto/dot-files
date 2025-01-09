## Convert to MP3

```
ffmpeg -i %f -vn %f.mp3
```

## Everything?
```
ffmpeg -i v.mp4 -ss 3.333 -i a.opus -t 9 -c:a aac -c:v copy output.mp4
```

* Audio: skip the first 3.333 seconds
* End after 9 seconds
* Audio: convert input (a.opus) to AAC
* Video: Copy input (v.mp4) exactly to output (no conversion)


### TODO: bring others from bashrc
