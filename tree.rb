Dir['*'].each do |file|
 puts "./" + file
end

# puts "Enter a directory name to display:"

# input = gets.chomp

# if input == "."
#   puts "Hello"
# elsif input == "./LICENSE"
#   puts "WORLD"
# end




# #.gsub("\"","")


folders =  Dir['*']

folders.each {|folder| p folder}
