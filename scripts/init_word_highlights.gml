///init_word_highlights()
globalvar WH;
WH = ds_grid_create(17,2)
var i = 0;
//elemental types
WH[# i, 0] = "bio"
WH[# i, 1] = c_olive
i++
WH[# i, 0] = "wind"
WH[# i, 1] = c_gray
i++
WH[# i, 0] = "heat"
WH[# i, 1] = c_orange
i++
WH[# i, 0] = "cold"
WH[# i, 1] = c_aqua
i++
WH[# i, 0] = "water"
WH[# i, 1] = c_blue
i++
WH[# i, 0] = "dark"
WH[# i, 1] = c_purple
i++
WH[# i, 0] = "nature"
WH[# i, 1] = c_green
i++
WH[# i, 0] = "electric"
WH[# i, 1] = c_yellow
i++
WH[# i, 0] = "normal"
WH[# i, 1] = c_white
i++
WH[# i, 0] = "earth"
WH[# i, 1] = make_color_rgb(165,42,42)
i++
WH[# i, 0] = "arcane"
WH[# i, 1] = c_fuchsia
i++


/*
ds_map_add(global.word_highlights,'bio',c_olive)
ds_map_add(global.word_highlights,'heat',c_orange)
ds_map_add(global.word_highlights,'cold',c_aqua)
ds_map_add(global.word_highlights,'water',c_blue)
ds_map_add(global.word_highlights,'dark',c_purple)
ds_map_add(global.word_highlights,'nature',c_green)
ds_map_add(global.word_highlights,'electric',c_yellow)
ds_map_add(global.word_highlights,'wind',c_gray)
ds_map_add(global.word_highlights,'normal',c_white)
ds_map_add(global.word_highlights,'earth',make_color_rgb(165,42,42))
ds_map_add(global.word_highlights,'arcane',c_fuchsia)
//stats
ds_map_add(global.word_highlights,'dex',c_yellow)
ds_map_add(global.word_highlights,'str',c_red)
ds_map_add(global.word_highlights,'pow',make_color_rgb(75,0,130))
ds_map_add(global.word_highlights,'def',make_color_rgb(31,6,0))
ds_map_add(global.word_highlights,'res',make_color_rgb(178,178,0))
ds_map_add(global.word_highlights,'aegis',make_color_rgb(20,0,20))