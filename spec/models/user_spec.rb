require 'rails_helper'


describe User do 
    it { is_expected.to have_many :visits }
    it { is_expected.to have_many :gardens }
end
