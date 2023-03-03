def stock_picker(stock_price_array)
  def get_buy_price(array)
    i = 0
    current_price = array[i]
    buy_price_checker = current_price
    until current_price > buy_price_checker
      buy_price_checker = array[i]
      i += 1
      current_price = array[i]
    end
    return buy_price_checker
  end

  buy_price =  get_buy_price(stock_price_array)
  p buy_price

end

stock_picker([17,3,6,9,15,8,6,1,10])