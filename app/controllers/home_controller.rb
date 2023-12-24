class HomeController < ApplicationController
  include FfiRustAdditionHelper

  def index
    @result = add_two_integers(15, 60)
    puts "Result of addition: #{@result}"
  end

  def magnus_index
    @result = rs_addition(15, 20)
    render :template => "home/index"
  end
end
