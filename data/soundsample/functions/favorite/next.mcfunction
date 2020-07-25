scoreboard players set #EmptyRows SoundSample 19
scoreboard players operation #EmptyRows SoundSample += #VisibleFavsMax SoundSample
scoreboard players operation #EmptyRows SoundSample -= #CurrentFavs SoundSample

execute if score #EmptyRows SoundSample matches ..18 run scoreboard players add #FavsPage SoundSample 1

function soundsample:favorite/init
