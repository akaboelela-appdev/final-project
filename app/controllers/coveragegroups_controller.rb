class CoveragegroupsController < ApplicationController
  def index
    @coveragegroups = Coveragegroup.all

    render("coveragegroup_templates/index.html.erb")
  end

  def show
    @coveragegroup = Coveragegroup.find(params.fetch("id_to_display"))

    render("coveragegroup_templates/show.html.erb")
  end

  def new_form
    render("coveragegroup_templates/new_form.html.erb")
  end

  def create_row
    @coveragegroup = Coveragegroup.new

    @coveragegroup.name = params.fetch("name")

    if @coveragegroup.valid?
      @coveragegroup.save

      #redirect_to("/coveragegroups", :notice => "Coveragegroup created successfully.")
      redirect_back(fallback_location: "/search", :notice => "Coverage group created successfully.")
    else
      render("coveragegroup_templates/new_form.html.erb")
    end
  end

  def edit_form
    @coveragegroup = Coveragegroup.find(params.fetch("prefill_with_id"))

    render("coveragegroup_templates/edit_form.html.erb")
  end

  def update_row
    @coveragegroup = Coveragegroup.find(params.fetch("id_to_modify"))

    @coveragegroup.name = params.fetch("name")

    if @coveragegroup.valid?
      @coveragegroup.save

      redirect_to("/coveragegroups/#{@coveragegroup.id}", :notice => "Coveragegroup updated successfully.")
    else
      render("coveragegroup_templates/edit_form.html.erb")
    end
  end

  def destroy_row
    @coveragegroup = Coveragegroup.find(params.fetch("id_to_remove"))

    @coveragegroup.destroy

    redirect_to("/coveragegroups", :notice => "Coveragegroup deleted successfully.")
  end
end
