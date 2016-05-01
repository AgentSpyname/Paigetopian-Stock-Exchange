class Transfer < ActiveRecord::Base
    belongs_to :user
    before_update do
        if self.status == "transfer"
            newamount = self.amount + self.user.account_balance_out
            removeamount = self.user.account_balance - self.amount
            self.user.update_attributes(:account_balance_out => newamount, :account_balance => removeamount)
            self.status = "Complete"
        end
        
    end
end
