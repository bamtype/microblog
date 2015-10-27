class AddPasswordEmails < ActiveRecord::Migration
  def change
  	email :string
  	password :string
  end
end
