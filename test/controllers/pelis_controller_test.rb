require 'test_helper'

class PelisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @peli = pelis(:one)
  end

  test "should get index" do
    get pelis_url
    assert_response :success
  end

  test "should get new" do
    get new_peli_url
    assert_response :success
  end

  test "should create peli" do
    assert_difference('Peli.count') do
      post pelis_url, params: { peli: { description: @peli.description, director: @peli.director, main_actor: @peli.main_actor, movie_length: @peli.movie_length, rating: @peli.rating, title: @peli.title } }
    end

    assert_redirected_to peli_url(Peli.last)
  end

  test "should show peli" do
    get peli_url(@peli)
    assert_response :success
  end

  test "should get edit" do
    get edit_peli_url(@peli)
    assert_response :success
  end

  test "should update peli" do
    patch peli_url(@peli), params: { peli: { description: @peli.description, director: @peli.director, main_actor: @peli.main_actor, movie_length: @peli.movie_length, rating: @peli.rating, title: @peli.title } }
    assert_redirected_to peli_url(@peli)
  end

  test "should destroy peli" do
    assert_difference('Peli.count', -1) do
      delete peli_url(@peli)
    end

    assert_redirected_to pelis_url
  end
end
