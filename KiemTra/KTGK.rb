class Phuongtien
    def initialize
    end
    $phuongtien_231= []
    def nhap_phuongtien
        print "ID: "
        @id_231=gets.chomp
        print "Hãng sản xuất: "
        @hsx_231= gets.chomp
        print "Năm sản xuất: "
        @namsx_231=gets.chomp
        print "Dòng xe: "
        @dongxe_231=gets.chomp
        print "Giá bán: "
        @giaban_231=gets.chomp
        print "Biển số: "
        @bienso_231=gets.chomp
        print "Màu xe: "
        @mauxe_231=gets.chomp

    end
    def hienthi
        puts "Hãng xe: #{@hsx_231},Dòng xe: #{@dongxe_231},Giá: #{@giaban_231},Màu xe: #{@mauxe_231},Biển số: #{@bienso_231}"
    end 
    attr_accessor :id_231,:hsx_231,:dongxe_231,:giaban_231,:mauxe_231,:bienso_231
end
class Oto < Phuongtien
    def initialize
    end
    attr_accessor :socho_231, :kieudongco_231, :nhienlieu_231, :sotuikhi_231, :ngaydangkiem_231
    def nhap_phuongtien
        super
        print "Nhập số chỗ: "
        @socho_231=gets.to_i
        print "Kiểu động cơ: "
        @kieudongco_231=gets.chomp
        print "Nhiên Liệu: "
        @nhienlieu_231=gets.chomp
        print "Số túi khí: "
        @sotuikhi_231=gets.to_i
        print "Ngày đăng kiểm: "
        @ngaydangkiem_231=gets.chomp
    end
    def hienthi
        super
        puts "loại xe: Ô tô, Số chỗ ngồi: #{@socho_231}, kiểu động cơ: #{@kieudongco_231}, Nhiên liệu: #{@nhienlieu_231}, Số túi khí: #{@sotuikhi_231}, Ngày đăng kiểm: #{@ngaydangkiem_231}"
    end
   
end
class Xemay<Phuongtien
    def initialize
    end
    def nhap_phuongtien
        super
        print "Công suất: "
        @congsuat_231=gets.chomp
        print "Dung tích bình xăng: "
        @dungtich_231=gets.chomp
    end
    def hienthi
        super
        puts "Loại xe: Xe máy, Công suất :#{@congsuat_231}, Dung tích bình xăng: #{@dungtich_231}"
    end
    attr_accessor :congsuat_231, :dungtich_231
end
class Xetai< Phuongtien
    def initialize
    end
    def nhap_phuongtien
        super
        print "Trọng tải: "
        @trongtai_231=gets.chomp
    end
    def hienthi
        super
        puts "Loại xe: Xe tải, Trọng tải: #{@trongtai_231}"
    end
    attr_accessor :trongtai_231
end
class QLPTGT
    def initialize
    end
    $phuongtiens_231=[]
    def themphuongtien
        puts "1. Nhập Ô tô"
        puts "2. Nhập Xe máy"
        puts "3. Nhập Xe tải"
        chon_231=gets.to_i
        if chon_231==1
            phuongtien_231=Oto.new
            elsif chon_231==2
                phuongtien_231=Xemay.new
                elsif chon_231==3
                    phuongtien_231=Xetai.new
                end
                phuongtien_231.nhap_phuongtien
                $phuongtiens_231 << phuongtien_231
    end
    def hienthiphuongtien
        $phuongtiens_231.each do |phuongtien_231|
            puts phuongtien_231.hienthi
        end
    end
    def xoaphuongtien
        print "Nhập id phương tiện muốn xóa: "
        xoa_231= gets.chomp
        $phuongtiens_231.each do |phuongtien_231|
            if phuongtien_231.id_231==xoa_231
                $phuongtiens_231.delete(phuongtien_231)
            end
        end
    end
    def timkiem
        ketqua_231=[]
        print "Nhập cụm từ tìm kiếm: "
        timkiem_231= gets.chomp
        $phuongtiens_231.each do |phuongtien_231|
            if phuongtien_231.hsx_231==timkiem_231
                ketqua_231 << phuongtien_231
                elsif phuongtien_231.mauxe_231==timkiem_231
                    ketqua_231 << phuongtien_231
                    elsif phuongtien_231.bienso_231==timkiem_231
                        ketqua_231 << phuongtien_231
                    end
        puts "Kết quả tìm kiếm: "
        ketqua_231.each do |phuongtien_231|
            puts phuongtien_231.hienthi
        end
    end
end
end
$count_231 =true
while $count_231
    quanly_231= QLPTGT.new
    puts"1. Thêm phương tiện: "
    puts"2. Xóa phương tiẹn : "
    puts"3. Hiển thị danh sách phương tiện: "
    puts"4. Tìm kiếm: "
    puts"5. Thoát!"
    puts"Mời bạn chọn! "
    chon2_231=gets.to_i
    case chon2_231
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
        $count_231=false
    end
end
