require 'test_helper'

class CourseTest < ActiveSupport::TestCase
  
  def setup
    @user = User.create(name: "Nicolas feller", email: "nicolas@emeial.com")
    @course = @user.courses.build(name: "ELEC 1273", rating: 4, description: "Basic Circuit Analysis, KVL KCL, capacitors, resistors, inductors etc")
    
  end
  
  test "course should be valid" do
    assert @course.valid? # insertion, lookup on edgeguide
  end
  
  test "user_id is present" do
    @course.user_id = nil
    assert_not @course.valid?
  end
  
  test "name should be present" do
    @course.name = " "
    assert_not @course.valid?
  end
  
  test "name should not be too long" do
    @course.name = 'a' * 10
    assert_not @course.valid?
  end
  
  test "name should not be too short" do
    @course.name = 'a' * 8
    assert_not @course.valid?
  end
  
  test 'rating should be present' do
    @course.rating = " "
    assert_not @course.valid?
  end
  
  test 'description should not be too long' do
    @course.description = 'a' * 501
    assert_not @course.valid?
  end
  
  test "description should not be too short" do
    @course.description = 'a' * 9
    assert_not @course.valid?
  end
  
  
end