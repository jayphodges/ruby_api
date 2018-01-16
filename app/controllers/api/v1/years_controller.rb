class Api::V1::YearsController < ApplicationController
  # before_action :set_year

  def show
    @year = params[:year]
    render json: Name.top_by_year(@year)
  end

  private
    def set_year
      @year = Name.where(year: params[:year])
    end

end
