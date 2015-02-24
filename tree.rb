#Release 1
# current_contents = Dir.glob("*")
# current_contents.each do |path|
#   puts "./" + path
# end

#Release 2: iterative approach prints out correct output, without formatting
# current_contents = Dir.glob("./*")
# current_contents.each do |path|
#   puts path
#   files = Dir.glob("#{path}/**/*")
#   files.each do |file|
#     puts file
#   end
# end

#trying to change iterative approach to an recursive approach:

def print_contents(directory)
  current_contents = Dir.glob("#{directory}/*")
  puts "."
  current_contents.each do |path|
    puts "  " + path
    # print_contents(path)
    children = Dir.glob("#{path}/*")
    children.each do |child|
      print_contents(child)
    end
  end
end

print_contents("/Users/apprentice/tree-utility-challenge")


