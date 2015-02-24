
current_contents = Dir.glob("*")
current_contents.each do |item|
  puts "./" + item
end
