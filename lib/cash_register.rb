
class CashRegister

    attr_reader :discount, :items
    attr_accessor :total

    def initialize(discount = 0)
        @discount = discount
        @total = 0
        @items = []
        @last_item = 0
    end

    def add_item (title, price, quantity = 1)
        self.total += price*quantity
        @last_item = price*quantity
        quantity.times do @items << title
        end
    end

    def apply_discount
        if @discount == 0
            return "There is no discount to apply."
        else
            self.total -= self.total*self.discount/100
            "After the discount, the total comes to $#{@total}."
        end
    end

    def void_last_transaction
        @total -= @last_item
        @last_item = 0
    end
end