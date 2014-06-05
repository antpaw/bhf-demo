class Init < ActiveRecord::Migration
  def change
    
    create_table :categories do |t|
      t.string   :title
      t.timestamps
    end
    
    create_table :authors do |t|
      t.string   :name
      t.string   :job_title
      t.string   :email
      t.integer  :position, default: 0, null: false
      t.timestamps
    end
    
    create_table :posts do |t|
      t.string     :headline
      t.string     :subheadline
      t.text       :content
      t.boolean    :published
      t.datetime   :published_at
      t.belongs_to :category
      t.belongs_to :author
      t.timestamps
    end
    
    create_table :statics do |t|
      t.string   :title
      t.string   :subheadline
      t.text     :content
      t.boolean  :hidden, default: false, null: false
      t.timestamps
    end
    
  end
end
