require 'rails_helper'


describe Garden do 
    it { is_expected.to have_many :visits }
    it { is_expected.to have_many :users }

    describe 'filtering' do 
        it 'can filter by address' do 
            garden = create :garden, address: '123banana'
            create_list :garden, 3, address: 'octopus'
            expect(Garden.filter_by_address(Garden.all, {address: '123Banana'})).to contain_exactly garden
        end

        it 'can filter by boro' do 
            garden = create :garden, boro: 'Brooklyn'
            create_list :garden, 3, boro: 'Queens'
            expect(Garden.filter_by_boro(Garden.all, {boro: 'brooklyn'})).to contain_exactly garden
        end
        
    end
end
