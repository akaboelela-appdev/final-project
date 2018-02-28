class RolesController < ApplicationController
  def index
    @roles = Role.all
    @bookmarked_roles = []
    Bookmark.where(user_id: current_user.id).each do |bookmark|
      @bookmarked_roles.push(Role.find(bookmark.role_id))
    end

    render("role_templates/index.html.erb")
  end

  def show
    @role = Role.find(params.fetch("id_to_display"))

    render("role_templates/show.html.erb")
  end

  def new_form
    render("role_templates/new_form.html.erb")
  end

  def create_row
    @role = Role.new

    @role.title = params.fetch("title")
    @role.city_id = params.fetch("city_id")
    @role.coveragegroup_id = params.fetch("coveragegroup_id")
    @role.company_id = params.fetch("company_id")
    @role.due_date = params.fetch("due_date")

    if @role.valid?
      @role.save

      redirect_to("/roles", :notice => "Role created successfully.")
    else
      render("role_templates/new_form.html.erb")
    end
  end

  def edit_form
    @role = Role.find(params.fetch("prefill_with_id"))

    render("role_templates/edit_form.html.erb")
  end

  def update_row
    @role = Role.find(params.fetch("id_to_modify"))

    @role.title = params.fetch("title")
    @role.city_id = params.fetch("city_id")
    @role.coveragegroup_id = params.fetch("coveragegroup_id")
    @role.company_id = params.fetch("company_id")
    @role.due_date = params.fetch("due_date")

    if @role.valid?
      @role.save

      redirect_to("/roles/#{@role.id}", :notice => "Role updated successfully.")
    else
      render("role_templates/edit_form.html.erb")
    end
  end

  def destroy_row
    @role = Role.find(params.fetch("id_to_remove"))

    @role.destroy

    redirect_to("/roles", :notice => "Role deleted successfully.")
  end
end
