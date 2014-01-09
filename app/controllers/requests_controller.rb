class RequestsController < ApplicationController

before_action(:authorize_user)

  def authorize_user
    unless user_signed_in?
      redirect_to new_user_session_path, notice: "You must be signed in"
    end
  end

  def index
    @requests = Request.all
  end

  def show
    @request = Request.find_by(id: params[:id])
  end

  def new
  end

  def create
    @request = Request.new
    @request.request_number = params[:request_number]
    @request.user_number = params[:user_number]
    @request.created_date = params[:created_date]
    @request.needed_date = params[:needed_date]
    @request.time_needed = params[:time_needed]
    @request.delivery_city = params[:delivery_city]
    @request.delivery_address = params[:delivery_address]
    @request.delivery_instructions = params[:delivery_instructions]
    @request.request_text = params[:request_text]
    @request.underwear_type = params[:underwear_type]
    @request.underwear_size = params[:underwear_size]
    @request.underwear_color = params[:underwear_color]
    @request.underwear_quantity = params[:underwear_quantity]
    @request.undershirt_type = params[:undershirt_type]
    @request.undershirt_size = params[:undershirt_size]
    @request.undershirt_color = params[:undershirt_color]
    @request.undershirt_quantity = params[:undershirt_quantity]
    @request.sock_type = params[:sock_type]
    @request.sock_size = params[:sock_size]
    @request.sock_color = params[:sock_color]
    @request.sock_quantity = params[:sock_quantity]

    if @request.save
      redirect_to requests_url, notice: "Request created successfully."
    else
      render 'new'
    end
  end

  def edit
    @request = Request.find_by(id: params[:id])
  end

  def update
    @request = Request.find_by(id: params[:id])
    @request.request_number = params[:request_number]
    @request.user_number = params[:user_number]
    @request.created_date = params[:created_date]
    @request.needed_date = params[:needed_date]
    @request.time_needed = params[:time_needed]
    @request.delivery_city = params[:delivery_city]
    @request.delivery_address = params[:delivery_address]
    @request.delivery_instructions = params[:delivery_instructions]
    @request.request_text = params[:request_text]
    @request.underwear_type = params[:underwear_type]
    @request.underwear_size = params[:underwear_size]
    @request.underwear_color = params[:underwear_color]
    @request.underwear_quantity = params[:underwear_quantity]
    @request.undershirt_type = params[:undershirt_type]
    @request.undershirt_size = params[:undershirt_size]
    @request.undershirt_color = params[:undershirt_color]
    @request.undershirt_quantity = params[:undershirt_quantity]
    @request.sock_type = params[:sock_type]
    @request.sock_size = params[:sock_size]
    @request.sock_color = params[:sock_color]
    @request.sock_quantity = params[:sock_quantity]

    if @request.save
      redirect_to requests_url, notice: "Request updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @request = Request.find_by(id: params[:id])
    @request.destroy

    redirect_to requests_url, notice: "Request deleted."
  end
end
