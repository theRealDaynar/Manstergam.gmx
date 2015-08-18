image_index = argument0
if !instance_exists(oPlayerController)
{
    lvl = global.level;
    if lvl > 50
        lvl = 50
    else if lvl <= 0
        lvl = 1
    global.level = lvl;
}
var lvlsc = lvl /50;
if !ds_exists(resistances,ds_type_map)
    resistances = ds_map_create()
switch(argument0)
{
case 0:
name = "Pink Fluff"
moves[0] = m_ooze_spit
moves[1] = m_secrete
moves[2] = m_curl_up
moves[3] = m_scream
ds_map_add(resistances,'heat',1.25)
ds_map_add(resistances,'electric',1.25)
ds_map_add(resistances,'bio',.8);
max_hp = floor(244 * (150 + 17 * lvl) / 1000)
hp = max_hp
max_stam = 26
stam = max_stam
endurance = 5
base_spd = 144
str = 124
base_def = 195
dex = 160
base_res = 240
pow = 164
base_aegis = 158
break;
case 1:
name = "Vampire Bat"
moves[0] = m_blood_bite
moves[1] = m_divebomb
moves[2] = m_scratch
moves[3] = m_scream
ds_map_add(resistances,'wind',.8)
ds_map_add(resistances,'dark',.8)
ds_map_add(resistances,'electric',1.25)
ds_map_add(resistances,'arcane',1.1)
ds_map_add(resistances,'bio',1.1)
max_hp =floor(228 * (150 + 17 * lvl) / 1000);
hp = max_hp
max_stam = 27
stam = max_stam
endurance = 5
base_spd = 296
str = 132
base_def = 166
dex = 142
base_res = 150
pow = 176
base_aegis = 145
break;
case 2:
name = "Frosty Jr."
moves[0] = m_solidify
moves[1] = m_melt
moves[2] = m_snowball
moves[3] = m_water_shot
ds_map_add(resistances,'nature',.5)
ds_map_add(resistances,'heat',2)
ds_map_add(resistances,'water',0)
ds_map_add(resistances,'cold',0)
ds_map_add(resistances,'bio',.5)
max_hp = floor(260 * (150 + 17 * lvl) / 1000)
hp = max_hp
max_stam = 30
stam = max_stam
endurance = 5
base_spd = 195
str = 170
base_def = 212
dex = 185
base_res = 182
pow = 165
base_aegis = 180
break;
case 3:
name = "Rainbird"
moves[0] = m_quick_peck
moves[1] = m_divebomb
moves[2] = m_blind
moves[3] = m_soar
ds_map_add(resistances,'wind',.8)
ds_map_add(resistances,'earth',.5)
ds_map_add(resistances,'dark',.8)
ds_map_add(resistances,'electric',1.25)
ds_map_add(resistances,'bio',1.1)
max_hp = floor(200 * (150 + 17 * lvl) / 1000)
hp = max_hp
max_stam = 24
stam = max_stam
endurance = 7
base_spd = 320
str = 192
base_def = 170
dex = 150
base_res = 182
pow = 170
base_aegis = 160
break;
case 4:
name = "Legfish"
moves[0] = m_flay
moves[1] = m_sprint_bite
moves[2] = m_gnash
moves[3] = m_water_shot
ds_map_add(resistances,'heat',.7)
ds_map_add(resistances,'water',.5)
ds_map_add(resistances,'electric',1.3)
ds_map_add(resistances,'bio',1.1)
max_hp = floor(175 * (150 + 17 * lvl) / 1000)
hp = max_hp
max_stam = 28
stam = max_stam
endurance = 6
base_spd = 270
str = 257
base_def = 189
dex = 114
base_res = 189
pow = 190
base_aegis = 189
break;
case 5:
name = "Apple Monkey"
moves[0] = m_hard_throw
moves[1] = m_crab_apple
moves[2] = m_sweet_apple
moves[3] = m_explosive_apple
ds_map_add(resistances,'heat',1.25)
ds_map_add(resistances,'dark',1.3)
ds_map_add(resistances,'bio',1.1)
max_hp = floor(280 * (150 + 17 * lvl) / 1000)
hp = max_hp
max_stam = 30
stam = max_stam
endurance = 4
base_spd = 160
str = 165
base_def = 235
dex = 224
base_res = 226
pow = 178
base_aegis = 180
break;
case 6:
name = "Fire Chicken"
moves[0] = m_fire_caugh
moves[1] = m_quick_peck
moves[2] = m_dodge
moves[3] = m_cockadoodledoo
ds_map_add(resistances,'wind',.8)
ds_map_add(resistances,'nature',.8)
ds_map_add(resistances,'earth',.8)
ds_map_add(resistances,'heat',.6)
ds_map_add(resistances,'water',1.5)
ds_map_add(resistances,'cold',.6)
ds_map_add(resistances,'electric',1.25)
ds_map_add(resistances,'bio',1.1)
max_hp = floor(220 * (150 + 17 * lvl) / 1000)
hp = max_hp
max_stam = 25
stam = max_stam
endurance = 7
base_spd = 260
str = 175
base_def = 168
dex = 204
base_res = 212
pow = 172
base_aegis = 178
break;
case 7:
name = "Rollgoat"
moves[0] = m_roll_slam
moves[1] = m_burning_roll
moves[2] = m_dodge
moves[3] = m_deflect
ds_map_add(resistances,'heat',1.1)
ds_map_add(resistances,'bio',1.1)
max_hp = floor(235 * (150 + 17 * lvl) / 1000)
hp = max_hp
max_stam = 42
stam = max_stam
endurance = 10
base_spd = 390
str = 282
base_def = 228
dex = 84
base_res = 112
pow = 86
base_aegis = 125
break;
case 8:
name = "Spinjago"
moves[0] = m_whirl_wind
moves[1] = m_whirl_wind2
moves[2] = m_wind_throw
moves[3] = m_sharp_wind
ds_map_add(resistances,'wind',.5)
ds_map_add(resistances,'earth',.5)
ds_map_add(resistances,'heat',.7)
ds_map_add(resistances,'electric',.5)
ds_map_add(resistances,'bio',0)
max_hp = floor(160 * (150 + 17 * lvl) / 1000)
hp = max_hp
max_stam = 25
stam = max_stam
endurance = 6
base_spd = 274
str = 180
base_def = 164
dex = 124
base_res = 204
pow = 165
base_aegis = 224
break;
case 9:
name = "Planty"
moves[0] = m_lure
moves[1] = m_life_link
moves[2] = m_acid_spit
moves[3] = m_poison_ivy
ds_map_add(resistances,'nature',.3)
ds_map_add(resistances,'heat',1.5)
ds_map_add(resistances,'water',.5)
max_hp = floor(220 * (150 + 17 * lvl) / 1000)
hp = max_hp
max_stam = 22
stam = max_stam
endurance = 5
base_spd = 190
str = 168
base_def = 176
dex = 185
base_res = 211
pow = 165
base_aegis = 211
break;
case 10:
name = "Ratto"
moves[0] = m_blood_bite
moves[1] = m_disease_bite
moves[2] = m_regenerate
moves[3] = m_mortify
ds_map_add(resistances,'heat',1.25)
ds_map_add(resistances,'dark',.7)
ds_map_add(resistances,'arcane',1.25)
ds_map_add(resistances,'bio',0)
max_hp = floor(250 * (150 + 17 * lvl) / 1000)
hp = max_hp
max_stam = 30
stam = max_stam
endurance = 4
base_spd = 258
str = 190
base_def = 187
dex = 178
base_res = 190
pow = 152
base_aegis = 236
break;
case 11:
name = "Floating Skull"
moves[0] = m_chain_whack
moves[1] = m_hard_throw
moves[2] = m_dement
moves[3] = m_break
ds_map_add(resistances,'dark',.7)
ds_map_add(resistances,'electric',.8)
ds_map_add(resistances,'arcane',1.25)
ds_map_add(resistances,'bio',.8)
max_hp = floor(180 * (150 + 17 * lvl) / 1000)
hp = max_hp
max_stam = 27
stam = max_stam
endurance = 2
base_spd = 215
str = 260
base_def = 224
dex = 130
base_res = 185
pow = 148
base_aegis = 220
break;
case 12:
name = "Witch Spider"
moves[0] = m_hex
moves[1] = m_poison_bite
moves[2] = m_spellshot
moves[3] = m_webshot
ds_map_add(resistances,'wind',1.2)
ds_map_add(resistances,'dark',.8)
ds_map_add(resistances,'arcane',.5)
max_hp = floor(224 * (150 + 17 * lvl) / 1000)
hp = max_hp
max_stam = 26
stam = max_stam
endurance = 7
base_spd = 200
str = 138
base_def = 167
dex = 132
base_res = 200
pow = 220
base_aegis = 322
break;
case 13:
name = "Doge"
moves[0] = m_gnash
moves[1] = m_sprint_bite
moves[2] = m_shroud_snipe
moves[3] = m_frenzy
ds_map_add(resistances,'heat',1.25)
ds_map_add(resistances,'dark',.7)
ds_map_add(resistances,'arcane',1.25)
ds_map_add(resistances,'bio',1.1)
max_hp = floor(260 * (150 + 17 * lvl) / 1000)
hp = max_hp
max_stam = 38
stam = max_stam
endurance = 5
base_spd = 252
str = 230
base_def = 172
dex = 168
base_res = 165
pow = 204
base_aegis = 232
break;
case 14:
name = "Squidward"
moves[0] = m_cognito_blast
moves[1] = m_hypnosis
moves[2] = m_water_shot
moves[3] = m_slumber
ds_map_add(resistances,'heat',.7)
ds_map_add(resistances,'water',.5)
ds_map_add(resistances,'dark',.8)
ds_map_add(resistances,'electric',1.25)
ds_map_add(resistances,'arcane',.5)
ds_map_add(resistances,'bio',1.1)
max_hp = floor(290 * (150 + 17 * lvl) / 1000)
hp = max_hp
max_stam = 17
stam = max_stam
endurance = 2
base_spd = 134
str = 168
base_def = 210
dex = 195
base_res = 210
pow = 305
base_aegis = 245
break;
case 15:
name = "Sleepig"
moves[0] = m_veil_gas
moves[1] = m_tranquilize
moves[2] = m_powder_rain
moves[3] = m_dodge
ds_map_add(resistances,'heat',1.25)
ds_map_add(resistances,'dark',1.3)
ds_map_add(buffs,'sleep',IMMUNE)
ds_map_add(buffs,'fear',IMMUNE_SHARE)
with(oBattleMonster)
    if team = other.team
        if !ds_map_exists(buffs,"fear") or ds_map_find_value(buffs,"fear") > IMMUNE_SHARE
            ds_map_add(buffs,"fear",IMMUNE_TEMP)
max_hp = floor(280 * (150 + 17 * lvl) / 1000)
hp = max_hp
max_stam = 28
stam = max_stam
endurance = 4
base_spd = 186
str = 145
base_def = 266
dex = 134
base_res = 244
pow = 132
base_aegis = 205
break;
case 16:
name = "Glitchghost"
moves[0] = m_life_hack
moves[1] = m_shock
moves[2] = m_freeze
moves[3] = m_killscreen
ds_map_add(resistances,'normal',.50)
ds_map_add(resistances,'arcane',1.50)
ds_map_add(resistances,'bio',0)
max_hp = floor(280 * (150 + 17 * lvl) / 1000)
hp = max_hp
max_stam = 28
stam = max_stam
endurance = 4
base_spd = 186
str = 145
base_def = 266
dex = 134
base_res = 244
pow = 132
base_aegis = 205
break;
case 17:
name = "longcat"
moves[0] = m_swoon
moves[1] = m_fever_scratch
moves[2] = m_scratch
moves[3] = m_dodge
ds_map_add(resistances,'heat',1.25)
max_hp = floor(200 * (150 + 17 * lvl) / 1000)
hp = max_hp
max_stam = 24
stam = max_stam
endurance = 5
base_spd = 252
str = 210
base_def = 192
dex = 174
base_res = 172
pow = 184
base_aegis = 168
break;
case 18:
name = "frug"
moves[0] = m_toxic_fume
moves[1] = m_veil_gas
moves[2] = m_water_shot
moves[3] = m_poison_lick
ds_map_add(resistances,'heat',.8)
ds_map_add(resistances,'water',.8)
ds_map_add(resistances,'electric',1.2)
ds_map_add(resistances,'bio',1.1)
max_hp = floor(336 * (150 + 17 * lvl) / 1000)
hp = max_hp
max_stam = 36
stam = max_stam
endurance = 5
base_spd = 148
str = 168
base_def = 214
dex = 162
base_res = 254
pow = 130
base_aegis = 210
break;
case 19:
name = "sandworm"
moves[0] = m_burrow
moves[1] = m_tremor
moves[2] = m_gnash
moves[3] = m_acid_spit
ds_map_add(resistances,'wind',1.2)
ds_map_add(resistances,'nature',.8)
ds_map_add(resistances,'earth',.6)
ds_map_add(resistances,'electric',.5)
ds_map_add(resistances,'bio',1.1)
max_hp = floor(240 * (150 + 17 * lvl) / 1000)
hp = max_hp
max_stam = 30
stam = max_stam
endurance = 5
base_spd = 240
str = 210
base_def = 202
dex = 150
base_res = 192
pow = 142
base_aegis = 185
break;
case 20:
name = "porcupine"
moves[0] = m_rest
moves[1] = m_body_slam
moves[2] = m_curl_up
moves[3] = m_roll_slam
ds_map_add(resistances,'heat',1.25)
ds_map_add(resistances,'bio',1.1)
max_hp = floor(210 * (150 + 17 * lvl) / 1000)
deflect_percent = .2
hp = max_hp
max_stam = 35
stam = max_stam
endurance = 1
base_spd = 155
str = 268
base_def = 260
dex = 134
base_res = 224
pow = 150
base_aegis = 175
break;
case 21:
name = "Te illuminato"
moves[0] = m_drought
moves[1] = m_sandstorm
moves[2] = m_laser_beam
moves[3] = m_geokinesis
ds_map_add(resistances,'earth',.6)
ds_map_add(resistances,'heat',.6)
ds_map_add(resistances,'water',1.1)
ds_map_add(resistances,'cold',.8)
ds_map_add(resistances,'dark',.9)
ds_map_add(resistances,'electric',.5)
ds_map_add(resistances,'arcane',.8)
ds_map_add(resistances,'bio',0)
max_hp = floor(254 * (150 + 17 * lvl) / 1000)
hp = max_hp
max_stam = 25
stam = max_stam
endurance = 4
base_spd = 194
str = 145
base_def = 240
dex = 138
base_res = 220
pow = 212
base_aegis = 294
break;
case 22:
name = "Armor"
moves[0] = m_deflect
moves[1] = m_metal_spin
moves[2] = m_avalanche
moves[3] = m_holy_water
ds_map_add(resistances,'normal',.8)
ds_map_add(resistances,'wind',.8)
ds_map_add(resistances,'nature',.8)
ds_map_add(resistances,'earth',1.2)
ds_map_add(resistances,'heat',1.2)
ds_map_add(resistances,'water',1.2)
ds_map_add(resistances,'electric',1.25)
ds_map_add(resistances,'light',0)
ds_map_add(resistances,'bio',0)
max_hp = floor(275 * (150 + 17 * lvl) / 1000)
hp = max_hp
max_stam = 28
stam = max_stam
endurance = 4
base_spd = 173
str = 246
base_def = 250
dex = 212
base_res = 194
pow = 160
base_aegis = 185
break;
case 23:
name = "I AM PLANTO KING OF PLANTS"
moves[0] = m_pounce
moves[1] = m_root
moves[2] = m_natures_call
moves[3] = m_poison_ivy
ds_map_add(resistances,'nature',.6)
ds_map_add(resistances,'heat',1.5)
ds_map_add(resistances,'water',.8)
ds_map_add(resistances,'bio',1.1)
max_hp = floor(220 * (150 + 17 * lvl) / 1000)
hp = max_hp
max_stam = 32
stam = max_stam
endurance = 7
base_spd = 244
str = 184
base_def = 242
dex = 172
base_res = 175
pow = 190
base_aegis = 195
break;
}
if lvl != 50
{
base_spd = scale_stat(base_spd,lvl)
str = scale_stat(str,lvl)
base_def = scale_stat(base_def,lvl)
dex = scale_stat(dex,lvl)
base_res = scale_stat(base_res,lvl)
pow = scale_stat(pow,lvl)
base_aegis = scale_stat(base_aegis,lvl)
}
