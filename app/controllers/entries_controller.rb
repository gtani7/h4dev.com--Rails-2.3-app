class EntriesController < ApplicationController
  
  def index
    params[:search]="" if not(params[:search])
    @sphinx_hits=Entry.search(params[:search])  ## Array of Entry, often empty
    #@sphinx_hits.delete_if { |f| 0==f.number_urls}
    @sphinx_hits.delete_if { |f| 0== f.allblank }
    
    #@ferret_hits=Entry.find_with_ferret(params[:search], {:limit =>15} ) 
    ## @ferret_hits.delete_if { |f| (0==f.allblank)  and (0==f.number_urls) }   ## dev env: show hit if nonblank desc or > 0 URL
    #@ferret_hits.delete_if { |f| 0==f.allblank   }   ## 
      ##@ferret_hits.delete_if { |f|  (0==f.number_urls) }    ## prod env. 
      #if @sphinx_hits
       #  @ferret_hits = @ferret_hits - @sphinx_hits    ## also Array of Entry,
      #end  
  end
  
  def show
    @entry=Entry.find_by_id(params[:id])
  end
  
end
