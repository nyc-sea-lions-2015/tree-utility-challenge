
IGNORE = %w(. ..)

def files(location)
  Dir[location].select do |file|
    !File.directory?(file) && ! IGNORE.include?(file)
  end
end

def folders(location)
  Dir[location].select do |file|
    File.directory?(file) && ! IGNORE.include?(file)
  end
end

def strip_path(path)
  slash = path.rindex('/')
  if ! slash.nil?
    path = path[slash + 1, (path.length - slash)]
  else
    path
  end
end

def tree(location = '*', level = 1)
  puts '.' if level == 1
  indent = "│   " * (level-1) + "├── "

  directories = folders(location)
  files = files(location)

  files.each { |file| puts "#{indent}#{strip_path(file)}" }

  directories.each do |folder|
    puts "#{indent}#{strip_path(folder)}"
    tree("#{folder}/*", level + 1)
  end
end

if ARGV.empty?
  tree
else
  tree(ARGV.first)
end
