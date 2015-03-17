

def print(directory)
  puts Dir[directory]
end
 # print('*')

def find_files
  puts Dir["*"]
  puts Dir.glob("*/*.rb")
end

# find_files


  def indent(location, count = 0)

    Dir.glob(location + "*/tree*/*").each do |nexts|
      puts ("| ") + File.basename(nexts)
      indent(nexts, count + 1)
    end
    Dir.glob(location + "/r*.rb").each do |nextdirectory|
      puts ("| |-- " * count) + File.basename(nextdirectory)
      # indent(nextdirectory, count + 1)
    end
  end

    size = ARGV.size
    if size > 0
      location = ARGV[0]
    else
      location = "."
    end


indent(location)



