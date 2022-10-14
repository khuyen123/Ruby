class Phanso
    def initialize(tuso,mauso)
        @tuso=tuso
        @mauso=mauso
    end
    def +(object)
        if self.mauso==object.mauso
            return Phanso.new(self.tuso+object.tuso,self.mauso)
        else
            return Phanso.new(self.tuso*object.mauso+object.tuso*self.mauso,self.mauso*object.mauso)
        end
    end
    def -(object)
        if self.mauso==object.mauso
            return Phanso.new(self.tuso-object.tuso,self.mauso)
        else
            return Phanso.new(self.tuso*object.mauso-object.tuso*self.mauso,self.mauso*object.mauso)
        end
    end
    def *(object)
        return Phanso.new(self.tuso*object.tuso,self.mauso*object.mauso)
    end
    def /(object)
        return Phanso.new(self.tuso*object.mauso,self.mauso*object.tuso)
    end
    attr_accessor :tuso ,   :mauso
end
phanso1= Phanso.new(1,2)
phanso2= Phanso.new(4,7)
file= File.new("PhamKhuyen.txt","w+")
file.puts((phanso1+phanso2).inspect)
file.puts((phanso1-phanso2).inspect)
file.puts((phanso1*phanso2).inspect)
file.puts((phanso1/phanso2).inspect)
file.close