correct = false
while !correct
  puts("Hoe heet je?")
  naam = gets.chomp

  puts("Geslacht (m/v)")
  geslacht = gets.chomp

  puts ("Leeftijd?")
  leeftijd = gets.to_i

  if naam != "" and geslacht == "m" or geslacht == "v" and leeftijd > 10 and leeftijd < 100
    correct = true
  else
    puts("Je gegevens zijn incorrect. Probeer het opnieuw!")
  end
end

puts ("Dus je heet: " + naam + " " + naam)

if naam == "Ahsen"
  puts("Jij bent het dochtertje van Hakan")
else
  puts("Wat is #{naam} een mooie naam!")
end
