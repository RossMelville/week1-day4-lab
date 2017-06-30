require( 'minitest/autorun' )
require_relative( '../friends' )

class TestFriends < MiniTest::Test

  def setup

    @person1 = {
      name: "Rick",
      age: 12,
      monies: 1,
      friends: ["Jay","Keith","Dave", "Val"],
      favourites: {
        tv_show: "Friends",
        things_to_eat: ["charcuterie"]
      } 
    }
    
    @person2 = {
      name: "Jay",
      age: 15,
      monies: 2,
      friends: ["Keith"],
      favourites: {
        tv_show: "Baywatch",
        things_to_eat: ["soup","bread"]
      } 
    }

    @person3 = {
      name: "Val",
      age: 18,
      monies: 20,
      friends: ["Rick", "Jay"],
      favourites: {
        tv_show: "Pokemon",
        things_to_eat: ["ratatouille", "stew"]
      } 
    }

    @person4 = {
      name: "Keith",
      age: 18,
      monies: 20,
      friends: ["Rick", "Jay", "Dave"],
      favourites: {
        tv_show: "Pokemon",
        things_to_eat: ["spaghetti"]
      } 
    }

    @person5 = {
      name: "Dave",
      age: 20,
      monies: 100,
      friends: [],
      favourites: {
        tv_show: "Scrubs",
        things_to_eat: ["spinach"]
      } 
    }

    @people = [@person1, @person2, @person3, @person4, @person5]

  end

  def test_getting_name
    result = get_name(@person5)
    assert_equal("Dave", result)
  end

  # 1. For a given person, return their favourite tv show

  def test_get_fav_tv
    result = get_fav_tv(@person3)
    assert_equal("Pokemon", result)
  end

  # 2. For a given person, check if they like a particular food

  def test_fav_food
    result = fav_food(@person4, "spaghetti")
    assert_equal(true, result)
  end

  # 3. Allow a new friend to be added to a given person
  def test_add_new_friend
    result = add_new_friend(@person4, "Ross")
    assert_equal(["Rick", "Jay", "Dave", "Ross"], result)
  end

  # 4. Allow a friend to be removed from a given person
  def test_rem_friend
    result = rem_friend(@person3, "Jay")
    assert_equal(["Rick"], result)
  end

  # 5. Find the total of everyone's money
  def test_total_money
    result = total_money(@people)
    assert_equal(143, result)
  end

  # 6. For two given people, allow the first person to loan a given value of money to the other

  def test_loaned_money
    result = loan_money(@person3, @person4, 10)
    assert_equal("Transferred", result)
  end

  # 7. Find the set of everyone's favourite food joined together


  # 8. Find people with no friends


  # VERY tough
  # Find the people who have the same favourite tv show

end
