
describe Zombie do
  subject(:zombie) { Zombie.new }
  it { should respond_to(:name) }

#  its(:name) { should == "Ash" }

=begin
  it "is hungry" do
    zombie = Zombie.new
    zombie.should be_hungry
  end
=end
  it { should be_hungry }

  context "when hungry" do
    it "craves brains"
     context "with a veggie preference" do
      it "still craves brains"
      it "prefers vegan brains"
    end
  end
end
