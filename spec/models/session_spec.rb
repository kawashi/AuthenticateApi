require 'rails_helper'

RSpec.describe Session, type: :model do
  let!(:user) { create(:user) }

  describe 'self.create' do
    context 'ログインに成功した時' do
      it{ expect(Session.create(user_id: 'test', password: 'test').length).to eq 134 }
    end
  end
end
