module TrafficLight

data lightColor = red | green | amber

nextColor: lightColor -> lightColor
nextColor red = green
nextColor green = amber
nextColor amber = red

