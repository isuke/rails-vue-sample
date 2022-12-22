class Api::UsersController < ApplicationController
  def index
    @users = [
      { first_name: 'Ciar'    , family_name: 'Gethsemane' },
      { first_name: 'Sundara' , family_name: 'Josefa' },
      { first_name: 'Zisel'   , family_name: 'Itzel' },
      { first_name: 'Hadriana', family_name: 'Daniele' },
    ]
  end

  def create
    puts "hello #{params[:first_name]} #{params[:family_name]}"
  end
end
