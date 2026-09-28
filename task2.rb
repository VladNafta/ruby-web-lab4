# Завдання 2. Найбільший простий множник числа

def largest_prime_factor(n)
  factor = 2
  # ділимо n на найменші множники, поки factor * factor не перевищить n
  while factor * factor <= n
    if n % factor == 0
      n /= factor
    else
      factor += 1
    end
  end
  n # те, що лишилось, і є найбільшим простим множником
end

puts "Перевірка: 13195 -> #{largest_prime_factor(13195)}"
puts "Найбільший простий множник 600851475143: #{largest_prime_factor(600851475143)}"
