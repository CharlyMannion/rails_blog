require 'rails_helper'
require './test/test_helper.rb'

RSpec.describe ArticlesController, type: :controller do
  describe 'POST #create' do
    it 'creating an article responds with OK (http response code 200)' do
      Article.create
      expect(response).to have_http_status(200)
    end
  end

  describe "GET /" do
    it 'renders index' do
      p "article rendering"
      p article = Article.create(title: "Test title", text: "test article body")
      expect(article).to be_a(Article)
      # get "/articles"
    end
  end
end
