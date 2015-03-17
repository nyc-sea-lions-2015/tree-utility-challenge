
def list_directory(current_directory = '*', stack_level = 0)
  directory = Dir.glob(current_directory)
  directory.each do |f|
    puts
    # puts "./#{f}"
    stack_level.times {print "  " }

    print File.basename(f)
    list_directory("#{f}/*", stack_level + 1)
   end
end

list_directory
