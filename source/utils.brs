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

Sub min(a as integer, b as integer) as integer
    if (a < b)
        return a
    else
        return b
    end if
end Sub

Sub max(a as integer, b as integer) as integer
    if (a > b)
        return a
    else
        return b
    end if
end Sub

Sub GenerateTitle(seriesTitle as string, title as string) as string
    if seriesTitle = title
        return title
    else
        return seriesTitle + " - " + title
    end if
end Sub