```
ffmpeg -i v.mp4 -ss 3.333 -i a.opus -t 9 -c:a aac -c:v copy output.mp4
```

* Audio: skip the first 3.333 seconds
* End after 9 seconds
* Audio: convert opus to AAC
* Video: Copy exactly (no conversion)


### TODO: bring others from bashrc
