require './myhash'

RSpec.describe MyHash do
  let(:value) { 5 }

  context 'when create new object' do
    it 'create instance and set element to it' do
      hash = MyHash.new
      hash['a'] = value
      expect(hash['a']).to eq(value)
    end
  end

  context 'when we update exist key' do
    let!(:hash) { MyHash.new }
    let!(:hash) { { a: value } }
    let(:new_value) { 10 }

    it 'update value of exist key' do
      hash[:a] = new_value
      expect(hash[:a]).to eq(new_value)
      expect(hash[:a]).not_to eq(value)
    end
  end
end
