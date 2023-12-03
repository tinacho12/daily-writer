Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get("/", { :controller => "submissions", :action => "home" })
  get("/write", { :controller => "submissions", :action => "write" })
  get("/submissions", { :controller => "submissions", :action => "index" })
  get("/submissions/:submission_id", { :controller => "submissions", :action => "show" })

  # Defines the root path route ("/")
  # root "articles#index"
end
