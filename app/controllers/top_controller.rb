class TopController < ApplicationController
  def show
  end

  def translate
    @source = params[:source]
    @result = @source.upcase # todo: suri_langを使って@sourceを変換する
    render :show
  end
end
