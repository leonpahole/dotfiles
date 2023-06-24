set -Ux ANDROID_HOME $HOME/Android/Sdk
set -Ux JAVA_HOME /usr/lib/jvm/java-11-openjdk-amd64

set -U fish_user_paths $ANDROID_HOME/emulator $fish_user_paths
set -U fish_user_paths $ANDROID_HOME/tools $fish_user_paths
set -U fish_user_paths $ANDROID_HOME/tools-bin $fish_user_paths
set -U fish_user_paths $ANDROID_HOME/platform-tools $fish_user_paths
# set -U fish_user_paths /usr/lib/jvm/java-15-openjdk-amd64
