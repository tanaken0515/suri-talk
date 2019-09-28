class TopController < ApplicationController
  def show
  end

  def translate
    @source = params[:source]
    @result = SuriLang::Translator.translate(@source)
    render :show
  end
end
