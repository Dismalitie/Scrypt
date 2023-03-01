import discordcanray via:as.root

new var "input1" tag:1
new var "input2" tag:2
new var "input3" tag:3
new container "select"

every (math.randInteger(1,5)) do --you can change the value of every
  container.select = tag.<math.randInteger(1,3)
end

--put your status here

var.input1 = "very cool status"
var.input2 = "very cool status"
var.input3 = "very cool status"















new space name:"client"
connect space.client to discord.canary:client

new sequence "main"
  find discord.canary:client/elements/main/multimenu/status and set var.value (container.select)
  key.enum.enter = true
end

