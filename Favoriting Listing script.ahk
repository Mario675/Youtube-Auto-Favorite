#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

; Favoriting program. This allows you to favorite videos to watch for later, so you decide when you want to watch the videos you found out.


^j::

    ; I haven't found out a way to stop the program when firefox is closed. 
    loop 1000
    {

        sleep 2500
            ; Time for the page to load

        sleep 2000
            ; Time for you to look at the side suggestion

        send ^d
        sleep 1000
            ; Favorite it. 
        
        send {Enter}
        sleep 1000
            ; Confirm

        send ^w
        sleep 1000
            ; Close

        expression := ()

    }

    return

^k:: ExitApp