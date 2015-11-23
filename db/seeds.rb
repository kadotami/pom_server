# coding: utf-8

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Project.create(:name => "test")
Project.create(:name => "pom")

GithubScore.create(:project_id => 1, :value => 0.34567, :date => 20151110)
SlackScore.create(:project_id => 1, :value => 0.31235, :date => 20151110)
PhotoScore.create(:project_id => 1, :value => 0.23504, :date => 20151110)

GithubScore.create(:project_id => 1, :value => 0.73567, :date => 20151111)
SlackScore.create(:project_id => 1, :value => 0.42125, :date => 20151111)
PhotoScore.create(:project_id => 1, :value => 0.63543, :date => 20151111)

GithubScore.create(:project_id => 1, :value => 0.56667, :date => 20151112)
SlackScore.create(:project_id => 1, :value => 0.551235, :date => 20151112)
PhotoScore.create(:project_id => 1, :value => 0.523504, :date => 20151112)

GithubScore.create(:project_id => 1, :value => 0.634567, :date => 20151113)
SlackScore.create(:project_id => 1, :value => 0.71235, :date => 20151113)
PhotoScore.create(:project_id => 1, :value => 0.423504, :date => 20151113)

GithubScore.create(:project_id => 1, :value => 0.234567, :date => 20151114)
SlackScore.create(:project_id => 1, :value => 0.431235, :date => 20151114)
PhotoScore.create(:project_id => 1, :value => 0.323504, :date => 20151114)

GithubScore.create(:project_id => 1, :value => 0.546567, :date => 20151115)
SlackScore.create(:project_id => 1, :value => 0.78935, :date => 20151115)
PhotoScore.create(:project_id => 1, :value => 0.63504, :date => 20151115)

GithubScore.create(:project_id => 1, :value => 0.24567, :date => 20151116)
SlackScore.create(:project_id => 1, :value => 0.35635, :date => 20151116)
PhotoScore.create(:project_id => 1, :value => 0.333504, :date => 20151116)
