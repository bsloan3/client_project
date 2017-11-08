require 'rails_helper'

RSpec.describe RecipesController, type: :controller do
  let!(:dave) {User.create(username: 'dave', email: "dave@d.com", password: 'brad')}
  let!(:recipe) {Recipe.create!(name:"Dave's Grumpy Nachos", difficulty_level: 5, prep_time: 25, directions:"Layer the ingredients, its not that hard", user: dave, category: 'Appetizer')}

  describe "GET #index" do
    it "responds with status code 200" do
      get :index
      expect(response).to have_http_status 200
    end
# Figure out how to test sort within search

    it "renders the :index template" do
      get :index
      expect(response).to render_template(:index)
    end
  end

  describe "GET #show" do
    it "responds with status code 200" do
      get :show, { id: recipe.id }
      expect(response).to have_http_status 200
    end
  end
end
