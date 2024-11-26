# FRAMES
frame1 = Frame.find_or_create_by(variant: 'full-suspension') do |frame|
  frame.price = 130
  frame.label = 'Full Suspension'
end

frame2 = Frame.find_or_create_by(variant: 'diamond') do |frame|
  frame.price = 110
  frame.label = 'Diamond'
end

frame3 = Frame.find_or_create_by(variant: 'step-through') do |frame|
  frame.price = 100
  frame.label = 'Step Through'
end

# FINISHES
Finish.find_or_create_by(variant: 'matte', frame_id: frame1.id) do |finish|
  finish.price = 30
  finish.label = 'Matte Finish'
end

Finish.find_or_create_by(variant: 'shiny', frame_id: frame1.id) do |finish|
  finish.price = 50
  finish.label = 'Shiny Finish'
end

Finish.find_or_create_by(variant: 'matte', frame_id: frame2.id) do |finish|
  finish.price = 20
  finish.label = 'Matte Finish'
end

Finish.find_or_create_by(variant: 'shiny', frame_id: frame2.id) do |finish|
  finish.price = 35
  finish.label = 'Shiny Finish'
end

Finish.find_or_create_by(variant: 'matte', frame_id: frame3.id) do |finish|
  finish.price = 10
  finish.label = 'Matte Finish'
end

Finish.find_or_create_by(variant: 'shiny', frame_id: frame3.id) do |finish|
  finish.price = 30
  finish.label = 'Shiny Finish'
end

Wheel.find_or_create_by(variant: 'road') do |wheel|
  wheel.price = 80
  wheel.label = 'Road'
end

Wheel.find_or_create_by(variant: 'mountain') do |wheel|
  wheel.price = 100
  wheel.label = 'Mountain'
end

Wheel.find_or_create_by(variant: 'fat') do |wheel|
  wheel.price = 120
  wheel.label = 'Fat Bike'
end


Rim.find_or_create_by(rim_color: 'red') do |rim|
  rim.price = 15
  rim.label = 'Red Rim'
end

Rim.find_or_create_by(rim_color: 'black') do |rim|
  rim.price = 10
  rim.label = 'Black Rim'
end

Rim.find_or_create_by(rim_color: 'blue') do |rim|
  rim.price = 20
  rim.label = 'Blue Rim'
end

Chain.find_or_create_by(variant: 'single-speed') do |chain|
  chain.price = 43
  chain.label = 'Single-Speed'
end

Chain.find_or_create_by(variant: '8-speed') do |chain|
  chain.price = 60
  chain.label = '8-Speed'
end

Incompatibility.find_or_create_by(item1: frame1, item2: Wheel.find_by(variant: 'road')) 
Incompatibility.find_or_create_by(item1: frame3, item2: Wheel.find_by(variant: 'mountain'))
Incompatibility.find_or_create_by(item1: frame3, item2: Wheel.find_by(variant: 'fat'))
Incompatibility.find_or_create_by(item1: Wheel.find_by(variant: 'fat'), item2: Rim.find_by(rim_color: 'red'))
