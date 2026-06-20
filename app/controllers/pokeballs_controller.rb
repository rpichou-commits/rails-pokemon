class PokeballsController < ApplicationController
  def create
    @pokemon = Pokemon.find(params[:pokemon_id])
    @pokeball = @pokemon.pokeballs.new(pokeball_params)
    if @pokeball.save
      redirect_to @pokemon
    else
      render "pokemons/show", status: :unprocessable_entity
    end
  end

  private

  def pokeball_params
    params.require(:pokeball).permit(:caught_on, :location, :trainer_id)
  end
end
