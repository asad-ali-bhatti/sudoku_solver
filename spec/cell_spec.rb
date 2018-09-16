require_relative   'rspec_helper'

=begin
  Game board is designed in following format
  each cell format is [x,y, value]

 [0,0, ?] [0,1, ?] .... [0,8, ?]
 [1,0, ?] [1,1, ?] .... [1,8, ?]
 ....     ....          ....
 ....     ....          ....
 ....     ....          ....
 [8,0, ?] [8,1, ?] .... [8,8, ?]

 Also there are 6 boxes. each having 9 cells

 [0,0] [0,1] [0.2]
 [1,0] [1,1] [1,2]
 [2,0] [2,1] [2.2]
=end

RSpec.describe Cell do
  let(:x) { 2 }
  let(:y) { 3 }

  subject { Cell.new(x,y, 9) }

  describe 'Attributes' do

    it { should respond_to :x }
    it { should respond_to :y }
    it { should respond_to :value }
  end

  describe '#box_coords' do

    it { should respond_to :box_coords }

    it 'should return hash with box location' do
      expect(subject.box_coords.keys).to be_eql([:x, :y])
    end

    it 'should calculate coords of each cell' do
      expect(subject.box_coords[:x]).to be_eql(0) # 2/3 == 0
      expect(subject.box_coords[:y]).to be_eql(1) # 3/3 == 1
    end
  end
end

