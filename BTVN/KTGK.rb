class Phuongtien
    def initialize
    end
    $phuongtien= []
    def nhap_phuongtien
        print "ID: "
        @id=gets.chomp
        print "Hãng sản xuất: "
        @hsx= gets.chomp
        print "Năm sản xuất: "
        @namsx=gets.chomp
        print "Dòng xe: "
        @dongxe=gets.chomp
        print "Giá bán: "
        @giaban=gets.chomp
        print "Biển số: "
        @bienso=gets.chomp
        print "Màu xe: "
        @mauxe=gets.chomp

    end
    def hienthi
        puts "Hãng xe: #{@hsx},Dòng xe: #{@dongxe},Giá: #{@giaban},Màu xe: #{@mauxe},Biển số: #{@bienso}"
    end 
    attr_accessor :id,:hsx,:dongxe,:giaban,:mauxe,:bienso
end
class Oto < Phuongtien
    def initialize
    end
    attr_accessor :socho, :kieudongco, :nhienlieu, :sotuikhi, :ngaydangkiem
    def nhap_phuongtien
        super
        print "Nhập số chỗ: "
        @socho=gets.to_i
        print "Kiểu động cơ: "
        @kieudongco=gets.chomp
        print "Nhiên Liệu: "
        @nhienlieu=gets.chomp
        print "Số túi khí: "
        @sotuikhi=gets.to_i
        print "Ngày đăng kiểm: "
        @ngaydangkiem=gets.chomp
    end
    def hienthi
        super
        puts "loại xe: Ô tô, Số chỗ ngồi: #{@socho}, kiểu động cơ: #{@kieudongco}, Nhiên liệu: #{@nhienlieu}, Số túi khí: #{@sotuikhi}, Ngày đăng kiểm: #{@ngaydangkiem}"
    end
   
end
class Xemay<Phuongtien
    def initialize
    end
    def nhap_phuongtien
        super
        print "Công suất: "
        @congsuat=gets.chomp
        print "Dung tích bình xăng: "
        @dungtich=gets.chomp
    end
    def hienthi
        super
        puts "Loại xe: Xe máy, Công suất :#{@congsuat}, Dung tích bình xăng: #{@dungtich}"
    end
    attr_accessor :congsuat, :dungtich
end
class Xetai< Phuongtien
    def initialize
    end
    def nhap_phuongtien
        super
        print "Trọng tải: "
        @trongtai=gets.chomp
    end
    def hienthi
        super
        puts "Loại xe: Xe tải, Trọng tải: #{@trongtai}"
    end
    attr_accessor :trongtai
end
class QLPTGT
    def initialize
    end
    $phuongtiens=[]
    def themphuongtien
        puts "1. Nhập Ô tô"
        puts "2. Nhập Xe máy"
        puts "3. Nhập Xe tải"
        chon=gets.to_i
        if chon==1
            phuongtien=Oto.new
            elsif chon==2
                phuongtien=Xemay.new
                elsif chon==3
                    phuongtien=Xetai.new
                end
                phuongtien.nhap_phuongtien
                $phuongtiens << phuongtien
    end
    def hienthiphuongtien
        $phuongtiens.each do |phuongtien|
            puts phuongtien.hienthi
        end
    end
    def xoaphuongtien
        print "Nhập id phương tiện muốn xóa: "
        xoa= gets.chomp
        $phuongtiens.each do |phuongtien|
            if phuongtien.id==xoa
                $phuongtiens.delete(phuongtien)
            end
        end
    end
    def timkiem
        ketqua=[]
        print "Nhập cụm từ tìm kiếm: "
        timkiem= gets.chomp
        $phuongtiens.each do |phuongtien|
            if phuongtien.hsx==timkiem
                ketqua << phuongtien
                elsif phuongtien.mauxe==timkiem
                    ketqua << phuongtien
                    elsif phuongtien.bienso==timkiem
                        ketqua << phuongtien
                    end
        puts "Kết quả tìm kiếm: "
        ketqua.each do |phuongtien|
            puts phuongtien.hienthi
        end
    end
end
end
$count =true
while $count
    quanly_231= QLPTGT.new
    puts"1. Thêm phương tiện: "
    puts"2. Xóa phương tiẹn : "
    puts"3. Hiển thị danh sách phương tiện: "
    puts"4. Tìm kiếm: "
    puts"5. Thoát!"
    puts"Mời bạn chọn! "
    chon2=gets.to_i
    case chon2
    when 1 
        quanly_231.themphuongtien
    when 2
        quanly_231.xoaphuongtien
    when 3
        quanly_231.hienthiphuongtien
    when 4
        quanly_231.timkiem
    when 5
        puts "Chào bạn!"
        $count=false
    end
end
