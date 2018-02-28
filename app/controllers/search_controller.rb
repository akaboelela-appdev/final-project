class SearchController < ApplicationController
  def index
    @companies = Company.all
    @industries = Industry.all
    @coveragegroups = Coveragegroup.all
    @cities = City.all
    render("/shared/search.html.erb")
  end
end