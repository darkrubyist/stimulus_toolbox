# == Schema Information
#
# Table name: projects
#
#  id                    :bigint           not null, primary key
#  description           :text
#  github_data           :jsonb            not null
#  github_name           :text
#  github_sychronized_at :datetime
#  github_url            :text
#  human_name            :text             not null
#  license_name          :text
#  license_url           :text
#  npm_data              :jsonb            not null
#  npm_name              :text
#  npm_sychronized_at    :datetime
#  npm_url               :text
#  tags                  :text             default([]), not null, is an Array
#  url                   :text
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#
# Indexes
#
#  index_projects_on_github_name  (github_name) UNIQUE
#  index_projects_on_github_url   (github_url) UNIQUE
#  index_projects_on_human_name   (human_name) UNIQUE
#  index_projects_on_npm_name     (npm_name) UNIQUE
#  index_projects_on_npm_url      (npm_url) UNIQUE
#  index_projects_on_tags         (tags) USING gin
#  index_projects_on_url          (url) UNIQUE
#
require "test_helper"

class ProjectTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end