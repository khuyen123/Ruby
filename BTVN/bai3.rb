class Thisinh
    def initialize
    end
    def themthisinh
        print "Nhập vào số báo danh:"
        @sbd= gets.chomp
        print "Nhập vào họ tên: "
        @hoten =gets.chomp 
        print "Nhập vào địa chỉ: "
        @diachi =gets.chomp
        print "Nhập vào mức độ ưu tiên: 1-4"
        @uutien =gets.to_i
    end
    def hienthi
        
    end
    attr_accessor :sbd, :hoten, :diachi, :uutien
end
