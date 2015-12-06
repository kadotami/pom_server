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

HealthScore.create(:project_id => 1, :date => "2015-11-10", :github_score_id => 1, :slack_score_id => 1, :photo_score_id => 1)
GithubScore.create(:value => 0.34567)
SlackScore.create(:value => 0.31235)
PhotoScore.create(:value => 0.23504)

HealthScore.create(:project_id => 1, :date => "2015-11-11", :github_score_id => 2, :slack_score_id => 2, :photo_score_id => 2)
GithubScore.create(:value => 0.73567)
SlackScore.create(:value => 0.42125)
PhotoScore.create(:value => 0.63543)

HealthScore.create(:project_id => 1, :date => "2015-11-12", :github_score_id => 3, :slack_score_id => 3, :photo_score_id => 3)
GithubScore.create(:value => 0.56667)
SlackScore.create(:value => 0.551235)
PhotoScore.create(:value => 0.523504)

HealthScore.create(:project_id => 1, :date => "2015-11-13", :github_score_id => 4, :slack_score_id => 4, :photo_score_id => 4)
GithubScore.create(:value => 0.634567)
SlackScore.create(:value => 0.71235)
PhotoScore.create(:value => 0.423504)

HealthScore.create(:project_id => 1, :date => "2015-11-14", :github_score_id => 5, :slack_score_id => 5, :photo_score_id => 5)
GithubScore.create(:value => 0.234567)
SlackScore.create(:value => 0.431235)
PhotoScore.create(:value => 0.323504)

HealthScore.create(:project_id => 1, :date => "2015-11-15", :github_score_id => 6, :slack_score_id => 6, :photo_score_id => 6)
GithubScore.create(:value => 0.546567)
SlackScore.create(:value => 0.78935)
PhotoScore.create(:value => 0.63504)

HealthScore.create(:project_id => 1, :date => "2015-11-16", :github_score_id => 7, :slack_score_id => 7, :photo_score_id => 7)
GithubScore.create(:value => 0.24567)
SlackScore.create(:value => 0.35635)
PhotoScore.create(:value => 0.333504)



