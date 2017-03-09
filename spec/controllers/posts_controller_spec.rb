# frozen_string_literal: true
require 'rails_helper'

RSpec.describe PostsController, type: :controller do
  describe 'guest user' do
    describe 'GET #index' do
      it 'renders :index template' do
        get :index
        expect(response).to render_template(:index)
      end
    end
  end
end

#   describe 'GET #show' do
#     let(:post) { FactoryGirl.create(:post) }
#
#     it 'renders :show template' do
#       get :show, params: { id: post.id }
#       expect(response).to render_template(:show)
#     end
#
#     it 'assings requested post to @post' do
#       get :show, params: { id: post }
#       expect(assigns(:post)).to eq(post)
#     end
#   end
#
#   describe 'GET #new' do
#     it 'redirects to login page' do
#       get :new
#       expect(response).to redirect_to(new_user_session_url)
#     end
#   end
#
#   describe 'POST #create' do
#     it 'redirects to login page' do
#       post :create, params: { post: FactoryGirl.create(:post) }
#       expect(response).to redirect_to(new_user_session_url)
#     end
#   end
#
#   describe 'GET #edit' do
#     it 'redirects to login page' do
#       get :edit, params: { id: FactoryGirl.create(:post) }
#       expect(response).to redirect_to(new_user_session_url)
#     end
#   end
#
#   describe 'PUT #update' do
#     it 'redirects to login page' do
#       put :update, params: { id: FactoryGirl.create(:post), post: FactoryGirl.attributes_for(:post) }
#       expect(response).to redirect_to(new_user_session_url)
#     end
#   end
#
#   describe 'DELETE #destroy' do
#     it 'redirects to login page' do
#       delete :destroy, params: { id: FactoryGirl.create(:post) }
#       expect(response).to redirect_to(new_user_session_url)
#     end
#   end
# end
#
# describe 'authenticated user' do
#   let(:user) { FactoryGirl.create(:user) }
#   before do
#     sign_in(user)
#   end
#
#   describe 'GET #index' do
#     it 'renders :index template' do
#       get :index
#       expect(response).to render_template(:index)
#     end
#   end
#
#   describe 'GET #show' do
#     let(:post) { FactoryGirl.create(:post) }
#
#     it 'renders :show template' do
#       get :show, params: { id: post.id }
#       expect(response).to render_template(:show)
#     end
#     it 'assigns requested post to @post' do
#       get :show, params: { id: post }
#       expect(assigns(:post)).to eq(post)
#     end
#   end
#
#   describe 'GET #new' do
#     it "renders :new template" do
#       get :new
#       expect(response).to render_template(:new)
#     end
#
#     it "assigns new post to @post" do
#       get :new
#       expect(assigns(:post)).to be_a_new(post)
#     end
#   end
#
#   describe 'POST #create' do
#     context 'valid data' do
#       let(:valid_data) { FactoryGirl.attributes_for(:post) }
#
#       it 'redirects to posts#show' do
#         post :create, params: { post: valid_data }
#         expect(response).to redirect_to(post_path(assigns[:post]))
#       end
#       it 'creates new post in database' do
#         expect{
#           post :create, params: { post: valid_data }
#         }.to change(post, :count).by(1)
#       end
#     end
#
#     context 'invalid data' do
#       let(:invalid_data) { FactoryGirl.attributes_for(:post, name: nil) }
#
#       it 'renders :new template' do
#         post :create, params: { post: invalid_data }
#         expect(response).to render_template(:new)
#       end
#       it 'doesnt create new post in the database' do
#         expect{
#           post :create, params: { post: invalid_data }
#         }.not_to change(post, :count)
#       end
#     end
#   end
#
#   describe 'GET #edit' do
#     let(:post) { FactoryGirl.create(:post) }
#
#     it 'renders :edit template' do
#       get :edit, params: { id: post.id }
#       expect(response).to render_template(:edit)
#     end
#     it 'assigns the requested post to template' do
#       get :edit, params: { id: post.id }
#       expect(assigns(:post)).to eq(post)
#     end
#   end
#
#   describe 'PUT #update' do
#     let(:post) { FactoryGirl.create(:post) }
#
#     context 'valid data' do
#       let(:valid_data) { FactoryGirl.attributes_for(:post, name: 'New Name') }
#
#       it 'redirects to post#show' do
#         put :update, params: { id: post.id, post: valid_data }
#         expect(response).to redirect_to(post)
#       end
#       it 'updates post in the database' do
#         put :update, params: { id: post.id, post: valid_data }
#         post.reload
#         expect(post.name).to eq('New Name')
#       end
#     end
#
#     context 'invalid data' do
#       let(:invalid_data) { FactoryGirl.attributes_for(:post, name: '', description: 'new') }
#
#       it 'renders :edit template' do
#         put :update, params: { id: post.id, post: invalid_data }
#         expect(response).to render_template(:edit)
#       end
#       it 'doesnt update post in the database' do
#         put :update, params: { id: post.id, post: invalid_data }
#         post.reload
#         expect(post.description).not_to eq('new')
#       end
#     end
#   end
#
#   describe 'DELETE #destroy' do
#     let(:post) { FactoryGirl.create(:post) }
#
#     it 'redirects to post#index' do
#       delete :destroy, params: { id: post.id }
#       expect(response).to redirect_to(posts_path)
#     end
#
#     it 'deletes post in the database' do
#       delete :destroy, params: { id: post.id }
#       expect(post.exists?(post.id)).to be_falsy
#     end
#   end
#
