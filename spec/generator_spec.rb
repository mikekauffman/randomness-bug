require 'generator'

describe Generator do
  it "it generates one unique company for every 2 employees" do
    total_people = 100
    people = Generator.new(total_people).generate
    expected = total_people/2
    actual = people.map { |person| person[2] }.uniq.length
    expect(actual).to eq expected
  end
end