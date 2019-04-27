Sub MillisecondsToString(ms as integer) as string
    hours = Int(ms / 1000 / 60 / 60)
    ms -= Int(hours * 1000 * 60 * 60)
    minutes = Int(ms / 1000 / 60)
    ms -= Int(minutes * 1000 * 60)
    seconds = Int(ms / 1000)

    str = ""
    if hours > 0 and hours < 10
        str = "0"
    end if
    str = hours.ToStr() + ":"
    if minutes < 10
        str += "0"
    end if
    str += minutes.ToStr() + ":"
    if seconds < 10
        str += "0"
    end if
    str += seconds.ToStr()

    return str
end Sub