class State < ApplicationRecord

  def self.chart_return(name, state)
    male = State.where(name: name, gender: "M", state: state).order('year').pluck(:year, :count)
    female = State.where(name: name, gender: "F", state: state).order('year').pluck(:year, :count)
    hash1 = {2000 => 0, 2001 => 0, 2002 => 0, 2003 => 0,
      2004 => 0, 2005 => 0, 2006 => 0, 2007 => 0, 2008 => 0, 2009 => 0,
      2010 => 0,2011 => 0, 2012 => 0, 2013 => 0, 2014 => 0}
    hash2 = {2000 => 0, 2001 => 0, 2002 => 0, 2003 => 0,
      2004 => 0, 2005 => 0, 2006 => 0, 2007 => 0, 2008 => 0, 2009 => 0,
      2010 => 0,2011 => 0, 2012 => 0, 2013 => 0, 2014 => 0}
    male.each do |value|
      hash1[value[0]] = value[1]
    end
    female.each do |value|
      hash2[value[0]] = value[1]
    end
    combined = {male: hash1, female: hash2}
  end

  def self.most_popular(name)
    State.where(name: name).order(count: :desc).limit(5).pluck(:count, :state, :year)
  end

end
