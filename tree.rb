def file_tree(item, counter)
  Dir.glob("#{item}/*").each do |filename|
    if File.file?(filename)
      puts "|   "*counter + "|---" + File.basename(filename)
    elsif File.directory?(filename)
      puts "|   "*counter + "|---" + File.basename(filename)
      counter += 1
      file_tree(filename, counter)
      counter -= 1
    end
  end
end

file_tree(Dir.pwd, 0)
