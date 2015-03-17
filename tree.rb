# Release 1

# def tree(directory)
#   p Dir[directory]
# end

# tree('*')

# Release 2

# def tree(path)
#   Dir[path + '/*'].each do |sub_directory|
#     puts sub_directory
#     if File.directory?(sub_directory) # if it's a directory and not just a file
#       tree(sub_directory)
#     end
#   end
# end

# tree('.')

# Release 3

class Tree
  attr_accessor :counter

  def show_tree(path, counter)
    Dir[path + '/*'].each do |sub_directory|
      puts ("   " * counter) + sub_directory
      show_tree(sub_directory, counter+1)
    end
  end
end

test = Tree.new
test.show_tree('.', 0)
