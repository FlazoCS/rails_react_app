class CreateChatTranscripts < ActiveRecord::Migration[7.1]
  def change
    create_table :chat_transcripts do |t|
      t.integer :chat_id
      t.integer :msg_section_id
      t.integer :case_id
      t.integer :officer_id
      t.string :user
      t.integer :MOP_number
      t.text :message
      t.string :topic
      t.string :url
      t.datetime :time
      t.boolean :isAudited
      t.references :attachment, polymorphic: true, index: true

      t.timestamps
    end
  end
end