lines = []
# this is my comment
File.open("some_file") do |file|
    lines = file.readlines
end