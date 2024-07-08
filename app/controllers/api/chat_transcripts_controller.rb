require 'csv'

class Api::ChatTranscriptsController < ApplicationController
  before_action :set_chat_transcript, only: [:show, :update, :destroy]

  # GET /api/chat_transcripts
  def index
    @chat_transcripts = ChatTranscript.order(created_at: :desc)
    render json: @chat_transcripts
  end

  # GET /api/chat_transcripts/1
  def show
    render json: @chat_transcript
  end

  # POST /api/chat_transcripts
  def create
    @chat_transcript = ChatTranscript.new(chat_transcript_params)

    if @chat_transcript.save
      render json: @chat_transcript, status: :created, location: api_chat_transcript_url(@chat_transcript)
    else
      render json: @chat_transcript.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/chat_transcripts/1
  def update
    if @chat_transcript.update(chat_transcript_params)
      render json: @chat_transcript
    else
      render json: @chat_transcript.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/chat_transcripts/1
  def destroy
    @chat_transcript.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_chat_transcript
    @chat_transcript = ChatTranscript.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def chat_transcript_params
    params.require(:chat_transcript).permit(:chat_id, :msg_section_id, :case_id, :officer_id, :user, :MOP_number, :message, :topic, :url, :time, :isAudited, :attachment_id, :attachment_type)
  end
end
