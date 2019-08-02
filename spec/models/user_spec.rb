# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  context 'validation tests' do
    it 'ensures first name is present' do
      user = User.new(last_name: 'Last', email: 'email@email.com').save
      expect(user).to eq(false)
    end

    it 'ensures last name is present' do
      user = User.new(first_name: 'First', email: 'email@email.com').save
      expect(user).to eq(false)
    end

    it 'ensures email is present' do
      user = User.new(first_name: 'First', last_name: 'Last').save
      expect(user).to eq(false)
    end

    it 'should save succesfully' do
      user = User.new(first_name: 'First', last_name: 'Last', email: 'email@email.com').save
      expect(user).to eq(true)
    end
  end
  context 'scope tests' do
  end
end
