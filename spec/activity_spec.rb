require './lib/activity'
require 'rspec'

RSpec.describe Activity do
  describe 'instantiation' do
    before :each do
      @activity = Activity.new("Brunch")
    end
    
    it 'exists' do
      expect(@activity).to be_a(Activity)
    end

    it 'has attributes' do
      expect(@activity.name).to eq("Brunch")
      expect(@activity.participants).to eq({})
    end
  end

  describe 'methods' do
    before :each do
      @activity = Activity.new("Brunch")
    end

    it 'adds participants to activity' do
      @activity.add_participant("Maria", 20)
      expect(@activity.participants).to eq({"Maria" => 20})
      @activity.add_participant("Luther", 40)
      expect(@activity.participants).to eq({"Maria" => 20, "Luther" => 40})
    end

    it 'returns total cost' do
      @activity.add_participant("Maria", 20)
      expect(@activity.total_cost).to eq(20)
      @activity.add_participant("Luther", 40)
      expect(@activity.total_cost).to eq(60)
    end

    it 'splits cost between participants' do
      @activity.add_participant("Maria", 20)
      @activity.add_participant("Luther", 40)
      expect(@activity.split).to eq(30)
    end
  end
end