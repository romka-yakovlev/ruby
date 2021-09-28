# [1,2,3,4,5].each { |item|
#     puts item
# }

prices = [1, 5, 8, 10, 15]

def total (prices)
    total = 0
    prices.each do |item|
        total += item
    end
    return total
end

def refund (prices)
    refund = 0
    prices.each { |item| refund -= item }
    return refund
end

def discount (prices)
    prices.each {
        |item|
        discount = item / 3.0
        puts format("The discount is: %.2f", discount)
    }
end

puts format("The toal is: %.2f", total(prices))
puts format("Refund: %.2f", refund(prices))
discount(prices)