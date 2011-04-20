# == Database schema conventions
# When setting up the limit for strings, let's stick to the following:
#
# * Long: 255 chars (no limit set)
# * Medium: 128 chars
# * Long Keys, Hashes: 64 chars
# * Short keys, Hashes: 32 chars
# * Internal Keys: 8 chars
class Message < ActiveRecord::Migration
  def self.up
    create_table :messages, :force => true do |t|
      t.string :email
      t.text :message
      t.datetime :created_at
      t.datetime :updated_at
    end
  end

  def self.down
  end
end
