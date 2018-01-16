class Api::V1::NamesController < ApplicationController
  # before_action :set_name

  def show
    @name = params[:name].capitalize
    render json: Name.chart_return(@name)
  end

  def index
    @year = params[:year]
    render json: Name.top_by_year(@year)
  end

  private
    def set_name
      @name = params[:name].capitalize
    end

end
