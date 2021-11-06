# Check for software updates daily, not just once per week
defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1

# Save screenshots in JPG format by default (other options: BMP, GIF, JPG, PDF, TIFF)
defaults write com.apple.screencapture type -string "jpg"

# To add a new blank box in the dock
defaults write com.apple.dock persistent-apps -array-add '{tile-data={}; tile-type="spacer-tile";}'
# Type the below line after the above line, the D in Dock needs to be a capital letter.
killall Dock

# Eliminate Dock Reveal Delay
# No Animation
defaults write com.apple.dock autohide-time-modifier -int 0; killall Dock
# Fast Animation
defaults write com.apple.dock autohide-time-modifier -float 0.12; killall Dock
# Revert to Default
defaults delete com.apple.dock autohide-time-modifier; killall Dock
