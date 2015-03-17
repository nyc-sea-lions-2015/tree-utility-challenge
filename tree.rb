def tree(arg = ARGV, indent = "")
  if arg.is_a?(Array)
    y = arg.join("") + "/*"
  else
    y = ("./*")
  end
  Dir[y].each {|x|
    puts indent + "|--" + File.basename(x)
    if File.directory?(x) == true
      Dir.chdir(x)
      tree(y, indent += " ")
      indent[0] = ""
      Dir.chdir('../')
    end}
end

tree
