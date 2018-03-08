class IndustriesController < ApplicationController
  def index
    @industries = Industry.all

    render("industry_templates/index.html.erb")
  end

  def show
    @industry = Industry.find(params.fetch("id_to_display"))
    @companies = Company.where(industry_id: @industry.id)
    render("industry_templates/show.html.erb")
  end

  def new_form
    render("industry_templates/new_form.html.erb")
  end

  def create_row
    @industry = Industry.new

    @industry.name = params.fetch("name")

    if @industry.valid?
      @industry.save

      #redirect_to("/industries", :notice => "Industry created successfully.")
      redirect_back(fallback_location: "/search", :notice => "Industry created successfully.")
    else
      render("industry_templates/new_form.html.erb")
    end
  end

  def edit_form
    @industry = Industry.find(params.fetch("prefill_with_id"))

    render("industry_templates/edit_form.html.erb")
  end

  def update_row
    @industry = Industry.find(params.fetch("id_to_modify"))

    @industry.name = params.fetch("name")

    if @industry.valid?
      @industry.save

      redirect_to("/industries/#{@industry.id}", :notice => "Industry updated successfully.")
    else
      render("industry_templates/edit_form.html.erb")
    end
  end

  def destroy_row
    @industry = Industry.find(params.fetch("id_to_remove"))

    @industry.destroy

    redirect_to("/industries", :notice => "Industry deleted successfully.")
  end
end
