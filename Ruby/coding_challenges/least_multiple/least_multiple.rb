# File.open(ARGV[0]).each_line do |line|
#   each_element=line.split(' ')
#   each_element.reverse.each {
#     |reverse_element|
#     print reverse_element + " "
#   }
# end

line = gets.chomp()
each_element=line.split(',')

n = each_element[0]
x = each_element[1]

if x>n
	print x
else
	while x<n
		[1..100000].each{|m| 
			x*=m
			print x
		}
	end
end
