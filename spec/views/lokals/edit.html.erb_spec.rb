require 'rails_helper'

RSpec.describe "lokals/edit", type: :view do
  before(:each) do
    @lokal = assign(:lokal, Lokal.create!(
      ulica: "MyString",
      cena: 1
    ))
  end

  it "renders the edit lokal form" do
    render

    assert_select "form[action=?][method=?]", lokal_path(@lokal), "post" do

      assert_select "input[name=?]", "lokal[ulica]"

      assert_select "input[name=?]", "lokal[cena]"
    end
  end
end
