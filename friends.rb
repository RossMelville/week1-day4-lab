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
      end
  end
  return false
end

# def fav_food(person, food)
#   return person[:favourites][:things_to_eat].include?("spaghetti")
# end

def add_new_friend(person, friend)
  person[:friends].push(friend)
  return person[:friends]
end

def rem_friend(person, friend)
  person[:friends].delete(friend)
  return person[:friends]
end

def total_money(people)
  count = 0
  for person in people do
    count = count += person[:monies]
  end
  return count
end