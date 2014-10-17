
describe List do
  describe 'instantiation' do
    let!(:list) { build(:list) }
    it 'instantiates a list' do
      expect(list.class.name).to eq("List")
    end
  end
end
