# def tree
#   return Dir.glob('./**')
#   return Dir.glob('./*/*')
# end

# def tree
# Dir.glob('./*').each {|x|
#   if File.directory?(x) == true
#     "shoe"
#   else
#     "nothing"
#   end
#   }
# end

# puts tree


def tree
  y = ("./*")
  Dir[y].each {|x|
    puts Dir.getwd + "/" + File.basename(x)
    if File.directory?(x) == true
      Dir.chdir(x)
      tree
      Dir.chdir('../')
    end}
end

# tree

# def tree
#   filepath = "."
#   y = ("./*")
#   Dir[y].each {|x|
#     if File.directory?(x) == true
#       #filepath << File.basename(x)
#       Dir.chdir(x)

#       tree
#     else
#       puts Dir.pwd
#     end}
# end

tree
# puts Dir.glob('./**')

# begin

# rescue ArgumentError
#     p true  # or, p "ArgumentError raised!", or whatever you'd like here
# end
