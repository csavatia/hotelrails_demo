class Firstusers < Mongoid::Migration
  def self.up
    User.create!(
      email: "admin@gmail.com",
      password: "password",
      password_confirmation: "password",
      admin: true
    )
  end

  def self.down
  end
end