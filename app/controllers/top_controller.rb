class TopController < ApplicationController
  def show
  end

  def translate
    @source = params[:source]
    @result = @source.present? ? SuriLang::Translator.translate(@source) : 'しゃべらせたい文章を入れてくだサイ。'

    @with_greeting = (params[:with_greeting] == '1')
    @greeter = SuriLang::Greeter.random_build if @with_greeting
    render :show
  end
end
