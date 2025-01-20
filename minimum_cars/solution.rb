require 'pry'

# This one took me some time to think through. At first, I thought maybe I should sort the array of cars so that the first car in the list has the greatest capacity.
# Then I considered moving people from previous groups into each car and checking if the car is full, before adding another person to that car.
# Afterward, I would move to the next car and the next group. I thought this way because there were two arrays, so it seemed like I needed to iterate over both arrays
# simultaneously. These solution ideas started getting too complicated.
# 
# I reread the description and realized the number of people is guaranteed to be less than or equal to the total capacity of the cars (since they arrived
# in those cars at the parking lot, if I remember correctly). This made the problem simpler. I realized I could loop over the cars and add their seat counts to a
# `seats_used` total, but check at each step if `seats_used` matches or exceeds the total number of people. If it does, it means the current number of cars used is 
# sufficient, so I can break out of the loop and return the `cars_used` variable.

def solutionOne(p, s)
  biggest_cars = s.sort.reverse
  total_people = p.sum
  seats_used = 0
  cars_used = 0
  biggest_cars.each do |capacity|
    seats_used += capacity
    cars_used += 1
    if seats_used >= total_people
      break;
    end
  end
  cars_used
end

# After writing the first solution, I thought about it again and realized I could also deduct each car's capacity from the `total_people` count.
# Once `total_people` is less than or equal to zero, it would mean all the people have been seated. This approach gives the same result.

def solutionTwo(p, s)
  biggest_cars = s.sort.reverse
  total_people = p.sum
  seats_used = 0
  cars_used = 0
  biggest_cars.each do |capacity|
    total_people -= capacity
    cars_used += 1
    if total_people <= 0
      break;
    end
  end
  cars_used
end

puts solutionOne([1,4,1], [1,5,1])
puts solutionOne([4,4,2,4], [5,5,2,5])
puts solutionOne([2,3,4,2], [2,5,7,2])