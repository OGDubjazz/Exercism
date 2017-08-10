class PhoneNumber
  def self.clean (phone_number)
    clean_number = phone_number.gsub(/\D/, "").gsub(/^1/,"")
      clean_number if(("2".."9") === clean_number[3] && clean_number.length == 10 )
  end
end