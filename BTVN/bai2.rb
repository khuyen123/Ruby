class TaiLieu
    def initialize
    end
    $tailieus = []
    
    def nhap_tailieu
        print "Nhập mã tài liệu: "
        @matl=gets.chomp
        print "Nhập tên nhà xuất bản: "
        @nxb= gets.chomp
        print "Nhập số bản phát hành: "
        @soban=gets.to_i
    end
    def show_info
        pust "Mã tài liệu: #{@matlab}, Tên nhà xuất bản: #{@nxb}, Số bản phát hành: #{@soban}"
    end
    attr_accessor :matl, :nxb, :soban
end
class Sach < TaiLieu
    def initialize
    end
    
    def nhap_tailieu
        super
        print "Nhập tên tác giả: "
        @tentacgia= gets.chomp
        print "Nhập số trang: "
        @sotrang = gets.to_i
    end
    def show_info
        super
        puts "Tên tác giả: #{@tentacgia}, Số trang: #{@sotrang}"
    end
    attr_accessor :tentacgia, :sotrang
end
class Tapchi< TaiLieu
    def initialize
    end
    def nhap_tailieu
        super
        print "Nhập vào ngày phát hành: "
        @ngayphathanh= gets.chomp
        print "Nhập vào tháng phát hành: "
        @thangphathanh= gets.chomp
    end
    def show_info
        super
        puts "Ngày phát hành: #{@ngayphathanh}, tháng phát hành: #{@thangphathanh}"
    end
    attr_accessor :ngayphathanh, :thangphathanh
end 
class Bao< TaiLieu
    def initialize
    end
    def nhap_tailieu
        super
        print "Nhập vào ngày phát hành:"
        @ngayphathanh= gets.chomp
    end
    def show_info
        super
        puts "ngày phát hành: #{@ngayphathanh}"
    end
end
class QLTL
    def initialize
    end
    $tailieus= []
    def addtailieu
        puts "1. Nhập sách"
        puts "2. Nhập Báo"
        puts "3. Nhập Tạp chí"
        chon=gets.to_i
        if chon==1
            tailieu=Sach.new
            elsif chon==2
                tailieu=Bao.new
                elsif chon==3
                    tailieu=Tapchi.new
                end
                TaiLieu.nhap_tailieu
                $tailieus<<tailieu
    end
end