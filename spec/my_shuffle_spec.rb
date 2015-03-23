describe "#my_shuffle" do

  let(:cars)        { ["CR-V",     "Camry",     "Escape", "Forester", "Highlander"] }
  let(:animals)     { ["aardvark", "hedgehog", "serval",  "wallaby"       ] }
  let(:plants)      { ["aloe",     "hedge",    "sage",    "weeping willow"] }
  let(:ingredients) { ["anise",    "honey",    "scallop", "wasabi"        ] }

  it "doesn't use Ruby's shuffle method" do
     expect_any_instance_of(Array).to_not receive(:shuffle)
     cars.my_shuffle
  end

  it "shuffles an array of two elements" do
    mammals = ["bear", "tiger"]
    expect(mammals.my_shuffle).to eq(["tiger", "bear"])

    birds = ["cardinal", "eagle"]
    expect(birds.my_shuffle).to eq(["eagle", "cardinal"])
  end

  it "shuffles an array of three elements" do
    some_animals = ["aardvark", "hedgehog", "wallaby"]
    result = some_animals.my_shuffle
    some_animals.each do |animal|
      result_index = result.index_of?(animal)
      orginal_index = some_animals.index_of?(animal)
      expect(result_index).to_no eq(orginal_index)
    end 
  end

  it "shuffles an array of four elements" do
    [animals, plants, ingredients].each do |array|
      result = array.my_shuffle
      expect(result.length).to eq(array.length)
      array.each_with_index do |element, i|
        result_index = result.index_of?(element)
        expect(result_index).to_not eq(i)
      end
    end
  end

  it "returns an unchanged array if given an array has length of 1" do
    numbers = [1]
    letters = ["a"]
    arrays = [numbers, letters]
    arrays.each { |array| expect(array.my_shuffle).to eq(array) }
  end
end
