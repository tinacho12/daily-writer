class SubmissionsController < ApplicationController
  def index
    render({ :template => "submissions/index" })
  end
end
