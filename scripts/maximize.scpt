tell application "System Events"
  perform action "AXZoomWindow" of (first button whose subrole is "AXFullScreenButton") of (first window whose subrole is "AXStandardWindow") of (first process whose frontmost is true)
end tell
