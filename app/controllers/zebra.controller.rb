class ZebraController < ApplicationController
  def ant
    render({ :template => "game_templates/homepage" })
  end
  
  def giraffe
    @random_move = ["rock", "paper", "scissors"].sample
    if @random_move == "rock"
      @message = "We tied!"
    elsif @random_move == "paper"
      @message = "We lost"
    else
      @message = "We Won!"
    end
    render({ :template => "game_templates/play_rock" })
  end

  def elephant
    @random_move = ["rock", "paper", "scissors"].sample

    if @random_move == "paper"
        @message = "We tied!"
    elsif @random_move == "scissors"
        @message = "We lost"
    else
        @message = "We Won!"
    end

    render({ :template => "game_templates/play_paper" })
  end

  def monkey
    @random_move = ["rock", "paper", "scissors"].sample

    if @random_move == "scissors"
        @message = "We tied!"
    elsif @random_move == "rock"
        @message = "We lost!"
    else
        @message = "We Won!"
    end

    render({ :template => "game_templates/play_scissors" })
  end
end
