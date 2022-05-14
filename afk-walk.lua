--/afk script
getgenv().move = true --/ false for stop move
getgenv().antiafk = true --/obvius 
getgenv().spamenable = true --/ true for spam, false to stop spamming
getgenv().spam = "afk | text here"
getgenv().spamspeed = 15 --/second to wait to spam the message
local CurrentPart = nil --/do not change
local MaxInc = 16 --/do not change

loadstring(game:HttpGet("https://raw.githubusercontent.com/martinelcrac/fe-random/raw/simple-afk.lua"))()
