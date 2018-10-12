test_tweets = [
  "This president sucks!",
  "I hate this Blank House!",
  "I can't believe we're living with such a bad leadership. We were so foolish",
  "President Presidentname is a danger to society. I hate that he's so bad – it sucks."
  ]
  
banned_phrases = ["sucks", "bad", "hate", "foolish", "danger to society"]

# Replace each negative word or phrase them with the word "CENSORED".

censored_tweets =[]
bp_index_counter = 0

test_tweets.each do |tweet|
  censored_tweet = tweet
  bp_index_counter = 0
  
  while bp_index_counter < 5
    censored_tweet = censored_tweet.split(banned_phrases[bp_index_counter]).join("CENSORED")
    bp_index_counter += 1
  end
  
  censored_tweets << censored_tweet
end

puts censored_tweets
