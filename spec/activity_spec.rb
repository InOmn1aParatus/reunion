require './lib/activity'
require 'rspec'

RSpec.describe Activity do
  describe 'instantiation' do
    activity = Activity.new("Brunch")
    expect(activity).to be_a(Activity)
  end
end