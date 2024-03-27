require 'test/unit'
require 'test_helper'
require 'main/creator'

describe Main::Creator do
    it 'delete the restaurant' do
        restaurant=Restaurant.last.id
        expect { Main::Creator.destroy(restaurant.id) }.to change { Restaurant.count }.by(-1)
    end
end