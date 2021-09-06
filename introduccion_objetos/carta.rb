kinds = ["C", "D", "E", "T"]
class Cards
    attr_accessor :number, :kind, :kinds

    def initialize(number, kind, kinds)
        
        if (number >= 1 && number <= 13) && kinds.include?(kind)
            
            @number = number
            @kind = kind
        else
            raise "nada que ver"
        end
    end
    def to_s
        "Numero #{self.number}, Pinta #{self.kind}"

    end
end

results = []
5.times { |i| results << Cards.new(rand(1..13), kinds.sample, kinds) }
puts results