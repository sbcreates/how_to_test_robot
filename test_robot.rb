require 'minitest/autorun'
require 'minitest/pride'
require './robot.rb'

class TestRobot < MiniTest::Test

  def test_that_foreign_robot_needing_repairs_sent_to_station_1
    # skip
    # arrange
    # create a new robot and put true that it's a foreign model robot that needs repairs,
    robot = Robot.new
    robot.foreign_model = true
    robot.needs_repairs = true
    outcome = robot.station
    # act
    expect = 1
    # assert
    assert_equal(outcome,expect)
  end

  def test_that_vintage_robot_needing_repairs_sent_to_station_2
    # skip
    # arrange
    robot = Robot.new
    robot.vintage_model = true
    robot.needs_repairs = true
    outcome = robot.station
    # act
    expect = 2
    # assert
    assert_equal(outcome,expect)
  end

  def test_that_standard_robot_needing_repairs_sent_to_station_3
    # skip
    # arrange
    robot = Robot.new
    robot.needs_repairs = true
    outcome = robot.station
    # act
    expect = 3
    # assert
    assert_equal(outcome,expect)
  end

  def test_that_robot_in_good_condition_sent_to_station_4
    # skip
    # arrange
    robot = Robot.new
    outcome = robot.station
    # act
    expect = 4
    # assert
    assert_equal(outcome,expect)
  end

  def test_prioritize_tasks_with_empty_todo_list_returns_negative_one
    # skip
    # arrange
    robot = Robot.new
    outcome = robot.prioritize_tasks
    # act
    expect = -1
    # assert
    assert_equal(outcome,expect)
  end

  def test_prioritize_tasks_with_todos_returns_max_todo_value
    # skip
    # arrange
    robot = Robot.new
    robot.todos = [3425, 23453, 345, 3, 3457, 123, 5576453]
    outcome = robot.prioritize_tasks
    # act
    expect = 5576453
    # assert
    assert_equal(outcome,expect)
  end

  def test_workday_on_day_off_returns_false
    # skip
    # arrange
    robot = Robot.new
    robot.day_off = "monday"
    outcome = robot.workday?("monday")
    # act
    expect = false
    # assert
    assert_equal(outcome,expect)
  end

  def test_workday_not_day_off_returns_true
    skip
    # arrange

    # act
    # assert
  end

end
