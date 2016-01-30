class Speech < ActiveRecord::Base
  attr_accessor :title, :author, :full_text

  def initialize(speech_data)
    @title = speech_data[:title]
    @author = speech_data[:author]
    @full_text = speech_data[:full_text]
  end

end