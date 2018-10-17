class Airport
  def initialize
    @hangar = []
  end

  def land(plane)
    # this begins a section of code added by me
    if $land_permission == "Requested"
      puts "Permission to land granted; please proceed to land."
      # end of section added by me
      @hangar.push(plane)
      # this begins a section of code added by me
      $land_permission = nil
    else
      puts "Please identify yourself and request permission to land."
    end
    # end of section added by me
  end

  def take_off(plane)
    if @hanger.length > 0
      if @hangar.includes? plane
        plane_index = @hangar.index(plane)
        @hangar.delete_at(plane_index)
        return plane
      else
        return "Error: plane not in hangar"
      end
    else
      return "Error: there are no planes to take off"
    end
  end

  def hangar_report
    if @hangar.length == 1
      puts "There is 1 plane in the hangar"
    else
      puts "There are #{ @hanger.length } planes in the hangar"
    end
  end
end

# the below section is added by me:

class Plane
  def initialize(airline, plane_number)
    @airline = airline
    @plane_number = plane_number
  end
  
  def request_land
    puts "#{@airline} plane number #{@plane_number} requesting permission to land."
    $land_permission = "Requested"
  end
end

plane101 = Plane.new("Delta Airlines", "101")
heathrow = Airport.new
plane101.request_land
heathrow.land(plane101)
heathrow.hangar_report


