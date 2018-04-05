def Init_h_bissext (a_init)
  h_bissext = Hash.new
  for i in 1..80
    h_bissext[a_init + i - 1]="No test"
  end
  return h_bissext
end

def Bissextile? (a_test)
  if  a_test % 4 == 0
    return "Bissextile : 366 jours"
  else
    return "365 jours"
  end
end

print "Pour connatre les 20 annees bissextiles qui suivent une annee donnee, saisissez cette annee : "
An = Integer(gets.chomp)
h_bissextile = Init_h_bissext (An)
puts h_bissextile

h_bissextile.each do |a_iter, val|
  h_bissextile[a_iter] = Bissextile? (a_iter)
end
puts h_bissextile

puts "Voici les 20 annees bissextiles a venir :"
h_bissextile.each do |a_test, val|
  if val == "Bissextile : 366 jours"
    print " #{a_test}"
  end
end