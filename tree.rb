# Release 1

# def tree(directory)
#   p Dir[directory]
# end

# tree('*')

def tree(path)
  Dir[path + '/*'].each do |sub_directory|
    puts sub_directory
    if File.directory?(sub_directory) # if it's a directory and not just a file
      tree(sub_directory)
    end
  end
end

tree('.')
