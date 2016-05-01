class Sale < ActiveRecord::Base
    belongs_to :stock
    belongs_to :user

   before_save do
       
    
        total_shares = 0
        total_shares_ded = 0
        
        Stock.find(self.stock_id).purchases.where(:user_id => self.user.id).each do |purchase|
            total_shares = total_shares + purchase.shares 
        end

  Stock.find(self.stock_id).sales.where(:user_id => self.user.id).each do |sale|
    total_shares_ded = total_shares_ded + sale.shares
  end

  total_shares = total_shares - total_shares_ded
  
  
  if self.shares > total_shares
      self.user_id = 0
      self.stock_id = 0
  end
  
    self.profit = self.stock.value * self.shares 
    b = self.user.account_balance + self.profit
    self.user.update_attributes(:account_balance => b)
    sharesleft = self.stock.shares_left + self.shares
    self.stock.update_attributes(:shares_left => sharesleft)
  

end

end
