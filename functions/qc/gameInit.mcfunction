
# set const
scoreboard players set -20 const -20
scoreboard players set 1 const 1

# starts map
function qc:objectiveInit
function qc:teamInit
function qc:var_init
function qc:varSet

# starts clock
gamerule gameLoopFunction qc:update

