class Card
    attr_accessor :number, :kind
    def initialize(number, kind)
        get_number(number)
        get_kind(kind)
    end

    def get_number(number)
        
        if number <= 13 && number >=1
            @number = number
        else
            raise "solo numeros de 1 a 13"
        end
    end

    def get_kind(kind)
        if %w[C D E T].include?(kind)
            @kind = kind
        else
            raise " solo pinta C, D, E y T"
        end
    end

    def to_s
        "Numero: #{self.number}, Pinta #{self.kind}"
    end
end


class Deck
    attr_accessor :cards
    def initialize
        @cards = []
        kinds = ["C", "D", "T", "E"]
        
        kinds.each do |kind|
            13.times do |num|
                num+=1
                card = Card.new(num, kind)
                @cards << card
                # puts card
            end
        end
    end

    def show
        puts cards

    end

    def shuffles
        @cards.shuffle!
    end
    def draw
        @cards.pop(1)
    end
    def deal
        mano = []
        puts "tu mano es"
        5.times do
            mano.push(draw)
        end
        return mano
    end
end

baraja = Deck.new

#muestra las cartas
puts baraja.show
# baraja las cartas
puts baraja.shuffles
#roba una carta
puts baraja.draw
#reparte 5 cartas
puts baraja.deal

