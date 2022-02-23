def stock_picker(stocks)
  buyIdx = 0
  sellIdx = 0
  profit = 0
  stocks.each_with_index do |buy, i|
    stocks[0...stocks.length].each_with_index do |sell, j|
      if sell - buy > profit && j > i
        profit = sell - buy
        buyIdx = i
        sellIdx = j
      end
    end
  end
  [buyIdx, sellIdx]
end

p stock_picker([17, 16, 3, 9, 4, 16, 6, 1, 10])