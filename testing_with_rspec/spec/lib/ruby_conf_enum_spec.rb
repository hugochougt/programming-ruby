
describe RubyConfEnum do
  subject { RubyConfEnum.new }
  before(:all) do
    @enum = [1, 2, 3, 4, 5]
  end

  it "returns first 3 elements" do
    expect(subject.first_n_elements(@enum, 3)).to eq [1, 2 ,3]
  end

  it "returns true when any are odd" do
    expect(subject.any_are_odd(@enum)).to eq true
  end

  it "returns false when test #any_are_odd" do
    expect(subject.all_are_odd(@enum)).to eq false
  end

  it "returns false when test #none_are_odd" do
    expect(subject.none_are_odd(@enum)).to eq false
  end

  it "squares each element" do
    expect(subject.square_each_element(@enum)).to eq [1, 4, 9, 16, 25]
  end

  it "returns even numbers" do
    expect(subject.find_evens(@enum)).to eq [2, 4]
  end

  it "ignores even numbers" do
    expect(subject.ignore_evens(@enum)).to eq [1, 3, 5]
  end

  it "returns first even number" do
    expect(subject.find_first_even(@enum)).to eq 2
  end

  it "returns pairs of squares" do
    expect(subject.pairs_of_squares(@enum)).to eq [[1, 1], [2, 4], [3, 9], [4, 16], [5, 25]]
  end

  it "returns pairs of squares using #more_pairs_of_squares" do
    expect(subject.more_pairs_of_squares(@enum)).to eq [[1, 1], [2, 4], [3, 9], [4, 16], [5, 25]]
  end

  it "filter valid email addresses" do
    addrs = %w[user@foo,com user@foo.COM A_US-ER@f.b.org
               user_at_foo.org example.user@foo.@bar_baz.com
               frst.lst@foo.jp foo@bar+baz.com foo@bar..com a+b@baz.cn]
     valid_addrs = %w[user@foo.COM A_US-ER@f.b.org frst.lst@foo.jp a+b@baz.cn]

     expect(subject.filter_valid_email_addresses(addrs)).to eq valid_addrs
  end

  it "splits even and odd numbers into two arrays" do
    expect(subject.evens_and_odds(@enum)).to eq [[2, 4], [1, 3, 5]]
  end

  it "returns first n prime numbers" do
    expect(subject.first_n_primes(5)).to eq [2, 3, 5, 7, 11]
  end
end