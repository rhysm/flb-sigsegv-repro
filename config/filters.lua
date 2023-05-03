function first(tag, timestamp, record)
    new_record = record
    new_record["foo"] = "bar"

    return 2, timestamp, new_record
end

function second(tag, timestamp, record)
    return 0, 0, 0
end