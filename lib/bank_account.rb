class BankAccount

    attr_reader :name
    attr_accessor :balance, :status

    def initialize(name)
        @balance = 1000
        @name = name
        @status = "open"
    end

    def deposit(deposit)
        self.balance += deposit
    end

    def display_balance
        "Your balance is $#{self.balance}."
    end

    def valid?
        self.balance > 0 && self.status == "open"
    end

    def close_account
        @status = "closed"
    end

end
