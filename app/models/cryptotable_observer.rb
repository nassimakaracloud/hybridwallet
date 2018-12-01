class CryptotableObserver < ActiveRecord::Observer

  def after_save(record)
    my_logger = MyLogger.instance
    my_logger.logInformation "Crytable has changed: #{record.symbol}"
  end
              
end
