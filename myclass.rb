class MyClass
    def initialize
        @my_hash = {}
    end
    def render
        puts @my_hash
    end
    def add(key,value)
        @my_hash[key] = value
    end
    def my_array
        return @my_hash.values
    end
end
class MyClassB < MyClass
        attr_accessor :my_hash
        def add(key,value)
        if value.is_a?(Integer)
            super(key,value) #to call in the method above
            return true
        end
            return false
        end
        def my_array_2
            a=self.my_array #self lets you call the class itself
            a.map!{ |entry| entry*3 } #look up map method a.map! {|x| x + "!" }
            return a
        end
end
