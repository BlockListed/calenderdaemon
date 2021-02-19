import osproc
import times
import os
import json

while true:
    var time = toUnix(getTime())
    var jsobj = parseFile("/home/blocked/.config/cald/cal.json")
    var notifs = seq(getElems(jsobj))
    for i in notifs:
        if $i["time"] == $time or $i["time"] < $time:
            var cmd: string = "notify-send '[Calender] "
            cmd.add($i["title"])
            cmd.add("'")
            echo execProcess(cmd)
            delete(notifs, 0)
            echo $i
            break
    jsobj = %* notifs
    writeFile("/home/blocked/.config/cald/cal.json", $jsobj)

    sleep(1000)
