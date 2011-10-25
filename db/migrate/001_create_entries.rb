class CreateEntries < ActiveRecord::Migration
  def self.up
    create_table :entries do |t|
      # t.column :name, :string
      t.column :col1head, :string
      t.column :col2head, :string
      t.column :col3head, :string
      t.column :col4head, :string
      t.column :this_rownum, :integer,       :null=>false
      t.column :immed_par_rownum, :integer,   :null=>true
      t.column :ult_par_rownum, :integer,     :null=>false
      t.column :lft_rownum,     :integer,        :null=>false
      t.column :rgt_rownum,     :integer,        :null=>false

      t.column :pyrbrails,    :integer,        :null=>false ## 0=py, 1=rb, 2=rails, 3 LSI
      t.column :releasenum,   :string
      t.column :descrip,      :text
      t.column :descrip_trunc, :text
      t.column :urls, :text

    
      t.column :number_urls,  	  :integer
      t.column :len_desc,   		  :integer
      t.column :ratio_len,  		  :float
      
      t.column :ult_par_id,  		 :integer
      t.column :parent_id,  		 :integer
      t.column :lft,  		          :integer
      t.column :rgt,  		          :integer
      t.column :random17,         :string
      t.column :allblank,       :integer
	#t.column :py_rb, 	:float
	#t.column :rb_rails, 	:float
    end
    add_index :entries, :random17
  end

  def self.down 
    remove_index :entries, :random17
    drop_table :entries
  end
end
