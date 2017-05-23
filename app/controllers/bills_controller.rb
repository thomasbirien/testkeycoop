class BillsController < ApplicationController
  def create
    publication = Publication.find(params[:publication_id])
    customer = ""
    customer << publication.customer_name

    ref = Bill.reference(customer)
    @bill = Bill.new({
      title: publication.title,
      customer_name: publication.customer_name,
      date_of_publication: publication.created_at,
      price: 1234,
      publication_id: params[:publication_id],
      reference_bill: ref
      })
    if @bill.save!
      # redirect_to edit_publication_path(publication)
      redirect_to edit_publication_path(publication.id, @bill)
    end
  end
end
