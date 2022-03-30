#! /bin/bash

# check os
if [ "$(uname)" != "Darwin" ] ; then
	echo 'Not macOS!'
	exit 1
fi


# ======== ======== ========
# nvram
# ======== ======== ========

sudo nvram AutoBoot=%00   # disable auto boot (when opening display).


# ======== ======== ========
# os
# ======== ======== ========

defaults write -g NSInitialToolTipDelay -integer 0   # set time 0 for display toolchip
defaults write -g NSWindowResizeTime 0.1   # set firster time for display dialogue
defaults write NSGlobalDomain AppleShowAllExtensions -bool true   # display all .extension
# defaults write NSGlobalDomain AppleShowScrollBars -string "Always"   # display scrol bar always
defaults write NSGlobalDomain NSWindowResizeTime -float 0.001   # set firster time for changing window size on console application


# ======== ======== ========
# Bluetooth audio agent
# ======== ======== ========

defaults write com.apple.BluetoothAudioAgent "Apple Bitpool Max (editable)" -int 96   # set max bitpool value on Bluetooth audio agent
defaults write com.apple.BluetoothAudioAgent "Apple Bitpool Min (editable)" -int 48   # set min bitpool value on Bluetooth audio agent, default is too low... 2..
defaults write com.apple.BluetoothAudioAgent "Apple Initial Bitpool (editable)" -int 64   # set initial bitpool value on Bluetooth audio agent

# ======== ======== ========
# mouse acceleration
# ======== ======== ========
defaults write .GlobalPreferences com.apple.mouse.scaling -1

# ======== ======== ========
# Trackpad
# ======== ======== ========

# Enable "Tap to click"
# defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
# defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
# defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# Map bottom right Trackpad corner to right-click
# defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadCornerSecondaryClick -int 2
# defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadRightClick -bool true
# defaults -currentHost write NSGlobalDomain com.apple.trackpad.trackpadCornerClickBehavior -int 1
# defaults -currentHost write NSGlobalDomain com.apple.trackpad.enableSecondaryClick -bool true


# ======== ======== ========
# Finder
# ======== ======== ========

# defaults write com.apple.Finder QuitMenuItem -bool true   # FinderのCmd+QをMenuに表示

# defaults write com.apple.finder NSSystemFont -string Ricty   # set font on Finder
# defaults write com.apple.finder NSTitleBarFont -string Ricty   # set font on title bar

defaults write com.apple.finder _FXShowPosixPathInTitle -bool true   # show full path on title bar きかない

defaults write com.apple.finder ShowPathbar -bool true   # show path bar
# defaults write com.apple.finder PathBarRootAtHome -bool true   # show path from root on path bar
defaults write com.apple.finder ShowTabView -bool true   # show tab bar
defaults write com.apple.finder ShowStatusBar -bool true   # show status bar

defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false   # 拡張子変更アラート

#defaults write com.apple.finder _FXSortFoldersFirst -bool true   # show first folder when sorting

defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"   # search current directory

# defaults write com.apple.finder WarnOnEmptyTrash -bool false    # disable alert clear trash

# defaults write com.apple.finder AppleShowAllFiles -bool true   # show invisible files or directories

defaults write -g NSNavPanelExpandedStateForSaveMode -bool true   # change to expanded state for save mode
defaults write -g PMPrintingExpandedStateForPrint -bool true   # change to expanded state for print

defaults write -g NSNavRecentPlacesLimit -int 0   # "Recent Place" limit , default : 5

defaults write com.apple.finder QLEnableTextSelection -bool true   # enable text selection on Quick Look
# defaults write com.apple.finder QLHidePanelOnDeactivate -bool true   # Hide Quick Look when deactivating

defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true   # Don't write .DS_Store on network storage
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true   # Don't write .DS_Store on usb storage

defaults write com.apple.NetworkBrowser ShowThisComputer -bool true   # show this computer on "sharing" when sharing this computer

# defaults write com.apple.finder ShowCustomIconsForRemovableVolumes -bool false   # Disable custom icon for removal media
# defaults write com.apple.finder ShowCustomIconsForRemoteVolumes -bool false   # Disable custom icon for network volumes

# defaults write com.apple.finder AnimateWindowZoom -bool false   # disable animation when open folder
# defaults write -g NSAutomaticWindowAnimationsEnabled -bool false   # disable animation when open file

# defaults write com.apple.finder DisableAllAnimations -bool true   # disable all animation
# defaults write -g NSScrollViewRubberbanding -bool false   # disable rubberbanding while launching application


# ======== ======== ========
# terminal
# ======== ======== ========

defaults write com.apple.terminal StringEncodings -array 4   # use only UTF-8


# ======== ======== ========
# Dock
# ======== ======== ========

# defaults write com.apple.dock persistent-apps -array #Dock内容すべて削除

defaults write com.apple.dock mineffect suck   # enable effect "Suck" Def genie or scale
# defaults write com.apple.dock contents-immutable -bool true   # Dockに追加を拒否
# defaults write com.apple.dock size-immutable -bool true   # disable changing dock size
# defaults write com.apple.dock magnify-immutable -bool true   # disable changing icon size
# defaults write com.apple.dock position-immutable -bool true   # disable changing position
# defaults write com.apple.dock mineffect-immutable -bool true   # disable changing effect
# defaults write com.apple.dock autohide-immutable -bool true   # disable changing option "auto-hide"
defaults write com.apple.dock autohide-delay -float 0    # set delay 0 show dock


# ======== ======== ========
# Mission Control
# ======== ======== ========

# defaults write com.apple.dock mcx-expose-disabled -bool true   # disable mission control


# ======== ======== ========
# Dashboard
# ======== ======== ========

# defaults write com.apple.dashboard mcx-disabled -bool true   # disable dashboard


# ======== ======== ========
# Screen Capture
# ======== ======== ========

defaults write com.apple.screencapture disable-shadow -bool true   # disable shadow
defaults write com.apple.screencapture type -string "png"    # set png


# ======== ======== ========
# Safari
# ======== ======== ========

defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled -bool true   # enable development & debug menu
defaults write com.apple.Safari IncludeDevelopMenu -bool true   # enable development & debug menu
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true   # enable development & debug menu
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true   # enable development & debug menu

defaults write com.apple.Safari ShowFullURLInSmartSearchField -bool true   # show complete URL
defaults write com.apple.Safari ShowStatusBar -bool true   # show status bar
defaults write com.apple.Safari SuppressSearchSuggestions -bool true   # disable send searching query to Apple
defaults write com.apple.Safari UniversalSearchEnabled -bool false   # disable send searching query to Apple

defaults write com.apple.Safari AutoOpenSafeDownloads -bool false   # disable auto open when downloading

defaults write NSGlobalDomain WebKitDeveloperExtras -bool true   # add web inspector


# ======== ======== ========
# remove localized
# ======== ======== ========

sudo rm /Applications/.localized
rm ~/Applications/.localized
rm ~/Documents/.localized
rm ~/Downloads/.localized
rm ~/Desktop/.localized
rm ~/Public/.localized
rm ~/Pictures/.localized
rm ~/Music/.localized
rm ~/Movies/.localized
rm ~/Library/.localized


# ======== ======== ========
# show directory
# ======== ======== ========
sudo chflags nohidden ~/Library   # visible library directory
sudo chflags nohidden /Volumes   # visible volume directory


# ======== ======== ========
# other
# ======== ======== ========
# defaults write com.apple.CrashReporter DialogType -string "none"   # クラッシュレポート出すか

# http://tukaikta.blog135.fc2.com/blog-entry-251.html