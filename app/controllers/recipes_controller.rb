class RecipesController < ApplicationController
  load_and_authorize_resource
  before_action :authenticate_user!
  # GET /recipes or /recipes.json
  def index
    @recipes = Recipe.includes(:user).where(user: current_user)
  end

  # GET /recipes/1 or /recipes/1.json
  def show
    @recipe = Recipe.includes(:user).find(params[:id])
    @ingredients = Food.find_by_sql(
      "SELECT foods.name, foods.price, recipe_foods.quantity, recipe_foods.id as ingredient_id
      FROM foods INNER JOIN recipe_foods ON foods.id = recipe_foods.food_id
      WHERE foods.user_id = #{current_user.id} AND recipe_foods.recipe_id = #{@recipe.id}"
    )
  end

  # GET /recipes/new
  def new
    @recipe = Recipe.new
  end

  # GET /recipes/1/edit
  def edit; end

  # PATCH/PUT /recipes/1 or /recipes/1.json
  def update
    respond_to do |format|
      if @recipe.update(recipe_params)
        format.html { redirect_to recipe_url(@recipe), notice: 'Recipe was successfully updated.' }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  # POST /recipes or /recipes.json
  def create
    @user = current_user
    @recipe = Recipe.create(recipe_params)
    @recipe.user = @user
    respond_to do |format|
      if @recipe.save
        format.html { redirect_to recipes_path, notice: 'Recipe was successfully created.' }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recipes/1 or /recipes/1.json
  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy

    respond_to do |format|
      format.html { redirect_to recipes_path, notice: 'Recipe was successfully destroyed.' }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.

  def recipe_params
    params.require(:recipe).permit(:name, :cooking_time, :preparation_time, :description, :public)
  end

  def set_recipe
    @recipe = Recipe.find(params[:id])
  end
end
