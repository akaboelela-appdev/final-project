class ContactsController < ApplicationController
  def index
    @contacts = Contact.all

    render("contact_templates/index.html.erb")
  end

  def show
    @contact = Contact.find(params.fetch("id_to_display"))

    render("contact_templates/show.html.erb")
  end

  def new_form
    render("contact_templates/new_form.html.erb")
  end

  def create_row
    @contact = Contact.new

    @contact.name = params.fetch("name")
    @contact.title = params.fetch("title")
    @contact.company_id = params.fetch("company_id")
    @contact.user_id = params.fetch("user_id")

    if @contact.valid?
      @contact.save

      redirect_to("/contacts", :notice => "Contact created successfully.")
    else
      render("contact_templates/new_form.html.erb")
    end
  end

  def edit_form
    @contact = Contact.find(params.fetch("prefill_with_id"))

    render("contact_templates/edit_form.html.erb")
  end

  def update_row
    @contact = Contact.find(params.fetch("id_to_modify"))

    @contact.name = params.fetch("name")
    @contact.title = params.fetch("title")
    @contact.company_id = params.fetch("company_id")
    @contact.user_id = params.fetch("user_id")

    if @contact.valid?
      @contact.save

      redirect_to("/contacts/#{@contact.id}", :notice => "Contact updated successfully.")
    else
      render("contact_templates/edit_form.html.erb")
    end
  end

  def destroy_row
    @contact = Contact.find(params.fetch("id_to_remove"))

    @contact.destroy

    redirect_to("/contacts", :notice => "Contact deleted successfully.")
  end
end
