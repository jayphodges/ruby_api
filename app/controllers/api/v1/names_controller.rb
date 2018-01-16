class Api::V1::NamesController < ApplicationController
  before_action :set_name

  def show
    render json: Name.chart_return(@name)
  end

  def index
    render json: Name.top_years(@name)
  end

  private
    def set_name
      @name = params[:name].capitalize
    end

end
