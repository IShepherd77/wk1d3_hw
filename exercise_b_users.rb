# users = {
#   "Jonathan" => {
#     :twitter => "jonnyt",
#     :lottery_numbers => [6, 12, 49, 33, 45, 20],
#     :home_town => "Stirling",
#     :pets => [
#     {
#       :name => "fluffy",
#       :species => "cat"
#     },
#     {
#       :name => "fido",
#       :species => "dog"
#     },
#     {
#       :name => "spike",
#       :species => "dog"
#     }
#   ]
#   },
#   "Erik" => {
#     :twitter => "eriksf",
#     :lottery_numbers => [18, 34, 8, 11, 24],
#     :home_town => "Linlithgow",
#     :pets => [
#     {
#       :name => "nemo",
#       :species => "fish"
#     },
#     {
#       :name => "kevin",
#       :species => "fish"
#     },
#     {
#       :name => "spike",
#       :species => "dog"
#     },
#     {
#       :name => "rupert",
#       :species => "parrot"
#     }
#   ]
#   },
#   "Avril" => {
#     :twitter => "bridgpally",
#     :lottery_numbers => [12, 14, 33, 38, 9, 25],
#     :home_town => "Dunbar",
#     :pets => [
#       {
#         :name => "monty",
#         :species => "snake"
#       }
#     ]
#   }
# }
#
# # 1. Get Jonathan's Twitter handle (i.e. the string `"jonnyt"`)
# p users["Jonathan"][:twitter]
# # 2. Get Erik's hometown
# p users["Erik"][:home_town]
# # 3. Get the array of Erik's lottery numbers
# p users["Erik"][:lottery_numbers]
# # 4. Get the type of Avril's pet Monty
# p users["Avril"][:pets][0][:species]
# # 5. Get the smallest of Erik's lottery numbers
# p users ["Erik"][:lottery_numbers].sort.first
# # 6. Return an array of Avril's lottery numbers that are even
#
#
#
# # 7. Erik is one lottery number short! Add the number `7` to be included in his lottery numbers
# p users["Erik"][:lottery_numbers]<<7
#
# # 8. Change Erik's hometown to Edinburgh
# p users["Erik"][:home_town].replace("Edinburgh")
# # 9. Add a pet dog to Erik called "Fluffy"
# p users["Erik"][:pets]<<({:name => "Fluffy", :species => "dog"})
# p users
#
#
# #10. Add another person to the users hash
# # ian = {"Ian" =>
# #   {twitter: "ian@twitter",
# #     lottery_numbers: [1,2,3,4,5,6],
# #     home_town: "Edinburgh",
# #     pets: {
# #       "Dave" => :cat,
# #       "Mickey" => :mouse}
# #       }
# #     }
# # users.merge(ian)
# # p users
#
# ian = {
#   "Ian" => {
#     :twitter => "ian@twitter",
#     :lottery_numbers => [1,2,3,4,5,6],
#     :hometown => "Edinburgh",
#     :pets => [
#       {
#         :name => "Dave",
#         :species => "dog"
#       }
#     ]
#   }
# }
#
# users.merge!(ian)
# p users


CORRECT ANSWERS

users = {
  "Jonathan" => {
    :twitter => "jonnyt",
    :lottery_numbers => [6, 12, 49, 33, 45, 20],
    :home_town => "Stirling",
    :pets => [
    {
      :name => "fluffy",
      :species => "cat"
    },
    {
      :name => "fido",
      :species => "dog"
    },
    {
      :name => "spike",
      :species => "dog"
    }
  ]
  },
  "Erik" => {
    :twitter => "eriksf",
    :lottery_numbers => [18, 34, 8, 11, 24],
    :home_town => "Linlithgow",
    :pets => [
    {
      :name => "nemo",
      :species => "fish"
    },
    {
      :name => "kevin",
      :species => "fish"
    },
    {
      :name => "spike",
      :species => "dog"
    },
    {
      :name => "rupert",
      :species => "parrot"
    }
  ]
  },
  "Avril" => {
    :twitter => "bridgpally",
    :lottery_numbers => [12, 14, 33, 38, 9, 25],
    :home_town => "Dunbar",
    :pets => [
      {
        :name => "monty",
        :species => "snake"
      }
    ]
  }
}

# 1. Get Jonathan's Twitter handle (i.e. the string `"jonnyt"`)
p users["Jonathan"][:twitter]
# 2. Get Erik's hometown
p users["Erik"][:home_town]
# 3. Get the array of Erik's lottery numbers
p users["Erik"][:lottery_numbers]
# 4. Get the type of Avril's pet Monty
p users["Avril"][:pets][0][:species]
# 5. Get the smallest of Erik's lottery numbers
p users ["Erik"][:lottery_numbers].sort.first
p users ["Erik"][:lottery_numbers].sort[0]
p users ["Erik"][:lottery_numbers].min

# 6. Return an array of Avril's lottery numbers that are even
lottery_numbers = users["Avril"][:lottery_numbers]
even_numbers = []

for number in lottery_numbers
  if number in lottery_numbers % 2 == 0
    even_numbers.push(number)
  end
end
p number


# 7. Erik is one lottery number short! Add the number `7` to be included in his lottery numbers
p users["Erik"][:lottery_numbers]<<7
p users["Erik"][:lottery_numbers].push 7
# 8. Change Erik's hometown to Edinburgh
p users["Erik"][:home_town].replace("Edinburgh")

# 9. Add a pet dog to Erik called "Fluffy"
p users["Erik"][:pets]<<({:name => "Fluffy", :species => "dog"})
p users

users["Erik"][:pets] << { name: "Fluffy"}, species: "dog"}




#10. Add another person to the users hash
# ian = {"Ian" =>
#   {twitter: "ian@twitter",
#     lottery_numbers: [1,2,3,4,5,6],
#     home_town: "Edinburgh",
#     pets: {
#       "Dave" => :cat,
#       "Mickey" => :mouse}
#       }
#     }
# users.merge(ian)
# p users

ian = {
  "Ian" => {
    :twitter => "ian@twitter",
    :lottery_numbers => [1,2,3,4,5,6],
    :hometown => "Edinburgh",
    :pets => [
      {
        :name => "Dave",
        :species => "dog"
      }
    ]
  }
}

users.merge!(ian)
p users



p users ["ian"] = {
    :twitter => "ian@twitter",
    :lottery_numbers => [1,2,3,4,5,6],
    :hometown => "Edinburgh",
    :pets => [
      {
        :name => "Dave",
        :species => "dog"
      }
    ]
  }
}
