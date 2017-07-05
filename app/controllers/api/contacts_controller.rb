class Api::ContactsController < ApplicationController

  def create
    @contact = Contact.new(contact_params)
    @contact.save
    ContactMailer.contact_mail(@contact).deliver_now
    render json: @contact
  end

  private

  def contact_params
    res = ActiveModelSerializers::Deserialization.jsonapi_parse(params)
  end

end
