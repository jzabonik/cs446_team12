require 'test_helper'

class TrainerPokemonsControllerTest < ActionController::TestCase
  setup do
    @trainer_pokemon = trainer_pokemons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:trainer_pokemons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create trainer_pokemon" do
    assert_difference('TrainerPokemon.count') do
      post :create, trainer_pokemon: { pokemon_id: @trainer_pokemon.pokemon_id, trainer_id: @trainer_pokemon.trainer_id }
    end

    assert_redirected_to trainer_pokemon_path(assigns(:trainer_pokemon))
  end

  test "should show trainer_pokemon" do
    get :show, id: @trainer_pokemon
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @trainer_pokemon
    assert_response :success
  end

  test "should update trainer_pokemon" do
    patch :update, id: @trainer_pokemon, trainer_pokemon: { pokemon_id: @trainer_pokemon.pokemon_id, trainer_id: @trainer_pokemon.trainer_id }
    assert_redirected_to trainer_pokemon_path(assigns(:trainer_pokemon))
  end

  test "should destroy trainer_pokemon" do
    assert_difference('TrainerPokemon.count', -1) do
      delete :destroy, id: @trainer_pokemon
    end

    assert_redirected_to trainer_pokemons_path
  end
end
