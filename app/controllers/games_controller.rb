class GamesController < ApplicationController

  def play_rock
    @cmove = ["rock", "paper", "scissors"].sample
    @res = "outcome"

    if @cmove == "rock"
      @res = "tied"
      @image_source = "http://weknowyourdreams.com/images/rock/rock-08.jpg"
    elsif @cmove == "paper"
      @res = "lose"
      @image_source = "https://i.ytimg.com/vi/w7ma8mweDGw/maxresdefault.jpg"
    else
      @res = "win"
      @image_source = "https://images-na.ssl-images-amazon.com/images/I/71AgdoNhdML._SL1500_.jpg"
    end

    render("games/play_rock.html.erb")
  end


  def play_paper
    @cmove = ["rock", "paper", "scissors"].sample
    @res = "outcome"

    if @cmove == "rock"
      @res = "win"
      @image_source = "http://weknowyourdreams.com/images/rock/rock-08.jpg"
    elsif @cmove == "paper"
      @image_source = "https://i.ytimg.com/vi/w7ma8mweDGw/maxresdefault.jpg"
      @res = "tie"
    else
      @res = "lose"
      @image_source = "https://images-na.ssl-images-amazon.com/images/I/71AgdoNhdML._SL1500_.jpg"
    end

    render("games/play_paper.html.erb")
  end

  def play_scissors
    @cmove = ["rock", "paper", "scissors"].sample
    @res = "outcome"

    if @cmove == "rock"
      @image_source = "http://weknowyourdreams.com/images/rock/rock-08.jpg"
      @res = "lose"
    elsif @cmove == "paper"
      @image_source = "https://i.ytimg.com/vi/w7ma8mweDGw/maxresdefault.jpg"
      @res = "win"
    else
      @res = "tie"
      @image_source = "https://images-na.ssl-images-amazon.com/images/I/71AgdoNhdML._SL1500_.jpg"
    end

    render("games/play_scissors.html.erb")
  end


  def play_game
    render("games/play_game.html.erb")
  end

end
