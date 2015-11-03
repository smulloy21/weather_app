require 'rails_helper'

describe Forcast do
  it { should validate_presence_of :latitude }
  it { should validate_presence_of :longitude }
  it { should validate_presence_of :address }
end
