# Imports
import osproc
import times
import os
import json

# Getting the homedir
let home: string = getHomeDir()

# Main Loop
while true:
    # Getting time
    var time: int64  = toUnix(getTime())
    # Getting the new notifs
    var jsobj = parseFile(home & ".config/cald/cal.json")
    var notifs = seq(getElems(jsobj))
    # Checking list of notifs
    for i in notifs:
        # Send the notifs, if the notification is due at the current time
        if $i["time"] == $time or $i["time"] < $time:
            # Sending notification
            var cmd: string = "notify-send '[Calender]' "
            cmd.add($i["title"])
            #  cmd.add("'")
            echo execProcess(cmd)
            # Remove the notification from the list and print the list of notifcations
            delete(notifs, find(notifs, i))
            echo $i
            break
    # Updating the notification file
    jsobj = %* notifs
    writeFile(home & ".config/cald/cal.json", $jsobj)

    sleep(1000)
