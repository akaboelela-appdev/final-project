class PrioritiesController < ApplicationController
  def index
    @priorities = Priority.all

    render("priority_templates/index.html.erb")
  end

  def show
    @priority = Priority.find(params.fetch("id_to_display"))

    render("priority_templates/show.html.erb")
  end

  def new_form
    render("priority_templates/new_form.html.erb")
  end

  def create_row
    @priority = Priority.new

    @priority.name = params.fetch("name")

    if @priority.valid?
      @priority.save

      redirect_to("/priorities", :notice => "Priority created successfully.")
    else
      render("priority_templates/new_form.html.erb")
    end
  end

  def edit_form
    @priority = Priority.find(params.fetch("prefill_with_id"))

    render("priority_templates/edit_form.html.erb")
  end

  def update_row
    @priority = Priority.find(params.fetch("id_to_modify"))

    @priority.name = params.fetch("name")

    if @priority.valid?
      @priority.save

      redirect_to("/priorities/#{@priority.id}", :notice => "Priority updated successfully.")
    else
      render("priority_templates/edit_form.html.erb")
    end
  end

  def destroy_row
    @priority = Priority.find(params.fetch("id_to_remove"))

    @priority.destroy

    redirect_to("/priorities", :notice => "Priority deleted successfully.")
  end
end
