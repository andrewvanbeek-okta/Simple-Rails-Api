class AnimesController < ApplicationController
    def index
      animes = ["Haikyu", "The Great Pretender", "Jujutsu kaisen", "Dr. Stone", "Attack on Titan"]
      render json: { animes: animes }.to_json, status: :ok
    end
  end