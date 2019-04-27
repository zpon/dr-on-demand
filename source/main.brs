sub Main()
    print "################"
    print "Start of DR on demand"
    print "################"
    showMarkupSGScreen()
end sub

sub showMarkupSGScreen()
    print "in showMarkupSGScreen"
    screen = CreateObject("roSGScreen")
    m.port = CreateObject("roMessagePort")
    screen.setMessagePort(m.port)
    m.global = screen.getGlobalNode()
    m.global.addFields({seed : ""})

    scene = screen.CreateScene("StartScene")
    screen.show()

    while(true)
        msg = wait(0, m.port)
        msgType = type(msg)
        if msgType = "roSGScreenEvent"
            if msg.isScreenClosed() then return
        end if
    end while
end sub
