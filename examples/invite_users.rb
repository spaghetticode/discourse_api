# require 'discourse_api'

$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require File.expand_path('../../lib/discourse_api', __FILE__)

client = DiscourseApi::Client.new("localhost",3000)
client.api_key = "6157bad92b3b5f8004aedc82220281c5966e5d560bb2bb6f962123474db4ac98"
client.api_username = "forumadmin"

client.topic_invite_user(topic_id: 1, email: "bob@bob.com")
