class UpdateUsers2 < ActiveRecord::Migration[5.0]
  def change
  @u = User.find_by( email: 'admin@email.ie')
  # if no user with that email show nil 
  # if email found then change access to admin user
  if @u != nil
  @u.update_attribute :admin, true
  end
  end
end

