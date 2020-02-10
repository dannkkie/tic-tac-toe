# frozen_string_literal: true

class Player
    attr_accessor :name, :assigned_character
  
    def initialize(name = nil, assigned_character = nil)
      @name = name
      @assigned_character = assigned_character
    end
  end