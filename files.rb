lines = []
File.open("some_file") do |file|
    lines = file.readlines
end