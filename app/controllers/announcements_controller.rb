class AnnouncementsController < ApplicationController
  http_basic_authenticate_with name:"facturation@example.com", password:"password"

  def index
    @announcements = Announcement.all
  end
  def create
    @announcement = Announcement.new({
      title: params[:data][:attributes][:job_offer][:title],
      description: params[:data][:attributes][:job_offer][:description],
      customer_name: params[:data][:attributes][:job_offer][:customer][:name]
      })
    if @announcement.save
      head :created
    else
      head :no_content
    end
  end
end
