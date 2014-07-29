require 'rspec'
require 'package_cal'

describe Package do
  it ('allows the user to create a new package') do
    test_package = Package.new(45, 33, 36, 5)
    test_package.should be_an_instance_of Package
  end
    it ('allows the user to define a height, width, length and weight of their package') do
      test_package = Package.new(45, 33, 36, 5)
      test_package.height.should eq 45
    end

    it ('allows the user to define a height, width, length and weight of their package') do
      test_package = Package.new(45, 33, 36, 5)
      test_package.width.should eq 33
    end

    it ("multiplies a package's width by it's height by it's length" ) do
      test_package = Package.new(2, 4, 4, 4)
      test_package.volume
      test_package.volume.should eq 32
    end


    it ("multiplies package weight by package volume" ) do
      test_package = Package.new(2, 4, 4, 4)
      test_package.cost_to_ship
      test_package.cost_to_ship.should eq 128
      end
    end

