

# def nyc_pigeon_organizer(data)
  
#   # the hash that will ultimately get returned
#   pigeon_list = {}
 
# data.each do |att, spec_att| # nadav help

#   data[att].each do |spec_att, names_array| # nadav help (big time)

#     names_array.each do |name| # wouldn't have gotten this one without the big guy, either...actually, I might've
#       if !pigeon_list[name] # if there isn't already a name key, 
#         pigeon_list[name] = {} # populate the hash with the given name key (now passing first 3 specs: 7 keys, names for keys, etc)
#       else 
#         pigeon_list[name][att] = [spec_att] # only passes "lives" specs, not "color" or "gender"
#       end
      
#   end
# end

# return pigeon_list
# end


def nyc_pigeon_organizer(data)
  
  pigeon_hash = {}
  
  
  data.each do |k, v| 
    
    
    
    data[k].each do |att, names| 
      names.each do |name|
        p "k #{k} v #{v} att #{att} name #{name} pg #{pigeon_hash}"
        puts "\n\n"
        if pigeon_hash[name]
          if pigeon_hash[name][k]
            pigeon_hash[name][k] << att.to_s
          else
            pigeon_hash[name][k] = [att.to_s]
          end
          
        else
          pigeon_hash[name] = {}
          pigeon_hash[name][k] = [att.to_s]
          
        end
      end
    end
  end
  
  pigeon_hash
end
