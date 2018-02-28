class NotesController < ApplicationController
  def index
    @notes = Note.all

    render("note_templates/index.html.erb")
  end

  def show
    @note = Note.find(params.fetch("id_to_display"))

    render("note_templates/show.html.erb")
  end

  def new_form
    render("note_templates/new_form.html.erb")
  end

  def create_row
    @note = Note.new

    @note.body = params.fetch("body")
    @note.company_id = params.fetch("company_id")
    @note.user_id = params.fetch("user_id")
    @note.role_id = params.fetch("role_id")
    @note.contact_id = params.fetch("contact_id")

    if @note.valid?
      @note.save

      redirect_to("/notes", :notice => "Note created successfully.")
    else
      render("note_templates/new_form.html.erb")
    end
  end

  def edit_form
    @note = Note.find(params.fetch("prefill_with_id"))

    render("note_templates/edit_form.html.erb")
  end

  def update_row
    @note = Note.find(params.fetch("id_to_modify"))

    @note.body = params.fetch("body")
    @note.company_id = params.fetch("company_id")
    @note.user_id = params.fetch("user_id")
    @note.role_id = params.fetch("role_id")
    @note.contact_id = params.fetch("contact_id")

    if @note.valid?
      @note.save

      redirect_to("/notes/#{@note.id}", :notice => "Note updated successfully.")
    else
      render("note_templates/edit_form.html.erb")
    end
  end

  def destroy_row
    @note = Note.find(params.fetch("id_to_remove"))

    @note.destroy

    redirect_to("/notes", :notice => "Note deleted successfully.")
  end
end
