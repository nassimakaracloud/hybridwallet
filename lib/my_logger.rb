require 'singleton'
class MyLogger
  include Singleton
  
  def logInformation(information)
    File.open("lib/mylog.txt", 'a') do |file|
      file.write "#{information}\n"
      file.close
    end

  end
end