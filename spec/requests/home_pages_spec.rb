require 'rails_helper'

RSpec.describe "HomePages", type: :request do
  describe "able to access the index page from home" do
    it "get index page from nav bar" do
      get 'page#index'
      'page#index'.should have_link(href="/index")
    end
  end
end
