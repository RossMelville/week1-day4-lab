def get_name(person)
  return person[:name]
end

def get_fav_tv(person)
  return person[:favourites][:tv_show]
end

def fav_food(person, food)
  for item in person[:favourites][:things_to_eat] do
      if food == item
        return true
      else
        return false
      end
  end
end

# def fav_food(person, food)
#   return person[:favourites][:things_to_eat].include?("spaghetti")
# end

def add_new_friend(person, friend)
  person[:friends].push(friend)
  return person[:friends]
end