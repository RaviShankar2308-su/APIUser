class ApiCrudsController < ApplicationController
  def index
    @api_data = ApiCrud.all
    render json: @api_data
  end

  def show
    @api_data = ApiCrud.find(params[:id])
    render json: @api_data
  end

  def create
    @api_data = ApiCrud.create(
      menu_name: params[:menu_name],
      restaurant_name: params[:restaurant_name],
      menu_description: params[:menu_description]
  )
  render json: @api_data
  end

  def update
    @api_data = ApiCrud.find(params[:id])
    @api_data.update(
        menu_name: params[:menu_name],
        restaurant_name: params[:restaurant_name],
        menu_description: params[:menu_description]
    )
    render json: @api_data
  end

  def destroy
    @api_data= ApiCrud.find(params[:id])
    @api_data.destroy
    render json: @api_data
  end


end
