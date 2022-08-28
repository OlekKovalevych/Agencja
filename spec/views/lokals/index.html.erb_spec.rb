# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'lokals/index', type: :view do
  before(:each) do
    assign(:lokals, [
             Lokal.create!(
               ulica: 'Ulica',
               cena: 2
             ),
             Lokal.create!(
               ulica: 'Ulica',
               cena: 2
             )
           ])
  end

  it 'renders a list of lokals' do
    render
    assert_select 'tr>td', text: 'Ulica'.to_s, count: 2
    assert_select 'tr>td', text: 2.to_s, count: 2
  end
end
