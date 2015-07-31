image_index = argument0
lvl = global.level;
if lvl > 50
    lvl = 50
else if lvl <= 0
    lvl = 1
global.level = lvl;
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
base_spd = floor(144 * lvlsc)
str = floor(124 * lvlsc)
base_def = floor(195 * lvlsc)
dex = floor(160 * lvlsc)
base_res = floor(240 * lvlsc)
pow = floor(164 * lvlsc)
base_aegis = floor(158 * lvlsc)
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
base_spd = floor(296 * lvlsc)
str = floor(132 * lvlsc)
base_def = floor(166 * lvlsc)
dex = floor(142 * lvlsc)
base_res = floor(150 * lvlsc)
pow = floor(176 * lvlsc)
base_aegis = floor(145 * lvlsc)
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
base_spd = floor(195 * lvlsc)
str = floor(170 * lvlsc)
base_def = floor(212 * lvlsc)
dex = floor(185 * lvlsc)
base_res = floor(182 * lvlsc)
pow = floor(165 * lvlsc)
base_aegis = floor(180 * lvlsc)
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
base_spd = floor(320 * lvlsc)
str = floor(192 * lvlsc)
base_def = floor(170 * lvlsc)
dex = floor(150 * lvlsc)
base_res = floor(182 * lvlsc)
pow = floor(170 * lvlsc)
base_aegis = floor(160 * lvlsc)
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
base_spd = floor(270 * lvlsc)
str = floor(257 * lvlsc)
base_def = floor(189 * lvlsc)
dex = floor(114 * lvlsc)
base_res = floor(189 * lvlsc)
pow = floor(190 * lvlsc)
base_aegis = floor(189 * lvlsc)
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
base_spd = floor(160 * lvlsc)
str = floor(165 * lvlsc)
base_def = floor(235 * lvlsc)
dex = floor(224 * lvlsc)
base_res = floor(226 * lvlsc)
pow = floor(178 * lvlsc)
base_aegis = floor(180 * lvlsc)
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
base_spd = floor(260 * lvlsc)
str = floor(175 * lvlsc)
base_def = floor(168 * lvlsc)
dex = floor(204 * lvlsc)
base_res = floor(212 * lvlsc)
pow = floor(172 * lvlsc)
base_aegis = floor(178 * lvlsc)
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
base_spd = floor(390 * lvlsc)
str = floor(282 * lvlsc)
base_def = floor(228 * lvlsc)
dex = floor(84 * lvlsc)
base_res = floor(112 * lvlsc)
pow = floor(86 * lvlsc)
base_aegis = floor(125 * lvlsc)
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
base_spd = floor(274 * lvlsc)
str = floor(180 * lvlsc)
base_def = floor(164 * lvlsc)
dex = floor(124 * lvlsc)
base_res = floor(204 * lvlsc)
pow = floor(165 * lvlsc)
base_aegis = floor(224 * lvlsc)
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
base_spd = floor(190 * lvlsc)
str = floor(168 * lvlsc)
base_def = floor(176 * lvlsc)
dex = floor(185 * lvlsc)
base_res = floor(211 * lvlsc)
pow = floor(165 * lvlsc)
base_aegis = floor(211 * lvlsc)
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
base_spd = floor(258 * lvlsc)
str = floor(190 * lvlsc)
base_def = floor(187 * lvlsc)
dex = floor(178 * lvlsc)
base_res = floor(190 * lvlsc)
pow = floor(152 * lvlsc)
base_aegis = floor(236 * lvlsc)
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
base_spd = floor(215 * lvlsc)
str = floor(260 * lvlsc)
base_def = floor(224 * lvlsc)
dex = floor(130 * lvlsc)
base_res = floor(185 * lvlsc)
pow = floor(148 * lvlsc)
base_aegis = floor(220 * lvlsc)
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
base_spd = floor(200 * lvlsc)
str = floor(138 * lvlsc)
base_def = floor(167 * lvlsc)
dex = floor(132 * lvlsc)
base_res = floor(200 * lvlsc)
pow = floor(220 * lvlsc)
base_aegis = floor(322 * lvlsc)
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
base_spd = floor(252 * lvlsc)
str = floor(230 * lvlsc)
base_def = floor(172 * lvlsc)
dex = floor(168 * lvlsc)
base_res = floor(165 * lvlsc)
pow = floor(204 * lvlsc)
base_aegis = floor(232 * lvlsc)
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
endurance = 2
base_spd = floor(134 * lvlsc)
str = floor(168 * lvlsc)
base_def = floor(210 * lvlsc)
dex = floor(195 * lvlsc)
base_res = floor(210 * lvlsc)
pow = floor(305 * lvlsc)
base_aegis = floor(245 * lvlsc)
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
base_spd = floor(186 * lvlsc)
str = floor(145 * lvlsc)
base_def = floor(266 * lvlsc)
dex = floor(134 * lvlsc)
base_res = floor(244 * lvlsc)
pow = floor(132 * lvlsc)
base_aegis = floor(205 * lvlsc)
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
base_spd = floor(186 * lvlsc)
str = floor(145 * lvlsc)
base_def = floor(266 * lvlsc)
dex = floor(134 * lvlsc)
base_res = floor(244 * lvlsc)
pow = floor(132 * lvlsc)
base_aegis = floor(205 * lvlsc)
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
base_spd = floor(252 * lvlsc)
str = floor(210 * lvlsc)
base_def = floor(192 * lvlsc)
dex = floor(174 * lvlsc)
base_res = floor(172 * lvlsc)
pow = floor(184 * lvlsc)
base_aegis = floor(168 * lvlsc)
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
base_spd = floor(148 * lvlsc)
str = floor(168 * lvlsc)
base_def = floor(214 * lvlsc)
dex = floor(162 * lvlsc)
base_res = floor(254 * lvlsc)
pow = floor(130 * lvlsc)
base_aegis = floor(210 * lvlsc)
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
base_spd = floor(240 * lvlsc)
str = floor(210 * lvlsc)
base_def = floor(202 * lvlsc)
dex = floor(150 * lvlsc)
base_res = floor(192 * lvlsc)
pow = floor(142 * lvlsc)
base_aegis = floor(185 * lvlsc)
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
base_spd = floor(155 * lvlsc)
str = floor(268 * lvlsc)
base_def = floor(260 * lvlsc)
dex = floor(134 * lvlsc)
base_res = floor(224 * lvlsc)
pow = floor(150 * lvlsc)
base_aegis = floor(175 * lvlsc)
break;
}