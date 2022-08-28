require 'rails_helper'

RSpec.describe "lokals/show", type: :view do
  before(:each) do
    @lokal = assign(:lokal, Lokal.create!(
      ulica: "Ulica",
      cena: 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Ulica/)
    expect(rendered).to match(/2/)
  end
end
