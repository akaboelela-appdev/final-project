class BookmarksController < ApplicationController
  def index
    @roles=Role.all
    @bookmarked_roles = []
    Bookmark.where(user_id: current_user.id).each do |bookmark|
    @bookmarked_roles.push(Role.find(bookmark.role_id))
    end

    render("bookmark_templates/index.html.erb")
  end

  def show
    @bookmark = Bookmark.find(params.fetch("id_to_display"))

    render("bookmark_templates/show.html.erb")
  end

  def new_form
    render("bookmark_templates/new_form.html.erb")
  end

  def create_row
    @bookmark = Bookmark.new

    @bookmark.role_id = params.fetch("role_id")
    @bookmark.user_id = params.fetch("user_id")
    @bookmark.priority_id = params.fetch("priority_id")
    @bookmark.status_id = params.fetch("status_id")

    if @bookmark.valid?
      @bookmark.save

      #redirect_to("/bookmarks", :notice => "Bookmark created successfully.")
      redirect_back(fallback_location: "/")
    else
      render("bookmark_templates/new_form.html.erb")
    end
  end

  def edit_form
    @bookmark = Bookmark.find(params.fetch("prefill_with_id"))

    render("bookmark_templates/edit_form.html.erb")
  end

  def update_row
    @bookmark = Bookmark.find(params.fetch("id_to_modify"))

    @bookmark.role_id = params.fetch("role_id")
    @bookmark.user_id = params.fetch("user_id")
    @bookmark.priority_id = params.fetch("priority_id")
    @bookmark.status_id = params.fetch("status_id")

    if @bookmark.valid?
      @bookmark.save

      redirect_to("/bookmarks/#{@bookmark.id}", :notice => "Bookmark updated successfully.")
    else
      render("bookmark_templates/edit_form.html.erb")
    end
  end

  def destroy_row
    @bookmark = Bookmark.find(params.fetch("id_to_remove"))

    @bookmark.destroy

    #redirect_to("/bookmarks", :notice => "Bookmark deleted successfully.")
    redirect_back(fallback_location: "/")
  end
end
