File.open(ARGV[0]).each_line do |line|
  each_element=line.split(' ')
  each_element.reverse.each {
    |reverse_element|
    print reverse_element + " "
  }
end

# line = gets.chomp()
