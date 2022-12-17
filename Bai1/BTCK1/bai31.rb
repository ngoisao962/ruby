puts "Nhập a :";
a206 = gets.to_i;
puts "Nhập b :";
b206 = gets.to_i;
puts "Nhập c : ";
c206 = gets.to_i;

if a206 + b206> c206 && b206+c206>a206 && c206 + a206 > b206
    puts "Ba cạnh này là một cạnh của tam giác"
else 
    puts "Ba cạnh không phải là một tam giác";
end