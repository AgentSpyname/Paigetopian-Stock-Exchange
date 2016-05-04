class Purchase < ActiveRecord::Base
    belongs_to :stock
    belongs_to :user
    
before_save do
    self.profit = self.stock.value * self.shares
  if self.user.account_balance < self.profit
      self.user_id = 0
      self.stock_id = 0
end

if self.stock.shares_left < self.shares
    self.user_id = 0
end


if self.user.account_balance > self.profit and self.shares < self.stock.shares_left
    b = self.user.account_balance - self.profit
    self.user.update_attributes(:account_balance => b)
    sharesleft = self.stock.shares_left - self.shares
    self.stock.update_attributes(:shares_left => sharesleft)
end
end

end
