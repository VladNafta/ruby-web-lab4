# Завдання 4. Найбільший паліндром із добутку двох чисел

def palindrome?(number)
  number.to_s == number.to_s.reverse
end

def largest_palindrome(digits)
  low = 10**(digits - 1)
  high = 10**digits - 1
  best = [0, 0, 0] # [паліндром, множник a, множник b]
  high.downto(low) do |a|
    break if a * high <= best[0] # далі добутки лише менші
    a.downto(low) do |b|
      product = a * b
      break if product <= best[0]
      best = [product, a, b] if palindrome?(product)
    end
  end
  best
end

p2, a2, b2 = largest_palindrome(2)
puts "Перевірка (двозначні): #{p2} = #{a2} x #{b2}"
p3, a3, b3 = largest_palindrome(3)
puts "Найбільший паліндром (тризначні): #{p3} = #{a3} x #{b3}"
