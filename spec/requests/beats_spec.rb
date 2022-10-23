require "rails_helper"

RSpec.describe "Items", type: :request do
  current_user = User.first_or_create!(email: "marcin.poplawski98@gmail.com", password: "password", password_confirmation: "password")
  it "has title" do
    beat = Beat.new(
      title: "",
      description: "A valid text",
      user: current_user
    )

    expect(beat).to_not be_valid
    beat.title = "Has a title"
    expect(beat).to be_valid
  end

  it "has a body" do
  end
  it "has a description" do
    beat = Beat.new(
      title: "A valid title",
      description: "dsdsds",
      user: current_user
    )
    expect(beat).to be_valid
  end

  it "has a price" do
    beat = Beat.new(
      title: "A valid title",
      description: "dsdsds",
      user: current_user,
      price: 0
    )
    expect(beat).to be_valid
  end

  it "has a body between 5 and 100 characters" do
  end
end
