require_relative   'rspec_helper'

RSpec.describe Cell do

  describe 'Attributes' do
    it { should respond_to :x }
    it { should respond_to :y }
    it { should respond_to :value }
    it { should respond_to :box_number }
  end
end

