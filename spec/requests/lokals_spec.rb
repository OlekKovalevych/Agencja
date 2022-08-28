# frozen_string_literal: true

require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe '/lokals', type: :request do
  # This should return the minimal set of attributes required to create a valid
  # Lokal. As you add validations to Lokal, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) do
    skip('Add a hash of attributes valid for your model')
  end

  let(:invalid_attributes) do
    skip('Add a hash of attributes invalid for your model')
  end

  describe 'GET /index' do
    it 'renders a successful response' do
      Lokal.create! valid_attributes
      get lokals_url
      expect(response).to be_successful
    end
  end

  describe 'GET /show' do
    it 'renders a successful response' do
      lokal = Lokal.create! valid_attributes
      get lokal_url(lokal)
      expect(response).to be_successful
    end
  end

  describe 'GET /new' do
    it 'renders a successful response' do
      get new_lokal_url
      expect(response).to be_successful
    end
  end

  describe 'GET /edit' do
    it 'renders a successful response' do
      lokal = Lokal.create! valid_attributes
      get edit_lokal_url(lokal)
      expect(response).to be_successful
    end
  end

  describe 'POST /create' do
    context 'with valid parameters' do
      it 'creates a new Lokal' do
        expect do
          post lokals_url, params: { lokal: valid_attributes }
        end.to change(Lokal, :count).by(1)
      end

      it 'redirects to the created lokal' do
        post lokals_url, params: { lokal: valid_attributes }
        expect(response).to redirect_to(lokal_url(Lokal.last))
      end
    end

    context 'with invalid parameters' do
      it 'does not create a new Lokal' do
        expect do
          post lokals_url, params: { lokal: invalid_attributes }
        end.to change(Lokal, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post lokals_url, params: { lokal: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe 'PATCH /update' do
    context 'with valid parameters' do
      let(:new_attributes) do
        skip('Add a hash of attributes valid for your model')
      end

      it 'updates the requested lokal' do
        lokal = Lokal.create! valid_attributes
        patch lokal_url(lokal), params: { lokal: new_attributes }
        lokal.reload
        skip('Add assertions for updated state')
      end

      it 'redirects to the lokal' do
        lokal = Lokal.create! valid_attributes
        patch lokal_url(lokal), params: { lokal: new_attributes }
        lokal.reload
        expect(response).to redirect_to(lokal_url(lokal))
      end
    end

    context 'with invalid parameters' do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        lokal = Lokal.create! valid_attributes
        patch lokal_url(lokal), params: { lokal: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe 'DELETE /destroy' do
    it 'destroys the requested lokal' do
      lokal = Lokal.create! valid_attributes
      expect do
        delete lokal_url(lokal)
      end.to change(Lokal, :count).by(-1)
    end

    it 'redirects to the lokals list' do
      lokal = Lokal.create! valid_attributes
      delete lokal_url(lokal)
      expect(response).to redirect_to(lokals_url)
    end
  end
end
