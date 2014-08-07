require 'test_helper'

class PetClubsControllerTest < ActionController::TestCase
  setup do
    @pet_club = pet_clubs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pet_clubs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pet_club" do
    assert_difference('PetClub.count') do
      post :create, pet_club: { name: @pet_club.name }
    end

    assert_redirected_to pet_club_path(assigns(:pet_club))
  end

  test "should show pet_club" do
    get :show, id: @pet_club
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pet_club
    assert_response :success
  end

  test "should update pet_club" do
    patch :update, id: @pet_club, pet_club: { name: @pet_club.name }
    assert_redirected_to pet_club_path(assigns(:pet_club))
  end

  test "should destroy pet_club" do
    assert_difference('PetClub.count', -1) do
      delete :destroy, id: @pet_club
    end

    assert_redirected_to pet_clubs_path
  end
end
