require 'rails_helper'

RSpec.describe ArticlesController, type: :controller do
  describe 'POST /' do
    it 'creating an article responds with 200' do
      Article.create
      expect(response).to have_http_status(200)
    end
  end
end
