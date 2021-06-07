require './lib/activity'
require 'rspec'

RSpec.describe Activity do
  describe 'instantiation' do
    it 'exists' do
      activity = Activity.new("Brunch")
      expect(activity).to be_a(Activity)
    end
  end
end