class TopController < ApplicationController
  def show
  end

  def translate
    @source = params[:source]
    source = @source.present? ? @source : 'しゃべらせたい文章を入れてください。'
    @result = SuriLang::Translator.translate(source)
    @greeter = SuriLang::Greeter.random_build
    render :show
  end
end
