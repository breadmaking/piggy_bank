require_relative "../lib/piggy_bank.rb"



describe PiggyBank do

# As a user,
# So that I can save money
# I can put coins in my piggy bank
  describe "#deposit" do
    it "should accept coins" do
      piggy_bank = PiggyBank.new
      expect(piggy_bank).to respond_to(:deposit).with(1).argument
    end
  end

# As a user,
# So that I know whether there are coins in my piggy bank
# I can shake it, and it will “cling” if there is money in it
  describe "#shake" do
    it "rattle when coins are inside" do
      piggy_bank = PiggyBank.new
      expect(piggy_bank.shake(1)).to eq 'cling'
    end

    it "doesnt rattle when there are no coins inside" do
      piggy_bank = PiggyBank.new
      expect(piggy_bank.shake(0)).to eq 'silence'
    end
  end

# As a user,
# So I can enjoy my hard earned savings
# I can break my piggy bank and get back the number or coins that I had put in
  describe "#break" do
    it "break piggy bank and return total" do
      piggy_bank = PiggyBank.new
      expect(piggy_bank.break(6)).to eq 6
    end
  end

end