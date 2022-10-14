class HoGiaDinh
    $hodans= []
    def initialize
    end
    def themhodan
            print "Nhập vào số thành viên trong gia đình:"
            @stv= gets.to_i
            print "Nhập vào số nhà: "
            @sonha =gets.chomp 
           
        end
    end
    def hienthi
        puts "Số thành viên : #{@stv}, Số nhà: #{@sonha}"
    end
    attr_accessor :stv, :sonha
end
Class KhoiA < Thisinh
    def initialize
    end
    def themthisinh
        super
        print "Nhập Điểm toán:"
        @toan= gets.to_i
        print "Nhập Điểm Lý: "
        @ly =gets.to_i 
        print "Nhập hóa: "
        @hoa =gets.to_i
    end
    def hienthi
        super
        puts "Toán: #{@toan}, Lý: #{@ly}, Hóa: #{@hoa}"
    end
    attr_accessor :toan, :ly, :hoa
end
Class KhoiB < Thisinh
    def initialize
    end
    def themthisinh
        super
        print "Nhập Điểm Toán:"
        @toan= gets.to_i
        print "Nhập Điểm Hóa: "
        @hoa =gets.to_i 
        print "Nhập Điểm Sinh: "
        @sinh =gets.to_i
    end
    def hienthi
        super
        puts "Toán: #{@toan}, Hóa: #{@hoa}, Sinh: #{@sinh}"
    end
    attr_accessor :toan, :hoa, :sinh
end
Class KhoiC < Thisinh
    def initialize
    end
    def themthisinh
        super
        print "Nhập Điểm Văn:"
        @van= gets.to_i
        print "Nhập Điểm Sử: "
        @su =gets.to_i 
        print "Nhập Địa: "
        @dia =gets.to_i
    end
    def hienthi
        super
        puts "Văn: #{@van}, Sử: #{@su}, Địa: #{@dia}"
    end
    attr_accessor :su, :van, :dia
end
class QLTS
    def initialize
    end
    $thisinhs= []
    def themthisinh
        puts "1. Nhập Khối A"
        puts "2. Nhập Khối B"
        puts "3. Nhập Khối C"
        chon=gets.to_i
        if chon==1
            thisinh=KhoiA.new
            elsif chon==2
                thisinh=KhoiB.new
                elsif chon==3
                    thisinh=KhoiC.new
                end
                thisinh.themthisinh
                $thisinhs<<thisinh
    end
    def hienthithisinh
        puts "Danh sách Thí sinh: "
        $thisinhs.each do |thisinh|
            puts thisinh.hienthi
        end
    end
    def xoathisinh
        print "Nhập Số báo danh thí sinh muốn xóa: "
        xoa= gets.chomp
        $thisinhs.each do |thisinh|
            if thisinh.sbd==xoa
                $thisinhs.delete(thisinh)
            end
        end
    end
    def timkiem
        # print "Nhập vào danh mục cần tìm: "
        # timkiem= gets.chomp
        # $tailieus.each do |tailieu|
        #     if 
    end
end
$count= true
while $count
    quanly= QLTS.new
    puts"1. Thêm thí sinh: "
    puts"2. Xóa thí sinh : "
    puts"3. Hiển thị danh sách thí sinh: "
    puts"4. Tìm kiếm: "
    puts"5. Thoát!"
    puts"Mời bạn chọn! "
    chon2=gets.to_i
    case chon2 
    when 1 
        quanly.themthisinh
    when 2 
        quanly.xoathisinh
    when 3
        quanly.hienthi
    when 4
        quanly.timkiem
    when 5
        puts"Chào bạn!"
        $count=false
    end
end


