class Api::V1::YearsController < ApplicationController
  before_action :set_year

  def show
    render json: @year
  end

  private
    def set_year
      @year = Name.where(year: params[:year])
    end

end
