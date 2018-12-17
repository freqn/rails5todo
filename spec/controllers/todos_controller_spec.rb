require 'rails_helper'

RSpec.describe TodosController, type: :controller do
  describe 'with basic crud actions' do
    let (:todo) {create(:todo)}

    describe 'GET #new' do
      it 'returns a successful response' do
        get :new
        expect(response.status).to eq(200)
      end
    end

    describe 'GET #index' do
      it 'has a 200 status code' do
        get :index
        expect(response.status).to eq(200)
      end
    end

    describe 'POST #create' do
      let(:params) do
        { title: "Test", description: "test description" } 
      end
      it 'returns a 302' do
        post :create, params: {todo: params}
        expect(response.status).to eq(302)
      end
    end
  

    #show
    #new
    #edit
    #create
    #delete
  end
end