class TopController < ApplicationController
  def show
  end

  def translate
    @source = params[:source]
    @result = SuriLang::Translator.translate(@source)
    @greeter = SuriLang::Greeter.random_build
    render :show
  end
end
