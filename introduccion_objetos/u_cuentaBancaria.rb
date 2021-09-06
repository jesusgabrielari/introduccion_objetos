class User
    attr_reader :account, :name
    def initialize(name, account)
        # arreglo con al menos 1 cuenta bancaria.
        @name = name
        @account = account
    end


    def balance(values)
        sum = 0
        values.size.times { |x|  sum = (sum + values[x].score)}
        print "Esta es la suma de saldos #{sum} del usario #{self.name}"
        
    end

    def to_s
        "Nombre: #{self.name}, Datos cuentas: #{self.account}"
    end

    
end


class BankAccount
    attr_reader :scores, :numberAccount, :bank
    attr_writer :scores

    def initialize(bank, numberAccount, scores = 0)
        @bank = bank
        @numberAccount = numberAccount
        @scores = scores
    end


    def transfer(amount, numberAccount)
        #Este método restará del saldo actual el monto
        #aumentará el saldo de la otra cuenta en el mismo monto.
        primaryAccount= numberAccount.score - amount
        puts "Saldo actual después de transferir #{primaryAccount}"
        secundaryAccount = self.score + amount
        
        puts "Saldo de la cuenta enviada #{secundaryAccount}"
        print "Transferencia realizada"
    end
    
    def score()
        #Metodo utilizado para tomar solo el valor de scores de la clase
        scores
    end

    def to_s
        "nuemro: #{self.numberAccount}, Banco #{self.bank}, dinero:  #{self.scores}"
    end
end

account1= BankAccount.new("Chile", "12345676", 5000)
account2= BankAccount.new("Estado", "35345676", 5000)
user1 = User.new("Fulano",[account1, account2])

puts "Cuentas creadas de #{user1.name} \n#{account1} y #{account2}"
puts user1.balance(user1.account)
puts account1.transfer(5000, account2)