File.open(ARGV[0]).each_line do |line|
  each_element=line.split(' ')
  number=each_element[2].to_i
  for k in 1..number do
    if k % each_element[0].to_i==0
      print "F "
    elsif k % each_element[1].to_i==0
      print "B "
    else
      if k==number
          print k.to_s
        else
          print k.to_s + " "
        end
    end
  end
  print "\n"
end