class Api::V1::FakersController < ApplicationController

  def index
    @fakers = Faker.all
    render json: fakers
  end

  def create
    faker = Faker.new(faker_params)
    if faker.save
      render json: faker, status: :create
    else
      render json: faker.errors, status: :unprocessable_entity
    end
  end

  private

  def faker_params
    params.require(:faker).permit(:name, :avatar, :color, :title, :email, :food)
  end

end
