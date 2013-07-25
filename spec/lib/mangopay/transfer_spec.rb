require_relative '../../spec_helper'

describe MangoPay::Transfer do
  include_context 'users'
  include_context 'wallets'
  include_context 'transfer'

  describe 'CREATE' do
    it 'creates a new Transfer' do
      expect(new_transfer['Id']).not_to be_nil
    end
  end

  describe 'FETCH' do
    it 'fetches a Transfer' do
      transfer = MangoPay::Transfer.fetch(new_transfer['Id'])
      expect(transfer['Id']).to eq(new_transfer['Id'])
    end
  end
end
