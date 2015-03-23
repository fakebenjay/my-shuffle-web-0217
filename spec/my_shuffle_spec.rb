describe "#my_shuffle" do

  let(:cars) { ["CR-V", "Camry", "Escape", "Forester", "Highlander"] }

  it "doesn't change the original array" do
    result = cars.my_shuffle
    expect(cars).to eq(cars)
    expect(result).to_not eq(cars)
  end

  it "shuffles an array of two elements" do
    expect(["bear", "tiger"].my_shuffle).to eq(["tiger", "bear"])
    expect(["cardinal", "eagle"].my_shuffle).to eq(["eagle", "cardinal"])
  end

  it "shuffles an array of three elements" do
    animals = ["aardvark", "hedgehog", "wallaby"]
    result = animals.my_shuffle
    expect(result.length).to eq(animals.length)
    animals.each_with_index do |animal, i|
      expect(result.index(animal)).to_not eq(i)
    end
  end

  it "shuffles an array of four elements" do
    animals = ["aardvark", "hedgehog",  "serval", "wallaby"]
    result = animals.my_shuffle
    expect(result.length).to eq(animals.length)
    animals.each_with_index do |animal, i|
      expect(result.index(animal)).to_not eq(i)
    end
  end

  it "shuffles an array of five elements" do
    result = cars.my_shuffle
    expect(result.length).to eq(cars.length)
    cars.each_with_index do |car, i|
      expect(result.index(car)).to_not eq(i)
    end
  end

  it "returns an unchanged array if given an array has length of 1" do
    expect([1].my_shuffle).to eq([1])
    expect(["a"].my_shuffle).to eq(["a"])
  end
end
