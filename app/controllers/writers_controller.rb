class WritersController < ApplicationController
  def index
    matching_writers = Writer.all

    @list_of_writers = matching_writers.order({ :created_at => :desc })

    render({ :template => "writers/index" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_writers = Writer.where({ :id => the_id })

    @the_writer = matching_writers.at(0)

    render({ :template => "writers/show" })
  end

  def create
    the_writer = Writer.new
    the_writer.word_count_goal = params.fetch("query_word_count_goal")

    if the_writer.valid?
      the_writer.save
      redirect_to("/writers", { :notice => "Writer created successfully." })
    else
      redirect_to("/writers", { :alert => the_writer.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_writer = Writer.where({ :id => the_id }).at(0)

    the_writer.word_count_goal = params.fetch("query_word_count_goal")

    if the_writer.valid?
      the_writer.save
      redirect_to("/writers/#{the_writer.id}", { :notice => "Writer updated successfully."} )
    else
      redirect_to("/writers/#{the_writer.id}", { :alert => the_writer.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_writer = Writer.where({ :id => the_id }).at(0)

    the_writer.destroy

    redirect_to("/writers", { :notice => "Writer deleted successfully."} )
  end
end
