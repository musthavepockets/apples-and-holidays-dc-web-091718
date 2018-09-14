require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
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
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each do |key, value|
      value << supply
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array

  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  
  holiday_hash.each do |season, day|
    season_strings = season.to_s.split
      season_strings.each do |s_finals| (s_finals.capitalize!).join)
    end
  binding.pry
  end
  
  #string_split = Proc.new {obj.to_s.split}
  #cap_join = Proc.new {obj.capitalize!.join}
  #holiday_hash.each do |key, value1, value2|
    #puts #{key.string_split(&cap_join)}: 
          #{value1.string_split(&cap_join)}:
            #{value2}
    
  
  #merge(other_hash){|key, oldval, newval| block} → new_hash
  #holiday_hash.merge(Hash.new){|season, value, value.string| do 
    #season.string:
  #end
  
  
  #string_and_split = Proc.new {key.to_s.split}
  #new_holiday_hash = Hash.new do |key, value|
    #key{string_and_split}
    
    
  #holiday_hash.each do |season, holiday|
    #season.to_s.capitalize!
    
    #holiday_strings = holiday.to_s.split
    #holiday_strings.capitalize!.join
    
    
    

end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  bbq_holiday = []
  holiday_hash.each do |season, holiday|
    holiday.each do |day, supplies|
      if (supplies).include?("BBQ") == true
        bbq_holiday << day
      end
    end
  end
  bbq_holiday
end







