require 'spec_helper'

describe Article do
  context "[Set Title and Body]" do
    before do
      @article = Article.new(
          title: "My First Blog",
          body: "This is my first article."
      )
    end
    it "Set Title" do
      expect(@article.title).to eq "My First Blog"
    end
    it "Set Body" do
      expect(@article.body).to eq "This is my first article."
    end
  end
end