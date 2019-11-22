class PetsController < ApplicationController
before_action :set_pet, only: [:show, :edit, :update, :destroy ] 

  
  # All the pets or all of our model
  def index
    @pets = Pet.all
    # @pets = [pets]
  end

  def show
    # Before Action
    # This grabs a specific pet by their ID
    # Each id is unique to each model object
    # @pet
  end

  def new
    # View Only!
  # Won't need an ID
  # So show form
    @pet = Pet.new
  end
  
  def create
    @pet = Pet.new(pet_params)
    if @pet.save
      redirect_to pets_path
    else
      render :new
    end
  end
  
  def edit
    # View Only!
    # Will need ID so get it somehow
    # Then update method
    # BEFORE ACTION
  end

  def update
    #@pet
    if @pet.update(pet_params)
      redirect_to pet_path
    else
      render :edit
    end
  end

  def destroy
    # BEFORE ACTION
  end

  private

  def pet_params
    params.require(:pet).permit(:name, :age)
  end

  def set_pet
    @pet = Pet.find(params[:id])
  end



end
