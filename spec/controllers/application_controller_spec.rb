# frozen_string_literal: true
require 'rails_helper'

RSpec.describe ApplicationController, type: :controller do
  describe 'GET #index' do
    it 'renders :index template' do
      get :index
      expect(response).to render_template(:index)
    end
  end

  describe 'GET #bookmarks' do
    it 'renders :index template' do
      get :bookmarks
      expect(response).to render_template(:bookmarks)
    end
  end
end
