Rails.application.routes.draw do
  root("bookmarks#index")
  get("/search", {:controller=>"search", :action => "index"})
  # Routes for the Note resource:

  # CREATE
  get("/notes/new", { :controller => "notes", :action => "new_form" })
  post("/create_note", { :controller => "notes", :action => "create_row" })

  # READ
  get("/notes", { :controller => "notes", :action => "index" })
  get("/notes/:id_to_display", { :controller => "notes", :action => "show" })

  # UPDATE
  get("/notes/:prefill_with_id/edit", { :controller => "notes", :action => "edit_form" })
  post("/update_note/:id_to_modify", { :controller => "notes", :action => "update_row" })

  # DELETE
  get("/delete_note/:id_to_remove", { :controller => "notes", :action => "destroy_row" })

  #------------------------------

  # Routes for the Priority resource:

  # CREATE
  get("/priorities/new", { :controller => "priorities", :action => "new_form" })
  post("/create_priority", { :controller => "priorities", :action => "create_row" })

  # READ
  get("/priorities", { :controller => "priorities", :action => "index" })
  get("/priorities/:id_to_display", { :controller => "priorities", :action => "show" })

  # UPDATE
  get("/priorities/:prefill_with_id/edit", { :controller => "priorities", :action => "edit_form" })
  post("/update_priority/:id_to_modify", { :controller => "priorities", :action => "update_row" })

  # DELETE
  get("/delete_priority/:id_to_remove", { :controller => "priorities", :action => "destroy_row" })

  #------------------------------

  # Routes for the Status resource:

  # CREATE
  get("/statuses/new", { :controller => "statuses", :action => "new_form" })
  post("/create_status", { :controller => "statuses", :action => "create_row" })

  # READ
  get("/statuses", { :controller => "statuses", :action => "index" })
  get("/statuses/:id_to_display", { :controller => "statuses", :action => "show" })

  # UPDATE
  get("/statuses/:prefill_with_id/edit", { :controller => "statuses", :action => "edit_form" })
  post("/update_status/:id_to_modify", { :controller => "statuses", :action => "update_row" })

  # DELETE
  get("/delete_status/:id_to_remove", { :controller => "statuses", :action => "destroy_row" })

  #------------------------------

  # Routes for the Bookmark resource:

  # CREATE
  get("/bookmarks/new", { :controller => "bookmarks", :action => "new_form" })
  post("/create_bookmark", { :controller => "bookmarks", :action => "create_row" })

  # READ
  get("/bookmarks", { :controller => "bookmarks", :action => "index" })
  get("/bookmarks/:id_to_display", { :controller => "bookmarks", :action => "show" })

  # UPDATE
  get("/bookmarks/:prefill_with_id/edit", { :controller => "bookmarks", :action => "edit_form" })
  post("/update_bookmark/:id_to_modify", { :controller => "bookmarks", :action => "update_row" })

  # DELETE
  get("/delete_bookmark/:id_to_remove", { :controller => "bookmarks", :action => "destroy_row" })

  #------------------------------

  # Routes for the To do resource:

  # CREATE
  get("/to_dos/new", { :controller => "to_dos", :action => "new_form" })
  post("/create_to_do", { :controller => "to_dos", :action => "create_row" })

  # READ
  get("/to_dos", { :controller => "to_dos", :action => "index" })
  get("/to_dos/:id_to_display", { :controller => "to_dos", :action => "show" })

  # UPDATE
  get("/to_dos/:prefill_with_id/edit", { :controller => "to_dos", :action => "edit_form" })
  post("/update_to_do/:id_to_modify", { :controller => "to_dos", :action => "update_row" })

  # DELETE
  get("/delete_to_do/:id_to_remove", { :controller => "to_dos", :action => "destroy_row" })

  #------------------------------

  # Routes for the Contact resource:

  # CREATE
  get("/contacts/new", { :controller => "contacts", :action => "new_form" })
  post("/create_contact", { :controller => "contacts", :action => "create_row" })

  # READ
  get("/contacts", { :controller => "contacts", :action => "index" })
  get("/contacts/:id_to_display", { :controller => "contacts", :action => "show" })

  # UPDATE
  get("/contacts/:prefill_with_id/edit", { :controller => "contacts", :action => "edit_form" })
  post("/update_contact/:id_to_modify", { :controller => "contacts", :action => "update_row" })

  # DELETE
  get("/delete_contact/:id_to_remove", { :controller => "contacts", :action => "destroy_row" })

  #------------------------------

  # Routes for the Role resource:

  # CREATE
  get("/roles/new", { :controller => "roles", :action => "new_form" })
  post("/create_role", { :controller => "roles", :action => "create_row" })

  # READ
  get("/roles", { :controller => "roles", :action => "index" })
  get("/roles/:id_to_display", { :controller => "roles", :action => "show" })

  # UPDATE
  get("/roles/:prefill_with_id/edit", { :controller => "roles", :action => "edit_form" })
  post("/update_role/:id_to_modify", { :controller => "roles", :action => "update_row" })

  # DELETE
  get("/delete_role/:id_to_remove", { :controller => "roles", :action => "destroy_row" })

  #------------------------------

  # Routes for the Company resource:

  # CREATE
  get("/companies/new", { :controller => "companies", :action => "new_form" })
  post("/create_company", { :controller => "companies", :action => "create_row" })

  # READ
  get("/companies", { :controller => "companies", :action => "index" })
  get("/companies/:id_to_display", { :controller => "companies", :action => "show" })

  # UPDATE
  get("/companies/:prefill_with_id/edit", { :controller => "companies", :action => "edit_form" })
  post("/update_company/:id_to_modify", { :controller => "companies", :action => "update_row" })

  # DELETE
  get("/delete_company/:id_to_remove", { :controller => "companies", :action => "destroy_row" })

  #------------------------------

  # Routes for the Coveragegroup resource:

  # CREATE
  get("/coveragegroups/new", { :controller => "coveragegroups", :action => "new_form" })
  post("/create_coveragegroup", { :controller => "coveragegroups", :action => "create_row" })

  # READ
  get("/coveragegroups", { :controller => "coveragegroups", :action => "index" })
  get("/coveragegroups/:id_to_display", { :controller => "coveragegroups", :action => "show" })

  # UPDATE
  get("/coveragegroups/:prefill_with_id/edit", { :controller => "coveragegroups", :action => "edit_form" })
  post("/update_coveragegroup/:id_to_modify", { :controller => "coveragegroups", :action => "update_row" })

  # DELETE
  get("/delete_coveragegroup/:id_to_remove", { :controller => "coveragegroups", :action => "destroy_row" })

  #------------------------------

  # Routes for the Industry resource:

  # CREATE
  get("/industries/new", { :controller => "industries", :action => "new_form" })
  post("/create_industry", { :controller => "industries", :action => "create_row" })

  # READ
  get("/industries", { :controller => "industries", :action => "index" })
  get("/industries/:id_to_display", { :controller => "industries", :action => "show" })

  # UPDATE
  get("/industries/:prefill_with_id/edit", { :controller => "industries", :action => "edit_form" })
  post("/update_industry/:id_to_modify", { :controller => "industries", :action => "update_row" })

  # DELETE
  get("/delete_industry/:id_to_remove", { :controller => "industries", :action => "destroy_row" })

  #------------------------------

  # Routes for the City resource:

  # CREATE
  get("/cities/new", { :controller => "cities", :action => "new_form" })
  post("/create_city", { :controller => "cities", :action => "create_row" })

  # READ
  get("/cities", { :controller => "cities", :action => "index" })
  get("/cities/:id_to_display", { :controller => "cities", :action => "show" })

  # UPDATE
  get("/cities/:prefill_with_id/edit", { :controller => "cities", :action => "edit_form" })
  post("/update_city/:id_to_modify", { :controller => "cities", :action => "update_row" })

  # DELETE
  get("/delete_city/:id_to_remove", { :controller => "cities", :action => "destroy_row" })

  #------------------------------

  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
