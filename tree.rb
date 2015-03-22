
def tree(path = "*", stack = 0, finish_stack_count = 0)
  current_directory = Dir.glob(path)
  current_directory.each_with_index do |item, index|
    parent = item.partition("/")[0] + "/"
    if parent == Dir.glob("*/").last && index == current_directory.length - 1
      print_node("/#{item}", "└── ", stack, finish_stack_count)
      finish_stack_count += 1
      stack -= 1
    elsif index == current_directory.length - 1 && Dir.glob("#{item}/*") == []
      print_node("/#{item}", "└── ", stack, finish_stack_count)
    else
      print_node("/#{item}", "├── ", stack, finish_stack_count)
    end
    tree("#{item}/*", stack + 1, finish_stack_count)
  end
end

def print_node(file, symbol, stack, finish_stack_count)
  print "    "*finish_stack_count
  print "│   "*stack if stack > 0
  puts symbol + File.basename(file)
end

puts '.'
ARGV[0].nil? ? tree : tree(ARGV[0])

# ├── │ └──