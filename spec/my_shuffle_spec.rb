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

  it "shuffles an array of three animals" do
    animals = ["aardvark", "hedgehog", "wallaby"]
    result = animals.my_shuffle
    expect(result.length).to eq(animals.length)
    animals.each_with_index do |animal, i|
      expect(result.index(animal)).to_not eq(i)
    end
  end

  it "shuffles an array of three butterflies" do
    butterflies = ["monarch", "viceroy", "tiger swallowtail"]
    result = butterflies.my_shuffle
    expect(result.length).to eq(butterflies.length)
    butterflies.each_with_index do |butterfly, i|
      expect(result.index(butterfly)).to_not eq(i)
    end
  end

  it "shuffles an array of three fishes" do
    fishes = ["clown fish", "blue tang", "angelfish"]
    result = fishes.my_shuffle
    expect(result.length).to eq(fishes.length)
    fishes.each_with_index do |fish, i|
      expect(result.index(fish)).to_not eq(i)
    end
  end

  it "shuffles a four element array" do
    animals = ["aardvark", "hedgehog",  "serval", "wallaby"]
    result = animals.my_shuffle
    expect(result.length).to eq(animals.length)
    animals.each_with_index do |animal, i|
      expect(result.index(animal)).to_not eq(i)
    end
  end

  it "shuffles a five element array" do
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

  it "returns an unchanged array if given an array has length of 0" do
    expect([].my_shuffle).to eq([])
  end
end
