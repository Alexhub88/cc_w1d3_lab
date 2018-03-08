# Homework

## A. Given the following data structure:

#{}```ruby
stops = [ "Croy", "Cumbernauld", "Falkirk High", "Linlithgow", "Livingston", "Haymarket" ]
#{}```

#1. Add `"Edinburgh Waverley"` to the end of the array

stops.push("Edinburgh Waverley")
#p stops

# 2. Add `"Glasgow Queen St"` to the start of the array

stops.unshift("Glasgow Queen St")
#p stops

# 3. Add `"Polmont"` at the appropriate point (between `"Falkirk High"` and `"Linlithgow"`)

stops.insert(3, "Polmont")
#p stops

# 4. Work out the index position of `"Linlithgow"`

stops.index("Linlithgow")

# 5. Remove `"Livingston"` from the array using its name

stops.delete("Livingston")
#p stops

# 6. Delete `"Cumbernauld"` from the array by index

stops.delete_at(1)
#p stops


# 7. How many stops there are in the array?
 stops.length

# 8. How many ways can we return `"Falkirk High"` from the array?

I counted six, can't be sure there aren't other ways:

stops[2]
stops[-4]
stops.at(2)
stops.fetch(2)
stops.slice(2)
stops.select {|value| value == "Falkirk High"}[0]

# 9. Reverse the positions of the stops in the array

stops.reverse

# 10. Print out all the stops using a for loop

for value in stops
  p value
end

# ## B. Given the following data structure:

#{}```ruby
  users = {
    "Jonathan" => {
      :twitter => "jonnyt",
      :favourite_numbers => [12, 42, 75, 12, 5],
      :home_town => "Stirling",
      :pets => {
        "fluffy" => :cat,
        "fido" => :dog,
        "spike" => :dog
      }
    },
    "Erik" => {
      :twitter => "eriksf",
      :favourite_numbers => [8, 12, 24],
      :home_town => "Linlithgow",
      :pets => {
        "nemo" => :fish,
        "kevin" => :fish,
        "spike" => :dog,
        "rupert" => :parrot
      }
    },
    "Avril" => {
      :twitter => "bridgpally",
      :favourite_numbers => [12, 14, 85, 88],
      :home_town => "Dunbar",
      :pets => {
        "colin" => :snake
      }
    },
  }
# #{}```

# 1. Get Jonathan's Twitter handle (i.e. the string `"jonnyt"`)

users["Jonathan"][:twitter]

# 2. Get Erik's hometown

users["Erik"][:home_town]

# 3. Get the array of Erik's favourite numbers

users["Erik"][:favourite_numbers]

# 4. Get the type of Avril's pet Colin

users["Avril"][:pets]["colin"]

# 5. Get the smallest of Erik's favourite numbers

users["Erik"][:favourite_numbers].min()


# 6. Add the number `7` to Erik's favourite numbers

#to add to the end of the array
users["Erik"][:favourite_numbers].push(7) 

#to add to the start of the array
users["Erik"][:favourite_numbers].unshift(7) to add to start

# 7. Change Erik's hometown to Edinburgh

users["Erik"][:home_town].replace("Edinburgh")

# 8. Add a pet dog to Erik called "Fluffy"

users["Erik"][:pets].merge("Fluffy" => :dog)

# 9. Add yourself to the users hash

  users.merge( "Alex" => {
      :twitter => "alexscott88",
      :favourite_numbers => [6, 9, 8],
      :home_town => "Livingston",
      :pets => {
        "womble" => :cat,
        "hobo" => :dog
      }
    })

# ## C. Given the following data structure:

# ```ruby
united_kingdom = [
  {
    name: "Scotland",
    population: 5295000,
    capital: "Edinburgh"
  }, {
    name: "Wales",
    population: 3063000,
    capital: "Swansea"
  }, {
    name: "England",
    population: 53010000,
    capital: "London"
  }
]
# ```

# 1. Change the capital of Wales from `"Swansea"` to `"Cardiff"`.

united_kingdom[1][:capital].replace("Cardiff")

# 2. Create a Hash for Northern Ireland and add it to the `united_kingdom` array (The capital is Belfast, and the population is 1,811,000).


ni_hash = { :name => "Northern Ireland",
    :population => 1811000,
    :capital => "Belfast"
}


united_kingdom.push(ni_hash)

# 3. Use a loop to print the names of all the countries in the UK.

uk_and_ni = united_kingdom.push(ni_hash)

for hash in uk_and_ni
  p hash[:name]
end

# 4. Use a loop to find the total population of the UK.

uk_and_ni = united_kingdom.push(ni_hash)

total = 0

for hash in uk_and_ni
  total += hash[:population]
end

p total
