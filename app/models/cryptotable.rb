class Cryptotable < ApplicationRecord
    belongs_to :user
    
    def total_amount
      if unit_price.present? && total_quantity.present?
        puts total_quantity * unit_price
        total_quantity * unit_price
      end
    end
end
