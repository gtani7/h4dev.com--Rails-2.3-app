class Entry < ActiveRecord::Base
  #acts_as_ferret :fields => ['releasenum', 'descrip','consol_rowhead']
  acts_as_ferret(:fields => {
    ## :consol_rowhead  => { :boost =>2.7},
    :col1head => { :boost =>4},
    :col2head => { :boost =>3.5},
    :col3head => { :boost =>3},
    :col4head => { :boost =>2.5},
    :descrip => { :boost =>1},
    :releasenum => { :boost =>1}
    } , 
    :ferret => { :analyzer => Ferret::Analysis::StandardAnalyzer.new([
        
        "can't", "shouldn't", "vs.", "versus", "not",  "won't", "isn't", "aren't", "doesn't", "don't", "etc", "the", "of", "to", 
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
      
      ]) }
    )   ## end acts_ferret
  
  define_index do
        # fields
        indexes col1head
        indexes col2head
        indexes col3head
        indexes col4head
        indexes descrip
        indexes releasenum
        # attributes
        set_property :field_weights =>
              {"col1head"=> 4, "col2head"=> 3.5, "col3head"=> 3, "col4head"=> 2.5}
        
  end
  acts_as_nested_set :scope => :ult_par
  
  def to_param
    random17
    ##    "#{col1head.downcase.gsub(/ /, '-')}-#{random17}"
  end  
 
  def array_colheads
	[col1head, col2head, col3head, col4head]	
  end

  def consol_rowhead
	[col1head, col2head, col3head, col4head].join("_____ ")
  end
  
  def consol_statistic
	[ number_urls.to_s, len_desc.to_s, ratio_len.to_s, this_rownum.to_s].join(" ___ ")
  end
  
  def consol_statistic_prod
	  number_urls.to_s + " url(s)" + (len_desc>0 ? "___mouseover" : "") 
  end
  
end

