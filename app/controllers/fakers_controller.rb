class FakersController < ApplicationController
  before_action :get_faker, only: [:show]


  def index
    @fakers = Faker.all
  end

  def show
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

  def get_faker
    @faker ||= Faker.find(params[:id])
  end

end
