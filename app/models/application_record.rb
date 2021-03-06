# frozen_string_literal: true

class ApplicationRecord < ActiveRecord::Base
  include Bg::Deferrable::Behavior
  include Sanitizable
  include Attributable

  self.abstract_class = true
end
