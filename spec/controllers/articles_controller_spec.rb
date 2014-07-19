require 'spec_helper'

describe ArticlesController, :type => :controller do

  describe "GET 'index'" do
    before do
      @article1 = Aritcle.create(
          title: "Article 1",
          body: "Hello"
      )
      @article2 = Article.create(
          title: "Article 2",
          body: "World"
      )
      get 'index'
    end
    it "returns http success" do
      expect(response).to be_success
    end
    it "returns All articles" do
      expect(assigns[:articles]).to match_array(
                                        [@article1, @article2]
                                    )
    end
  end

end
