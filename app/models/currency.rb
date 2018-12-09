class Currency < ApplicationRecord
  require 'my_logger'
    belongs_to :user
    
    def total_amount
      if unit_price.present? && quantity.present?
        puts quantity * unit_price
        quantity * unit_price
      end
    end
end
