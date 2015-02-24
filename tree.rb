#Release 1
# current_contents = Dir.glob("*")
# current_contents.each do |path|
#   puts "./" + path
# end

#Release 2
current_contents = Dir.glob("*")
current_contents.each do |path|
  puts "./" + path
  files = Dir.glob("#{path}/**/*")
  files.each do |file|
    puts "./" + file
  end
end

