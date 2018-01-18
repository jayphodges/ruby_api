require 'csv'
time1 = Time.now
CSV.foreach('lib/seeds/NationalNames2000.csv', headers: true) do |row|
  Name.create(row.to_h)
end
puts "Imported #{Name.count} in #{(Time.now - time1).round(2)}"
time2 = Time.now
CSV.foreach('lib/seeds/StateNames2000.csv', headers: true) do |row|
  State.create(row.to_h)
end
puts "Imported #{State.count} in #{(Time.now - time2).round(2)}"
puts "Imported #{Name.count} in #{(Time.now - time2).round(2)}"
