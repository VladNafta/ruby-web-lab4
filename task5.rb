# Завдання 5. Сума цифр натурального числа з командного рядка
# Запуск: ruby task5.rb 12345

input = ARGV[0]
if input.nil? or input !~ /\A\d+\z/
  puts "Вкажіть натуральне число: ruby task5.rb <число>"
  exit 1
end

digits = input.chars.map { |c| c.to_i }
puts "Число: #{input}"
puts "Цифри: #{digits.join(' + ')}"
puts "Сума цифр: #{digits.sum}"
