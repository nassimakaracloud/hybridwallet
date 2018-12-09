class CurrencyObserver < ActiveRecord::Observer
require 'my_logger'
  def after_save(record)
    my_logger = MyLogger.instance
    my_logger.logInformation "Currencies Table has changed: #{record.symbol}"
  end
              
end