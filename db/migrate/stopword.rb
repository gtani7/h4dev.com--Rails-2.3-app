#!/usr/bin/env ruby

def remove_stopword(inputstring)
# 155 stopwords
stopwords=[
  
"can't", "shouldn't", "vs.", "versus", "won't", "isn't", "aren't", "doesn't", "don't", "etc", "the", "of", "to", 
"and", "a", "in", "is", "it", "you", "that", "he", "was", "for", "on", "are", "with", "as", "I", "his", "they", "be", "at", "have", 
"this", "from", "or", "had", "by", "but", "what", "some", "we", "can", "out", "other", "were", "all", "there", "when", "up", 
"use", "your", "how", "said", "an", "each", "she", "which", "do", "their", "time", "if", "will", "way", "about", "many", 
"then", "them", "would", "like", "so", "these", "her", "long", "make", "thing", "see", "him", "has", "look", 
"more", "could", "go", "come", "did", "no", "most", "people", "my", "over", "know", "than", "call", "first", "who", 
"may", "down", "side", "been", "now", "find", "any", "new", "work", "part", "take", "get", "place", "made", "live", 
"where", "after", "back", "little", "only", "man", "came", "show", "every", "good", "me", "give", "our", "under", 
"name", "very", "through", "just", "form", "sentence", "great", "think", "say", "help", "low", "line", "differ", 
"turn", "cause", "much", "mean", "before", "move", "right", "boy", "old", "too", "same", "tell", "does", "want", "air", 
"well", "also", "play", "small" 


]
input_split=[]
inputstring.split(/\s+/).each { |oneterm|
  oneterm_temp=oneterm.downcase
  ##strip trail'g, lead'g punctuation
  oneterm_temp.sub!(/^\W+/, "")
  oneterm_temp.sub!(/\W+$/, "")
  oneterm_temp.sub!(/n't$/,"nt" )
  if not(stopwords.include? oneterm_temp)
      input_split << oneterm
  end
}
return input_split
