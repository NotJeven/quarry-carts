tp @a[team=team1,score_sinceDeath_min=200,score_respawn_min=2,score_respawn=2,score_inGame_min=1,score_inGame=1] 1004 14 0 -90 0
tp @a[team=team2,score_sinceDeath_min=200,score_respawn_min=2,score_respawn=2,score_inGame_min=1,score_inGame=1] 1141 14 0 90 0
gamemode adventure @a[score_sinceDeath_min=200,score_respawn_min=2,score_respawn=2,score_inGame_min=1,score_inGame=1]
effect @a[score_sinceDeath_min=200,score_respawn_min=2,score_respawn=2,score_inGame_min=1,score_inGame=1] minecraft:absorption 2 3 0
playsound mob.zombie.unfect master @a[score_sinceDeath_min=200,score_respawn_min=2,score_respawn=2,score_inGame_min=1,score_inGame=1] 0 100 0 100 1 1
scoreboard players set @a[score_sinceDeath_min=200,score_respawn_min=2,score_respawn=2,score_inGame_min=1,score_inGame=1] respawn 0


