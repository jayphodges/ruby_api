class Api::V1::StatesController < ApplicationController
  before_action :set_params

  def show
    render json: State.most_popular(@name)
  end

  def index
    render json: State.chart_return(@name, @state)
  end

  private
    def set_params
      @name = params["name"]
      @state = params["state"]
    end

end
