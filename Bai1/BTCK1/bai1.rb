puts 'Nhap n: '
n = gets.chomp.to_i
tong=0;
for i in 2..n do
    count=0
    for j in 2..Math.sqrt(i) do
        if i%j ==0
            count = count +1
        end
    end
    if count==0
        tong=tong+i
    end
end
puts "Tong so nguyen to = #{tong}"