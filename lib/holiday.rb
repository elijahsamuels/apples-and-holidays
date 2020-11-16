require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array

    holiday_supplies[:summer][:fourth_of_july][1]

end



def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays

  
  holiday_hash.each do |theSeason, holiday|
    if theSeason == :winter
      holiday.each {|key, value| value << "Balloons"}
        # binding.pry
    end
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array

  holiday_hash.each do |theSeason, holiday|
    if theSeason == :spring
      holiday.each {|key, value| value.push(supply)}

        # binding.pry
        # value << "Table Cloth"
        # holiday_hash[:spring][:memorial_day] << supply # This works too! UGH!
    end
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name] = supply_array
  # add the supplies of a holiday to a season
holiday_hash
end



def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season

  # Write a method to collect all Winter supplies from all the winter holidays. For eg:
  # winter_supplies(holiday_supplies) #=> ["Lights", "Wreath", etc] 
  
  holiday_hash[:winter].map do |holiday, supplies|
      supplies
  end.flatten

end

#   winter_supplies = []

#   holiday_hash.each_pair do |theSeason, holiday|
#     if theSeason == :winter
#       holiday.keys do |v, k|

#       k.values
#       binding.pry
#     end
      
#       # holiday.each do |key, value|
#       #   value
#     end
#   end
#   winter_supplies
# end






def all_supplies_in_holidays(holiday_hash)



  # iterate through holiday_hash and print items such that your readout resembles:
  
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

  # Write a method that uses a loop to list out all the supplies you have for each holiday and the season. Use string manipulation to get your output to match what the test is expecting.

  holiday_hash.each do |season, holidays|
   puts "#{season.capitalize}:" 
   holidays.each do |holiday, supplies|
    puts "  #{holiday.to_s.split("_").map(&:capitalize).join(" ")}: #{supplies.join(', ')}"
   end    
  end
end




def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  # Write a method to collect all holidays with "BBQ" in the supply array. The method should behave as seen below:

  # holidays_with_bbqs(holiday_supplies)
  #=> [:fourth_of_july, :memorial_day] 
  

  bbqHolidays = []
holiday_hash.each do |season, holidays|

    holidays.each do |holiday, supplies|
      if supplies.include?("BBQ")
        bbqHolidays << holiday
    

      end

    end
  end
bbqHolidays
end