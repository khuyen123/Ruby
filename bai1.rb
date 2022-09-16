# Bài 1:
mang=[5,-10,100,12,-5]
tong=0
puts "Số lớn nhất #{mang.max}"
puts "Số nhỏ nhất #{mang.min}"
for i in 0...mang.length-1 do
    tong+=mang[i]
end
ave=tong*1.0/mang.length
puts "Trung bình #{ave}"