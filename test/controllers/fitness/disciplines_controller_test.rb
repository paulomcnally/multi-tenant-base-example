require 'test_helper'

class Fitness::DisciplinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fitness_discipline = fitness_disciplines(:one)
  end

  test "should get index" do
    get fitness_disciplines_url
    assert_response :success
  end

  test "should get new" do
    get new_fitness_discipline_url
    assert_response :success
  end

  test "should create fitness_discipline" do
    assert_difference('Fitness::Discipline.count') do
      post fitness_disciplines_url, params: { fitness_discipline: { enabled: @fitness_discipline.enabled, name: @fitness_discipline.name } }
    end

    assert_redirected_to fitness_discipline_url(Fitness::Discipline.last)
  end

  test "should show fitness_discipline" do
    get fitness_discipline_url(@fitness_discipline)
    assert_response :success
  end

  test "should get edit" do
    get edit_fitness_discipline_url(@fitness_discipline)
    assert_response :success
  end

  test "should update fitness_discipline" do
    patch fitness_discipline_url(@fitness_discipline), params: { fitness_discipline: { enabled: @fitness_discipline.enabled, name: @fitness_discipline.name } }
    assert_redirected_to fitness_discipline_url(@fitness_discipline)
  end

  test "should destroy fitness_discipline" do
    assert_difference('Fitness::Discipline.count', -1) do
      delete fitness_discipline_url(@fitness_discipline)
    end

    assert_redirected_to fitness_disciplines_url
  end
end
