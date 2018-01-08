class Api::V1::NamesController < ApplicationController
  before_action :set_name

  def show
    render json: @combined
  end

  private
    def set_name
      @name = Name.where(name: params[:name].capitalize, gender: 'M')
      .order('year').pluck(:year, :count)
      @fem = Name.where(name: params[:name].capitalize, gender: 'F')
      .order('year').pluck(:year, :count)
      @combined = {male: format(@name), female: format(@fem)}
    end

    def format(data)
      hash = {2000 => 0, 2001 => 0, 2002 => 0, 2003 => 0,
        2004 => 0, 2005 => 0, 2006 => 0, 2007 => 0,
        2007 => 0, 2008 => 0, 2009 => 0, 2010 => 0,
        2011 => 0, 2012 => 0, 2013 => 0, 2014 => 0}
      data.each do |something|
        hash[something[0]] = something[1]
      end
      return hash.values
    end

end
