
def file_tree(item)
  Dir.glob("#{item}/*").each do |filename|
    f_name = File.basename(filename)
    puts "\t" + f_name
    if File.directory?(filename)
      print "\t"
      file_tree(filename)
    end
  end
end

file_tree(Dir.pwd)

# idea: append paths to array. add tabs passed on location in array
