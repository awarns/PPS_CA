require 'rubygems'
require 'cucumber'
require 'cucumber/rake/task'

Cucumber::Rake::Task.new(:pps_regression, "Run PPS Regression Suite") do |t|
  t.profile = 'default'
end

Cucumber::Rake::Task.new(:uat_smoke, "Run features for Uat Smoke Test") do |t|
  t.profile = 'uat_smoke'
end

Cucumber::Rake::Task.new(:prod_smoke, "Run features for Production Smoke Test") do |t|
  t.profile = 'prod_smoke'
end

task :default => :features


