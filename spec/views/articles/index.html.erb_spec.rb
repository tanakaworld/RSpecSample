require 'spec_helper'

describe "articles/index.html.erb", :type => :view do

  before do
    assign :articles, [
        Article.create(
            title: "My first blog",
            body: "Hello"
        )
    ]
    render
  end

  it "Render article title" do
    expect(rendered).to match /My first blog/
  end

  it "Render article body" do
    expect(rendered).to match /Hello/
  end

end
