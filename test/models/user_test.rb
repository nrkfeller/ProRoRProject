require 'test_helper'

class UserTest < ActiveSupport::TestCase
  
  def setup
    @user = User.new(name: 'nickolas', email: 'nickstudent@concordia.ca')
  end
  
  test 'user should be valid' do
    assert @user.valid?
  end
  
  test 'name should be valid' do
    @user.name = " "
    assert_not @user.valid?
  end
  
  test 'name should not be too long' do
    @user.name = 'a' * 4
    assert_not @user.valid?
  end
  
  test 'name should not be too short' do
    @user.name = 'a' * 41
    assert_not @user.valid?
  end
  
  test 'email should be present' do
    @user.email = ' '
    assert_not @user.valid?
  end
  
  test 'email length should be within bounds' do
    @user.email = 'a' * 100 + '@example.com'
    assert_not @user.valid?
  end
  
  test 'email should be unique' do
    dup_user = @user.dup
    dup_user.email = @user.email.upcase
    @user.save
    assert_not dup_user.valid?
  end
  
  test 'email address should be valid email format' do
    valid_addresses = %w[user@eee.com]# R_TDD-DS@eee.hello.org user@example.com first.lasr@exmail.com bluered@colors.com]
    valid_addresses.each do |va| 
      @user.email = va
      assert @user.valid?, '#{va.inspect} should be valid'
    end
  end
  
  test 'should reject invalid email address formats' do
    invalid_addresses = %w[user@example--com]# hello ilove@ nothinggood@potato notanemail@add+ress]
    invalid_addresses.each do |j|
      @user.email = j
      assert_not @user.valid?, '#{j.inspect} should be invalid'
    end
  end
end