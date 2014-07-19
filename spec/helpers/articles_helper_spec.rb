require 'spec_helper'

# Specs in this file have access to a helper object that includes
# the ArticlesHelper. For example:
#
# describe ArticlesHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
describe ArticlesHelper, :type => :helper do
  describe '#posted_on' do
    before do
      @now = Time.now
      @article = Article.create(
          title: "First Post",
          body: "Hello"
      )
    end

    it {
      expect(rendered).to eq(
                              "<html><body>Hello</body></html>"
                          )
    }
  end
end