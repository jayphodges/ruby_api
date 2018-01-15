class Name < ApplicationRecord

  def self.chart_return(name)
    male = Name.where(name: name, gender: "M").order('year').pluck(:year, :count)
    female = Name.where(name: name, gender: "F").order('year').pluck(:year, :count)
    binding.pry
    combined = {male: format(male), female: format(female)}
  end

  def format(data)
    binding.pry
    hash = {2000 => 0, 2001 => 0, 2002 => 0, 2003 => 0,
      2004 => 0, 2005 => 0, 2006 => 0, 2007 => 0,
      2007 => 0, 2008 => 0, 2009 => 0, 2010 => 0,
      2011 => 0, 2012 => 0, 2013 => 0, 2014 => 0}
      binding.pry
    data.each do |value|
      binding.pry
      hash[value[0]] = value[1]
    end
    return hash.values
  end

end
