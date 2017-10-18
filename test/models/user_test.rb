require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(name: "Nikki", email: "O.Neil@gmail.com")
  end
  test 'shold be valid' do
    assert @user.valid?
  end
 # test 'username should be not too long' do
 #   @user.name = "m" * 29
 #   assert_not @user.valid?
 # end

  test 'email should be not too long' do
    @user.email = "a" * 100 + "@example.com"
    assert_not @user.valid?
  end

  test 'correct email' do
    valid_email = %w[uiomkk@gmail.com mion@ex.ua dk.sef@bk.ru]
    valid_email.each do |valid|
      @user.email = valid
      assert @user.valid?, "#{valid.inspect} shold be valid"
    end
  end

  test 'email should be unique' do
    dublicate_of_user = @user.dup
    dublicate_of_user.email = @user.email.upcase
      @user.save
      assert_not dublicate_of_user.valid?
  end

end
