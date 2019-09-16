require 'rails_helper'

RSpec.describe TicketsController, type: :controller do
  let(:ticket) { create(:ticket) }

  describe 'GET #index' do
    let(:tickets) { create_list(:ticket, 2) }

    before { get :index }

    it 'populates an array of all tickets' do
      expect(assigns(:tickets)).to match_array(tickets)
    end

    it 'renders index view' do
      expect(response).to render_template :index
    end
  end
end
