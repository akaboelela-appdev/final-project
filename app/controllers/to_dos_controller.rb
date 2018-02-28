class ToDosController < ApplicationController
  def index
    @to_dos = ToDo.all

    render("to_do_templates/index.html.erb")
  end

  def show
    @to_do = ToDo.find(params.fetch("id_to_display"))

    render("to_do_templates/show.html.erb")
  end

  def new_form
    render("to_do_templates/new_form.html.erb")
  end

  def create_row
    @to_do = ToDo.new

    @to_do.body = params.fetch("body")
    @to_do.user_id = params.fetch("user_id")
    @to_do.role_id = params.fetch("role_id")
    @to_do.done = params.fetch("done")

    if @to_do.valid?
      @to_do.save

      redirect_back(fallback_location: '/bookmarks')
    else
      render("to_do_templates/new_form.html.erb")
    end
  end

  def edit_form
    @to_do = ToDo.find(params.fetch("prefill_with_id"))

    render("to_do_templates/edit_form.html.erb")
  end

  def update_row
    @to_do = ToDo.find(params.fetch("id_to_modify"))

    @to_do.body = params.fetch("body")
    @to_do.user_id = params.fetch("user_id")
    @to_do.role_id = params.fetch("role_id")
    @to_do.done = params.fetch("done")

    if @to_do.valid?
      @to_do.save

      #redirect_to("/to_dos/#{@to_do.id}", :notice => "To do updated successfully.")
      redirect_back(fallback_location: '/to_dos/#{@to_do.id}')
    else
      render("to_do_templates/edit_form.html.erb")
    end
  end

  def destroy_row
    @to_do = ToDo.find(params.fetch("id_to_remove"))

    @to_do.destroy

    redirect_to("/to_dos", :notice => "To do deleted successfully.")
  end
end
