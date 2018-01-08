require 'csv'
# require 'pry'
# require_relative '../../app/models/name.rb'
# def load_data
  # data = File.read('lib/seeds/NationalNames2000.csv')
  # # binding.pry
  # # data = File.read(Rails.root.join('lib', 'seeds', 'test.csv'))
  # csv = CSV.parse(data, :headers => true)
  # csv.each do |row|
  #   Name.create!(row.to_hash)
  #   puts "#{row} #{Name.count}"
  # end

names = []
time = Time.now
CSV.foreach('lib/seeds/NationalNames2000.csv', headers: true) do |row|
  names << Name.new(row.to_h)
end
Name.import(names)
puts "Imported #{Name.count} in #{(Time.now - time).round(2)}"

# end
#
# load_data
