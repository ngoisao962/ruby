puts 'tính tổng dãy số'
puts 'so a = '
STDOUT.flush
a = gets.chomp.to_f
puts 'so b = '
STDOUT.flush
b = gets.chomp.to_f
def tong(a, b)
    puts 'tong la = %.2f' % [(1/((Math.sqrt(a)+ Math.sqrt(b))) + ((3*Math.sqrt(a*b))/((a*Math.sqrt(a))+(b*Math.sqrt(b)) )) ) ]
end
puts tong(a,b)