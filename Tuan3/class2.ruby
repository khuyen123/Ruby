#Lớp Human
class Human
  def initialize(name, hair, weight, height, age, phone, email, nation) 
    @name= name
    @hair= hair
    @weight= weight
    @height= height
    @age= age
    @phone= phone
    @email= email
    @nation= nation
  end
  def name
    @name
  end
  def hair
      @hair
  end
  def weight
      @weight
  end
  def height
    @height
  end
  def age
    @age
  end
  def phone
    @phone
  end
  def email
    @email
  end
  def nation
    @nation
  end
end
#Lớp Student
class Student < Human
  attr_accessor :toan  # thuộc tính riêng trong lớp kế thừa
  attr_accessor :ly
  attr_accessor :hoa
  attr_accessor :sinh           
  def diemtrungbinh                
    return ((toan+ly+hoa+sinh)*1.0)/4
  end

  def toan
    @toan
  end
  def ly
    @ly 
  end
  def hoa
    @hoa
  end
  def sinh
    @sinh
  end
end
#Tạo Mới các đối tượng student, bỏ vào danh sách
student1=  Student.new("Phạm Khuyến","Đen",50,165,21,"0336482917","khuyenphamno0@gmail.com","VietNam")
  student2= Student.new("Nguyễn Hoàng","Đen",55,170,21,"0399001748","khuyenphamno2@gmail.com","VietNam")
  student3= Student.new("Thu Hà","Đen",42,155,21,"0396603842","khuyenphamno3@gmail.com","VietNam")
  student1.toan=6
  student1.ly=6
  student1.hoa=6 
  student1.sinh=6
  student2.toan=8 
  student2.ly=8 
  student2.hoa=8 
  student2.sinh=8
  student3.toan=7 
  student3.ly=7 
  student3.hoa=7 
  student3.sinh=7
danhsachsv=[student1,student2,student3]
#Sắp xếp sinh viên theo chiều giảm dần của điểm trung bình.
sorted_sv=[]
sorted_sv = danhsachsv.sort_by{|student| -student.diemtrungbinh }
#in danh sách
puts "Danh sách chưa sắp xếp: "
for i in (0..danhsachsv.size-1) do  
  puts "Họ tên: #{danhsachsv[i].name}, Điểm trung bình: #{danhsachsv[i].diemtrungbinh}"
end
puts "Danh sách đã sắp xếp: "
for i in (0..so rted_sv.size-1) do
  puts "Họ tên: #{sorted_sv[i].name}, Điểm trung bình: #{sorted_sv[i].diemtrungbinh}"
end
