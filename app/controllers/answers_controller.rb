class AnswersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_question, except: [:adding_likes,:accept]

  def create
    @answer = Answer.new(answer_params)
    @answer.user_id = current_user.id
    @answer.question_id = @question.id
    
    if @answer.save
      redirect_to question_path(@question), notice: "Answer was successfully created."
    else    
      #redirect_to question_path(@question), alert: "There was an error when adding answer."
      render(:template => "questions/show", alert: "There was an error when adding answer.")
    end
  end

  def adding_likes
    @odp = Answer.find(params[:id])
    @user_id = @odp.user_id
    @odp.update(:like => (params[:like].to_i + 1))
    @likeit = Likeit.new(:answer_id => params[:id],:user_id => params[:current_user_id])
    @likeit.save
    
    @user = User.find(@user_id)
    @user_points = @user.points
    @user.update(:points => @user_points + 5 )
    
    redirect_to question_path(@odp.question_id)
  end
  
  def accept
    @find_answer = Answer.find(params[:answer_id])
    @find_answer.update(:accepted => 1)
    
    @user_id = @find_answer.user_id
    @user = User.find(@user_id)
    @user_points = @user.points
    @user.update(:points => @user_points + 25)
    
    
    redirect_to question_path(@find_answer.question_id)
  end
  
  private

    def set_question
      @question = Question.find(params[:question_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def answer_params
      params.require(:answer).permit(:contents)
    end
    
end
