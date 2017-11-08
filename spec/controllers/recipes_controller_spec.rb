require 'rails_helper'

RSpec.describe RecipesController, type: :controller do
  let!(:recipe) {Recipe.create!(name:"Dave's Grumpy Nachos", difficulty_level: 5, prep_time: 25, directions:"Layer the ingredients, its not that hard", user: dave, category: 'Appetizer')}

  describe "GET #index" do
    it "responds with status code 200" do
      get :index
      expect(response).to have_http_status 200
    end

    it "assigns the recent recipe as "

    it "renders the :index template"
  end

  # describe "GET #show" do
  #   it "responds with status code 200" do
  #     get :show, { id: recipe.id }
  #     expect(response).to have_http_status 200
  #   end

  #   it "assigns the correct recipe as @recipe" do
  #     get :show, { id: recipe.id }
  #     expect(assigns(:recipe)).to eq(recipe)
  #   end

  #   it "renders the :show template" do
  #     get :show, { id: recipe.id }
  #     expect(response).to render_template(:show)
  #   end
  # end

  # describe "GET #new" do
  #   it "responds with status code 200"

  #   it "assigns a new recipe to @recipe" do
  #     get :new
  #     expect(assigns(:recipe)).to be_a_new recipe
  #   end

  #   it "renders the :new template"
  # end

  # describe "POST #create" do
  #   context "when valid params are passed" do
  #     it "responds with status code 302"

  #     it "creates a new recipe in the database"

  #     it "assigns the newly created recipe as @recipe"

  #     it "sets a notice that the recipe was successfully created"

  #     it "redirects to the created recipe"
  #   end

  #   context "when invalid params are passed" do
  #     it "responds with status code 422: Unprocessable Entity" do
  #       post :create, { recipe: { user_throw: "pineapple" } }
  #       expect(response).to have_http_status 422
  #     end

  #     it "does not create a new recipe in the database"

  #     it "assigns the unsaved recipe as @recipe"

  #     it "renders the :new template"
  #   end
  # end

  # describe "DELETE #destroy" do
  #   it "responds with status code 302" do
  #     delete :destroy, { id: recipe.id }
  #     expect(response).to have_http_status 302
  #   end

  #   it "destroys the requested recipe" do
  #     expect { delete(:destroy, { id: recipe.id }) }.to change(recipe, :count).by(-1)
  #   end

  #   it "sets a notice that the recipe was destroyed" do
  #     delete :destroy, { id: recipe.id }
  #     expect(flash[:notice]).to match /recipe was successfully destroyed/
  #   end

  #   it "redirects to the recipes list" do
  #     delete :destroy, { id: recipe.id }
  #     expect(response).to redirect_to recipes_url
  #   end
  # end

end
