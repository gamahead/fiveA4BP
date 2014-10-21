# -*- encoding : utf-8 -*-
class CreateMods < ActiveRecord::Migration
  def change
    create_table :mods do |t|
      t.string :aType
      t.string :vidOneSource
      t.string :vidTwoSource
      t.text :explanation
      t.text :dialogueOne
      t.text :dialogTwo

      t.timestamps
    end
  end
end
