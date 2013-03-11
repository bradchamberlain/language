class CreateLanguagestrings < ActiveRecord::Migration
  def change
    create_table :languagestrings do |t|

      t.timestamps
    end
  end
end
