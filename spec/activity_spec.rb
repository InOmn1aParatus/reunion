require './lib/activity'
require 'rspec'

RSpec.describe Activity do
  before :all do
    @activity = Activity.new("Brunch")
  end

  describe 'instantiation' do
    it 'exists' do
      expect(@activity).to be_a(Activity)
    end

    it 'has attributes' do
      expect(@activity.name).to eq("Brunch")
      expect(@activity.participants).to eq({})
    end
  end

  describe 'methods' do
    it 'adds participants to activity' do
      @activity.add_participant("Maria", 20)
      expect(@activity.participants).to eq({"Maria" => 20})
    end
  end
end