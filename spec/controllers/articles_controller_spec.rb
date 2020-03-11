require 'rails_helper'

RSpec.describe ArticlesController, type: :controller do
  describe 'POST #create' do
    it 'creating an article responds with OK (http response code 200)' do
      Article.create
      expect(response).to have_http_status(200)
    end
    # it "creates an article" do
    #   expect { Article.create }.to change { Article.count }.by(1)
    # end
  end

  describe "GET /" do
    it 'renders index' do
      article = Article.create(title: "Test title", text: "test article body")
      # get "/articles/new"
    end
  end
end
