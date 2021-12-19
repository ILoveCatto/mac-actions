# disable spotlight indexing
sudo mdutil -i off -a

# Install podman
brew install podman
podman machine init
podman machine start

# Create new user to get access to root
sudo dscl . -create /Users/ci
sudo dscl . -create /Users/ci UserShell /bin/zsh
sudo dscl . -create /Users/ci RealName "Crescent"
sudo dscl . -create /Users/ci UniqueID 1001
sudo dscl . -create /Users/ci PrimaryGroupID 80
sudo dscl . -create /Users/ci NFSHomeDirectory /Users/vncuser
sudo dscl . -passwd /Users/ci Binnic123!
sudo dscl . -passwd /Users/ci Binnic123!
sudo createhomedir -c -u ci > /dev/null
