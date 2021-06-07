require './lib/activity'
require 'rspec'

RSpec.describe Activity do
  describe 'instantiation' do
    it 'exists' do
      activity = Activity.new("Brunch")
      expect(activity).to be_a(Activity)
    end

    it 'has attributes' do
      activity = Activity.new("Brunch")
      expect(activity.name).to eq("Brunch")
      expect(activity.participants).to eq({})
    end
  end
end