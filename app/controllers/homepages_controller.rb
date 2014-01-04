class HomepagesController < ApplicationController

  def index
    @homepages = Homepage.all
  end

  def show
    @homepage = Homepage.find_by(id: params[:id])
  end

  def new
  end

  def create
    @homepage = Homepage.new

    if @homepage.save
      redirect_to homepages_url, notice: "Homepage created successfully."
    else
      render 'new'
    end
  end

  def edit
    @homepage = Homepage.find_by(id: params[:id])
  end

  def update
    @homepage = Homepage.find_by(id: params[:id])

    if @homepage.save
      redirect_to homepages_url, notice: "Homepage updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @homepage = Homepage.find_by(id: params[:id])
    @homepage.destroy

    redirect_to homepages_url, notice: "Homepage deleted."
  end
end
