# I managed to come up with two different ways to solve this problem and have copied them both in below


def print_address(address)
  subpremise = address["subpremise"] ? address["subpremise"] + ", " : nil
  house_name = address["house_name"] ? address["house_name"] + "," : nil
  house_number = address["house_number"] ? address["house_number"] + " " : nil
  street_line_1 = address["street_line_1"] + ",\n"
  street_line_2 = address["street_line_2"] ? address["street_line_2"] + ",\n" : nil
  town_or_city = address["town_or_city"] + ",\n"
  region = address["region"] ? address["region"] + ",\n" : nil
  postcode = address["postcode"]

  formatted_address = "#{subpremise}#{house_name}#{subpremise || house_name ? "\n" : nil}#{house_number}#{street_line_1}#{street_line_2}#{town_or_city}#{region}#{postcode}"
  puts formatted_address
end


def print_address1(address)
  array1 = []
  array2 = []
  array3 = []

  address.compact.each do |key, value|
    if key == "subpremise" || key == "house_name"
      array1.push(value)
    elsif key == "house_number" || key == "street_line_1"
      array2.push(value)
    else
      array3.push(value)
    end
  end

  line1 = array1.length > 0 ? array1.join(", ") +",\n" : nil
  line2 = array2.length > 1 ? array2.join(" ") : array2.join("")
  line3 = array3.join(",\n")

  formatted_address = "#{line1}#{line2},\n#{line3}"
  puts formatted_address
end
