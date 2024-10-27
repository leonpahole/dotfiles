#!/bin/bash
killall -v spotify
sed -i "/\b\(app.window.position\)\b/d" -- $HOME/.var/app/com.spotify.Client/config/spotify/prefs

echo "Great! Now open Spotify!"
