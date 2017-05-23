class BillsController < ApplicationController
  def show
    @bill = Bill.find(params[:id])
    respond_to do |format|
      format.pdf do
        render pdf: "facture",
               layout: "pdf.html.erb",
               page_size: "A4"
      end
      format.html
    end
  end

  def create
    announcement = Announcement.find(params[:announcement_id])
    customer = ""
    customer << announcement.customer_name

    ref = Bill.reference(customer)
    @bill = Bill.new({
      title: announcement.title,
      customer_name: announcement.customer_name,
      date_of_publication: announcement.created_at,
      price: 1234.56,
      announcement_id: params[:announcement_id],
      reference_bill: ref
      })
    if @bill.save!
      # redirect_to edit_publication_path(publication)
      redirect_to edit_announcement_path(announcement.id, @bill)
    end
  end
end
