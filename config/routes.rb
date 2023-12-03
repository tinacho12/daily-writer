Rails.application.routes.draw do

  # Defines the root path route ("/")
  get("/", { :controller => "submissions", :action => "index" })
  
  #------------------------------

  # Routes for the Writer resource:

  # CREATE
  post("/insert_writer", { :controller => "writers", :action => "create" })
          
  # READ
  get("/writers", { :controller => "writers", :action => "index" })
  
  get("/writers/:path_id", { :controller => "writers", :action => "show" })
  
  # UPDATE
  
  post("/modify_writer/:path_id", { :controller => "writers", :action => "update" })
  
  # DELETE
  get("/delete_writer/:path_id", { :controller => "writers", :action => "destroy" })

  #------------------------------

  # Routes for the Submission resource:

  # CREATE
  post("/insert_submission", { :controller => "submissions", :action => "create" })
          
  # READ
  get("/submissions", { :controller => "submissions", :action => "index" })
  
  get("/submissions/:path_id", { :controller => "submissions", :action => "show" })
  
  # UPDATE
  post("/modify_submission/:path_id", { :controller => "submissions", :action => "update" })
  
  # DELETE
  get("/delete_submission/:path_id", { :controller => "submissions", :action => "destroy" })

  #------------------------------

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # root "articles#index"
end
