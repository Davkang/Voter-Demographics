voters_info = [
  {first_name: 'Jon', last_name: 'Smith', age: 25, income: 50000, household_size: 1, gender: 'Male', education: 'College'},
  {first_name: 'Jane', last_name:'Davies' , age: 30, income: 60000, household_size: 3, gender: 'Female', education: 'College'},
  {first_name: 'Sam', last_name: 'Farelly', age: 32, income: 80000, household_size: 2, gender: 'Unspecified', education: 'High_school'},
  {first_name: 'Joan', last_name: 'Favreau', age: 35, income: 65000, household_size: 4, gender: 'Female', education: 'College'},
  {first_name: 'Sam', last_name: 'McNulty', age: 38, income: 63000, household_size: 3, gender: 'Male', education: 'College'},
  {first_name: 'Mark', last_name: 'Minahan', age: 48, income: 78000, household_size: 5, gender: 'Male', education: 'College'},
  {first_name: 'Susan', last_name: 'Umani', age: 45, income: 75000, household_size: 2, gender: 'Female', education: 'High_school'},
  {first_name: 'Bill', last_name: 'Perault', age: 24, income: 45000, household_size: 1, gender: 'Male', education: 'Did_not_complete_high_school'},
  {first_name: 'Doug', last_name: 'Stamper', age: 45, income: 75000, household_size: 1, gender: 'Male', education: 'College'},
  {first_name: 'Francis', last_name: 'Inderwood', age: 52, income: 100000, household_size: 2, gender: 'Male', education: 'College'}

]


# Average age
total_age = 0
avg_age = 0
voters_info.each do |input_age|
  total_age += input_age[:age]
end
avg_age = total_age.to_f / voters_info.length
puts "Average Age: #{avg_age}"




# Average income
total_income = 0
avg_income = 0
voters_info.each do |input_income|
  total_income += input_income[:income]
  avg_income = total_income.to_f / 10
end
puts "Average Income: #{avg_income}"



# Average household size
total_size = 0
avg_size = 0
voters_info.each do |input_size|
  total_size += input_size[:household_size]
  avg_size = total_size.to_f / 10
end
puts "Average Age: #{avg_size}"

# Female Percentage
# Male Percentage
# Unspecified Gender Percentage
female_count = 0
male_count = 0

voters_info.each do |input_gender|
  if input_gender[:gender] == 'Female'
    female_count += 1

  elsif input_gender[:gender] == 'Male'
    male_count += 1
  end
end

female_perc = female_count.to_f / voters_info.length * 100
male_perc = male_count.to_f / voters_info.length * 100
unspecified_perc = 100 - female_perc - male_perc

puts "Female %: #{female_perc}"
puts "Male %: #{male_perc}"
puts "Unspecified Gender %: #{unspecified_perc}"


# Percent of those who obtained a college education level
# Percent of those who obtained a high school education level
# Percent of those that did not finish high school

college_count = 0
hs_count = 0
below_hs_count = 0

voters_info.each do |input_education|
  if input_education[:education] == 'College'
    college_count += 1

  elsif input_education[:education] == 'High_school'
    hs_count += 1
  end
end

college_perc = college_count.to_f / voters_info.length * 100
hs_perc = hs_count.to_f / voters_info.length.to_f * 100
did_not_perc = 100 - college_perc - hs_perc

puts "College %: #{college_perc}"
puts "High School %: #{hs_perc}"
puts "Did Not Finish High School %: #{did_not_perc}"
