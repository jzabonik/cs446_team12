require 'test_helper'

class PokemonTrainersControllerTest < ActionController::TestCase
  setup do
    @pokemon_trainer = pokemon_trainers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pokemon_trainers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pokemon_trainer" do
    assert_difference('PokemonTrainer.count') do
      post :create, pokemon_trainer: {  }
    end

    assert_redirected_to pokemon_trainer_path(assigns(:pokemon_trainer))
  end

  test "should show pokemon_trainer" do
    get :show, id: @pokemon_trainer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pokemon_trainer
    assert_response :success
  end

  test "should update pokemon_trainer" do
    patch :update, id: @pokemon_trainer, pokemon_trainer: {  }
    assert_redirected_to pokemon_trainer_path(assigns(:pokemon_trainer))
  end

  test "should destroy pokemon_trainer" do
    assert_difference('PokemonTrainer.count', -1) do
      delete :destroy, id: @pokemon_trainer
    end

    assert_redirected_to pokemon_trainers_path
  end
end
