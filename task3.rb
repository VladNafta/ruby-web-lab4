# Завдання 3. Сума чисел, кратних 3 або 5

def sum_of_multiples(limit)
  sum = 0
  for i in (1...limit) do
    sum += i if i % 3 == 0 or i % 5 == 0
  end
  sum
end

puts "Перевірка: менше 10 -> #{sum_of_multiples(10)}"
puts "Сума чисел менше 1000, кратних 3 або 5: #{sum_of_multiples(1000)}"
