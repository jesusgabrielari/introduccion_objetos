class BankAccount
    attr_accessor :name_user
    attr_reader :vip, :number_account

    def initialize(name_user, number_account, vip = 0)
        if number_account.digits.count != 8
            raise RangeError, "Numero de digitos incorrectos"
        end

        if !(0..1).include? (vip)
            raise RangeError, "Numero Vip incorrecto"
        end

        @name_user = name_user
        @number_account = number_account
        @vip = vip

    end
    def vip_account
        "#{self.vip}-#{number_account}"
    end
end

bank = BankAccount.new("marcos", 12345676, 1)
puts bank.name_user
puts bank.vip_account