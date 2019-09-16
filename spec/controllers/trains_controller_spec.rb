require 'rails_helper'

RSpec.describe TrainsController, type: :controller do
  let(:train) { create(:train) }

  describe 'GET #index' do
    let(:trains) { create_list(:train, 2) }

    before { get :index }

    it 'populates an array of all trains' do
      expect(assigns(:trains)).to match_array(trains)
    end

    it 'renders index view' do
      expect(response).to render_template :index
    end
  end
  #
  # describe 'GET #show' do
  #   before { get :show, params: { id: trains } }
  #
  #   it 'assigns the requested train to @train' do
  #     expect(assigns(:train)).to eq question
  #   end
  #
  #   it 'renders show view' do
  #     expect(response).to render_template :show
  #   end
  # end
  #
  # describe 'GET #new' do
  #   before { get :new }
  #
  #   it 'assigns a new Trains to @train' do
  #     expect(assigns(:train)).to be_a_new(Train)
  #   end
  #
  #   it 'renders new view' do
  #     expect(response).to render_template :new
  #   end
  # end
  #
  # describe 'POST #create' do
  #   context 'with valid attributes' do
  #     it 'saves the new train in the database' do
  #       expect { post :create,
  #                     params: { train: attributes_for(:train) } }.to change(Train, :count).by(1)
  #     end
  #
  #     it 'redirects to show view' do
  #       post :create, params: { train: attributes_for(:train) }
  #       expect(response).to redirect_to train_path(assigns(:train))
  #     end
  #   end
  #
  #   context 'with invalid attributes' do
  #     it 'does not save the question' do
  #       expect { post :create,
  #                     params: { train: attributes_for(:invalid_train) } }.to_not change(Train, :count)
  #     end
  #
  #     it 're-renders new view' do
  #       post :create, params: { train: attributes_for(:invalid_train) }
  #       expect(response).to render_template :new
  #     end
  #   end
  # end
end