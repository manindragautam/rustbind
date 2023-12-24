class HomeController < ApplicationController
  include FfiRustAdditionHelper

  def index
    @result = add_two_integers(15, 60)
    puts "Result of addition: #{@result}"
  end
end
