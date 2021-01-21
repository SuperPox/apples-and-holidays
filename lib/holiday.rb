require 'pry'

def second_supply_for_fourth_of_july(holiday_hash) #1
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
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply) #2
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash[:winter][:christmas] << supply
  holiday_hash[:winter][:new_years] << supply
end


def add_supply_to_memorial_day(holiday_hash, supply) #3
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array) #4
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name] = supply_array
  return holiday_hash
end


def all_winter_holiday_supplies(holiday_hash) #5
  # return an array of all of the supplies that are used in the winter season
  temp = []
  holiday_hash.each do |season, holiday|
    if season == :winter
      holiday.each do |holiday, supplies| #[:christmas, ["Lights", "Wreath"]]
        temp << supplies
      end
    end
    return temp.flatten
  end
end

def all_supplies_in_holidays(holiday_hash) #6
  holiday_hash.each do |season, holiday|
    string1 = ''
    string2 = ''
    string3 = ''
    if season == :winter
      puts "#{season.capitalize}:"
      holiday.each do |holiday, supplies|
        if holiday == :christmas
          puts "  #{holiday.capitalize}: #{supplies.join(", ")}"
        else holiday == :new_years
          string1 = holiday
          string1 = "New Years"
          puts "  #{string1}: #{supplies.join(", ")}"
        end
      end
    elsif season == :summer
      puts "#{season.capitalize}:"
      holiday.each do |holiday, supplies|
        if holiday == :fourth_of_july
          string2 = holiday
          string2 = "Fourth Of July"
          puts "  #{string2}: #{supplies.join(", ")}"
        end
      end
    elsif season == :fall
      puts "#{season.capitalize}:"
      holiday.each do |holiday, supplies|
        puts "  #{holiday.capitalize}: #{supplies.join(", ")}"
      end
    else season == :spring
      puts "#{season.capitalize}:"
      holiday.each do |holiday, supplies|
        if holiday == :memorial_day
          string3 = holiday
          string3 = "Memorial Day"
          puts "  #{string3}: #{supplies.join(", ")}"
        end
      end
    end
  end
end

# def all_holidays_with_bbq(holiday_hash) #7
#   # "should return :fourth_of_july and :memorial_day" if it has BBQ
#   temp = []
#   holiday_hash.each do |season, holiday|
#     holiday.each do |holiday, supplies|
#       if supplies == "BBQ"
#         temp << holiday
#       end
#       return temp
#     end
#   end
# end

# def all_holidays_with_bbq(holiday_hash) #7
#   # "should return :fourth_of_july and :memorial_day" if it has BBQ
#   finder = ["BBQ"]
#   temp = []
#   int = 1
#   holiday_hash.each do |season, holiday|
#     if season == :winter || :spring || :summer || :fall
#       int = 2
#       holiday.each do |holiday, supplies|
#         if supplies == finder
#           int = 3
#           temp << holiday
#         end
#         return int
#       end
#     end
#   end
# end

# def all_holidays_with_bbq(holiday_hash) #7
#   # "should return :fourth_of_july and :memorial_day" if it has BBQ
#   temp = []
#   holiday_hash.each do |key, value|
#     if value == "BBQ"
#       temp << key
#     end
#   end
#   return int
# end

# def all_holidays_with_bbq(holiday_hash) #7
#   # "should return :fourth_of_july and :memorial_day" if it has BBQ
#   finder = ["BBQ"]
#   temp = []
#   temp2 = []
#   temp3 = []
#   int = 1
#   holiday_hash.each do |season, holiday|
#     if season == :spring 
#       holiday.each do |holiday, supplies|
#         if supplies == finder
#           int = 3
#           temp << holiday
#         end
#       end
#     else season == :summer 
#       holiday.each do |holiday, supplies|
#         supplies.each do |value|
#           if value == finder
#             int = 4
#             temp2 << value
#           end
#         end
#       end
#     end
#   end
#   return temp
# end

def all_holidays_with_bbq(holiday_hash)
  tmp = []
  finder = ["BBQ"]
  holiday_hash.each do |season, holiday| 
    holiday.each do |holiday, supplies|
      supplies.each do |item|
        if item == "BBQ"
          tmp << holiday
        end
      end
    end
  end
  return tmp
end

# supplies.each do |supplies, item|
#   if item == finder ###################
#     tmp << holiday