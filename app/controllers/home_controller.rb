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

  def magnus_remote_index
    p = Point.new(5, 10)
    q = Point.new(10, 20)
    @result = p.distance(q)
    render :template => "home/index"
  end
end
