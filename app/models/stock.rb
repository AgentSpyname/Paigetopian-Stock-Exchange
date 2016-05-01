class Stock < ActiveRecord::Base
    has_many :sales
    has_many :purchases

    before_create do
        self.shares_left = self.total_shares
    end
end
