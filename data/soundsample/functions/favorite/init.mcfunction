scoreboard players operation #VisibleFavsMin SoundSample = #FavsPage SoundSample
scoreboard players remove #VisibleFavsMin SoundSample 1
scoreboard players operation #VisibleFavsMin SoundSample *= #18 SoundSample

scoreboard players operation #VisibleFavsMax SoundSample = #VisibleFavsMin SoundSample
scoreboard players add #VisibleFavsMax SoundSample 17

scoreboard players set #CurrentFavs SoundSample 0

tellraw @s ["",{"text":"SoundSample 1.17.1     ","color":"gold"},{"text":"    "},{"text":"<","clickEvent":{"action":"run_command","value":"/function soundsample:page/0"}},{"text":"TOP","color":"aqua","clickEvent":{"action":"run_command","value":"/function soundsample:page/0"}},{"text":">","clickEvent":{"action":"run_command","value":"/function soundsample:page/0"}},{"text":"  "},{"text":"<","clickEvent":{"action":"run_command","value":"/function soundsample:favorite/first"}},{"text":"Favorite","color":"green","clickEvent":{"action":"run_command","value":"/function soundsample:favorite/first"}},{"text":">","clickEvent":{"action":"run_command","value":"/function soundsample:favorite/first"}},{"text":"  "},{"text":"<","clickEvent":{"action":"run_command","value":"/stopsound @s"}},{"text":"STOP","color":"light_purple","clickEvent":{"action":"run_command","value":"/stopsound @s"}},{"text":">","clickEvent":{"action":"run_command","value":"/stopsound @s"}},{"text":"  "},{"text":"<","clickEvent":{"action":"run_command","value":"/gamerule sendCommandFeedback true"}},{"text":"+","color":"gold","clickEvent":{"action":"run_command","value":"/gamerule sendCommandFeedback true"}},{"text":">","clickEvent":{"action":"run_command","value":"/gamerule sendCommandFeedback true"}},{"text":"  "},{"text":"<","clickEvent":{"action":"run_command","value":"/gamerule sendCommandFeedback false"}},{"text":"-","color":"gold","clickEvent":{"action":"run_command","value":"/gamerule sendCommandFeedback false"}},{"text":">","clickEvent":{"action":"run_command","value":"/gamerule sendCommandFeedback false"}}]
execute if score #FavsPage SoundSample matches 1 run tellraw @s [{"text":"---------------------","color":"gold"},{"text":" "},{"text":"<<<","color":"aqua","clickEvent":{"action":"run_command","value":"/function soundsample:page/0"}},{"text":" "},{"text":"F.0","color":"green","clickEvent":{"action":"run_command","value":"/function soundsample:favorite/init"}},{"score":{"name":"#FavsPage","objective":"SoundSample"},"color":"green","clickEvent":{"action":"run_command","value":"/function soundsample:favorite/init"}},{"text":" "},{"text":">>>","color":"aqua","clickEvent":{"action":"run_command","value":"/function soundsample:favorite/next"}},{"text":" "},{"text":"---------------------","color":"gold"}]
execute if score #FavsPage SoundSample matches 2..9 run tellraw @s [{"text":"---------------------","color":"gold"},{"text":" "},{"text":"<<<","color":"aqua","clickEvent":{"action":"run_command","value":"/function soundsample:favorite/prev"}},{"text":" "},{"text":"F.0","color":"green","clickEvent":{"action":"run_command","value":"/function soundsample:favorite/init"}},{"score":{"name":"#FavsPage","objective":"SoundSample"},"color":"green","clickEvent":{"action":"run_command","value":"/function soundsample:favorite/init"}},{"text":" "},{"text":">>>","color":"aqua","clickEvent":{"action":"run_command","value":"/function soundsample:favorite/next"}},{"text":" "},{"text":"---------------------","color":"gold"}]
execute if score #FavsPage SoundSample matches 10.. run tellraw @s [{"text":"---------------------","color":"gold"},{"text":" "},{"text":"<<<","color":"aqua","clickEvent":{"action":"run_command","value":"/function soundsample:favorite/prev"}},{"text":" "},{"text":"F.","color":"green","clickEvent":{"action":"run_command","value":"/function soundsample:favorite/init"}},{"score":{"name":"#FavsPage","objective":"SoundSample"},"color":"green","clickEvent":{"action":"run_command","value":"/function soundsample:favorite/init"}},{"text":" "},{"text":">>>","color":"aqua","clickEvent":{"action":"run_command","value":"/function soundsample:favorite/next"}},{"text":" "},{"text":"---------------------","color":"gold"}]
function soundsample:favorite/main

scoreboard players set #EmptyRows SoundSample 1
scoreboard players operation #EmptyRows SoundSample += #VisibleFavsMax SoundSample
scoreboard players operation #EmptyRows SoundSample -= #CurrentFavs SoundSample

execute if score #EmptyRows SoundSample matches 16.. run tellraw @s {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
execute if score #EmptyRows SoundSample matches 16.. run scoreboard players remove #EmptyRows SoundSample 16
execute if score #EmptyRows SoundSample matches 8.. run tellraw @s {"text":"\n\n\n\n\n\n\n"}
execute if score #EmptyRows SoundSample matches 8.. run scoreboard players remove #EmptyRows SoundSample 8
execute if score #EmptyRows SoundSample matches 4.. run tellraw @s {"text":"\n\n\n"}
execute if score #EmptyRows SoundSample matches 4.. run scoreboard players remove #EmptyRows SoundSample 4
execute if score #EmptyRows SoundSample matches 2.. run tellraw @s {"text":"\n"}
execute if score #EmptyRows SoundSample matches 2.. run scoreboard players remove #EmptyRows SoundSample 2
execute if score #EmptyRows SoundSample matches 1.. run tellraw @s {"text":""}
