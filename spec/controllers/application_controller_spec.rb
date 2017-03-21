# frozen_string_literal: true
require 'rails_helper'

RSpec.describe ApplicationController, type: :controller do
  describe 'GET #index' do
    it 'renders :index template' do
      get :index
      expect(response).to render_template(:index)
    end
  end

  describe 'GET #links' do
    it 'renders :index template' do
      get :links
      expect(response).to render_template(:links)
    end
  end
end
