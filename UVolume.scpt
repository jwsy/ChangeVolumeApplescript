# START
set currentVolume to output volume of (get volume settings)
set newVolume to (currentVolume + (100 / 17)) as integer
set volume output volume newVolume

tell application "GrowlHelperApp"
    set the allNotificationsList to {"Volume Applescript Update"}
    set the enabledNotificationsList to {"Volume Applescript Update"}
    register as application "Volume Applescript Update" all notifications allNotificationsList default notifications enabledNotificationsList
    notify with name "Volume Applescript Update" title "Volume set to" description (newVolume as string) application name "Volume Applescript Update" image from location "/System/Library/CoreServices/CoreTypes.bundle/Contents/Resources/Actions.icns"
end tell
# END 
