
def tree(path = "*", stack = 0, finish_stack_count = 0)
  current_directory = Dir.glob(path)
  current_directory.each_with_index do |item, index|
    # p current_directory
    # p Dir.glob("#{item}/*")
    # p Dir.glob("*/")
    # p "last: " + Dir.glob("*/").last
    # p "item: " + item
    parent = item.partition("/")[0] + "/"
    # p "parent: " + parent
    if parent == Dir.glob("*/").last && index == current_directory.length - 1
      # puts "finish: #{finish_stack_count} stack: #{stack}"
      print "    "*finish_stack_count
      print "│   "*stack if stack > 0
      puts "└── " + File.basename("/#{item}")
      finish_stack_count += 1
      stack -= 1
    elsif index == current_directory.length - 1 && Dir.glob("#{item}/*") == []
      print "    "*finish_stack_count
      print "│   "*stack if stack > 0
      puts "└── " + File.basename("/#{item}")
    else
      print "    "*finish_stack_count
      print "│   "*stack if stack > 0
      puts "├── " + File.basename("/#{item}")
    end
    tree("#{item}/*", stack + 1, finish_stack_count)
  end
end

puts '.'
ARGV[0].nil? ? tree : tree(ARGV[0])

# ├── │ └──