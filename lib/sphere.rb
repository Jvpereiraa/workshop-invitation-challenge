require_relative "geometric_base"

class Sphere < GeometricBase
  attr_writer :radius

  def initialize(radius)
    @radius = radius
  end

  def area
    multiply(4,multiply(PI,exponentiation(@radius,2)))
  end

  def perimeter
    multiply(2,multiply(PI,@radius))
  end

  def volume
    multiply(
      divide(4, 3),
      multiply(PI, exponentiation(@radius, 3))
    )
  end
end
