
# def list_directory(current_directory = '*', stack_level = 0)
#   directory = Dir.glob(current_directory)
#   dir_length = directory.length

#   directory.each_with_index do | f, index|
#     puts
#     stack_level.times {print "  " }
#     print File.basename(f)
#     list_directory("#{f}/*", stack_level + 1)
#    end
# end

def list_directory(current_directory = '*', stack_level = 0, last_file = false)
  directory = Dir.glob(current_directory)
  dir_length  = directory.length - 1
  directory.each_with_index do | f, index|
    puts
    stack_level.times {print "│   " }
    print "├── " if index < dir_length
    print "└── " if index == dir_length
    print File.basename(f)
    list_directory("#{f}/*", stack_level + 1, index == dir_length)
   end
end

if ARGV[0].nil?
  list_directory
else
  list_directory(ARGV[0].to_s)
end
