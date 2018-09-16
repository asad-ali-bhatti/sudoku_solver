require_relative  'rspec_helper'

RSpec.describe Cell do 
  describe 'Attributes' do 
    it {should respond_to :x} 
    it {should respond_to :y}
  end

end

