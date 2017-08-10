require 'towers'
require 'rspec'


describe Game do

  subject(:game) { Game.new }

  describe '#initialize' do
    it "sets up initial stacks" do
      expect(game.stacks).to eq([[3,2,1],[],[]])
    end
  end

  describe '#move_disk' do
    it "moves disk from one tower to another" do

      game.move_disk(0,1)
      expect(game.stacks).to eq([[3,2],[1],[]])
    end
  end

  describe 'valid_move?' do
    it "does not allow move onto smaller disk" do
      game.stacks = [[3,2],[1],[]]
      expect {game.move_disk(0,1)}.to raise_error(RuntimeError)
    end

    it "protects against nonexistent stacks" do
      expect{ game.move_disk(4,1)}.to raise_error(RuntimeError)
    end

    it "can't pull from an empty stack" do
      expect{game.move_disk(2,1)}.to raise_error(RuntimeError)
    end

  end

  describe '#won?' do
    it "checks if game is won" do
      game.stacks = [[],[3,2,1],[]]
      expect(game.won?).to be(true)
    end

    it "checks if game is not yet won" do
      game.stacks = [[],[3,2],[1]]
      expect(game.won?).to be(false)
    end
  end

end
