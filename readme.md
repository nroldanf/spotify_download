# spotify_download
Spotify dockerfile to run an application based in https://github.com/SathyaBhat/spotify-dl that downloads all the tracks within a playlist.

Run a docker container from [this image](https://hub.docker.com/r/nroldanf/spotify_download) with the following command in order to download the song into a folder in your current local path (pwd).

```bash
docker run --rm -v $(pwd):/songs \
-e SPOTIFY_PLAYLIST="https://open.spotify.com/playlist/3Ansznz8joIopkoagNoYx6?si=vJOw28aVQ5yMLgeM682_2Q" \
-e SPOTIPY_CLIENT_ID="YOUR_CLIENT_ID" \
-e SPOTIPY_CLIENT_SECRET="YOUR_CLIENT_SECRET" \
nroldanf/spotify_download
```
