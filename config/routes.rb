Rails.application.routes.draw do

  devise_for :users
  root 'parties#index'

  # Routes for the Shopping_list resource:
  # CREATE
  get "/parties/:id/shopping_lists/new", :controller => "shopping_lists", :action => "new"
  get "/shopping_lists/new", :controller => "shopping_lists", :action => "new"
  post "/create_shopping_list", :controller => "shopping_lists", :action => "create"

  # READ
  get "/shopping_lists", :controller => "shopping_lists", :action => "index"
  get "/shopping_lists/:id", :controller => "shopping_lists", :action => "show"
  get "/parties/:id/shopping_list", :controller => "shopping_lists", :action => "index"

  # UPDATE
  get "/shopping_lists/:id/edit", :controller => "shopping_lists", :action => "edit"
  post "/update_shopping_list/:id", :controller => "shopping_lists", :action => "update"

  # DELETE
  get "/delete_shopping_list/:id", :controller => "shopping_lists", :action => "destroy"
  #------------------------------

  # Routes for the Party resource:
  # CREATE
  get "/parties/new", :controller => "parties", :action => "new"
  post "/create_party", :controller => "parties", :action => "create"

  # READ
  get "/parties", :controller => "parties", :action => "index"
  get "/parties/:id", :controller => "parties", :action => "show"

  # UPDATE
  get "/parties/:id/edit", :controller => "parties", :action => "edit"
  post "/update_party/:id", :controller => "parties", :action => "update"

  # DELETE
  get "/delete_party/:id", :controller => "parties", :action => "destroy"
  #------------------------------

  # Routes for the Item resource:
  # CREATE
  get "/items/new", :controller => "items", :action => "new"
  post "/create_item", :controller => "items", :action => "create"

  # READ
  get "/items", :controller => "items", :action => "index"
  get "/items/:id", :controller => "items", :action => "show"
#  get "/parties/:id/items", :controller => "items", :action => "index"
#  post "/update_shopping_list/:id", :controller => "shopping_lists", :action => "update"

  # UPDATE
  get "/items/:id/edit", :controller => "items", :action => "edit"
  post "/update_item/:id", :controller => "items", :action => "update"

  # DELETE
  get "/delete_item/:id", :controller => "items", :action => "destroy"
  #------------------------------

  # Routes for the Guest resource:
  # CREATE
  get "/guests/new", :controller => "guests", :action => "new"
  post "/create_guest", :controller => "guests", :action => "create"

  # READ
  get "/guests", :controller => "guests", :action => "index"
  get "/guests/:id", :controller => "guests", :action => "show"

  # UPDATE
  get "/guests/:id/edit", :controller => "guests", :action => "edit"
  post "/update_guest/:id", :controller => "guests", :action => "update"

  # DELETE
  get "/delete_guest/:id", :controller => "guests", :action => "destroy"
  #------------------------------

  get 'guests/index'

  get 'items/index'

  get 'pages/dashboard'

end
