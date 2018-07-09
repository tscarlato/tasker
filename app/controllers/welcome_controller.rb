class WelcomeController < ApplicationController
  def index
     @testarray = Task.all.order(order: :asc)

  end
end
