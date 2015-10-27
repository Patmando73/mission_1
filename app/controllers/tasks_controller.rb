class TasksController < ApplicationController
  # The 7 "standard" RESTful actions
  # index (show a collection of something)
  # show (show 1 of something)
  # new (the form to create something new)
  # create (the endpoint to process the form for something new)
  # edit (the form to edit something you've already created)
  # update (the endpoint to process the form for an update)
  # destroy (delete something)

  def create
    Resque.enqueue(MyJob)
    flash[:notice] = "Your job has been created."
    redirect_to root_path
  end
end