class SearchesController < ApplicationController
  def show
    @users = User.all
    @text_subject = TextSubject.all
    @search_term = params[:query]
    @matched = @users.where("email ILIKE ?", "%#{@search_term}%") + @text_subject.where("body ILIKE ?", "%#{@search_term}%")
  end
end
