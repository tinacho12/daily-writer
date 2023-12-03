class SubmissionsController < ApplicationController
  
  def home
    render({ :template => "submissions/home" })
  end

  def write
    render({ :template => "submissions/write" })
  end

  def index
    render({ :template => "submissions/index" })
  end

  def show
    render({ :template => "submissions/show" })
  end
  
end
