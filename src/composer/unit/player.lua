--[[
    This file is part of the MapleQuestAdvisor planning tool
    Copyleft (L) 2020 RonanLana

    GNU General Public License v3.0

    Permissions of this strong copyleft license are conditioned on making available complete
    source code of licensed works and modifications, which include larger works using a licensed
    work, under the same license. Copyright and license notices must be preserved. Contributors
    provide an express grant of patent rights.
--]]

require("composer.containers.units.player_table")
require("router.filters.path")
require("utils.provider.text.csv")
require("utils.provider.text.table")

local function load_exp_to_next_level(pUnitData, sFilePath)
    local tExpRs = read_result_set(sFilePath, {"exp"})
    if #tExpRs > 1 then
        for _, tRow in ipairs(tExpRs) do
            local iExp = tonumber(tRow["exp"])
            pUnitData:add_exp_to_next_level(iExp)
        end
    end
end

local function load_player_data(sDirPath)
    local pUnitData = CPlayerDataTable:new()
    load_exp_to_next_level(pUnitData, sDirPath .. "/exp_table.csv")

    return pUnitData
end

function load_resources_player()
    local sDirPath = RPath.RSC_META_UNITS_CSV

    local pPlayerData = load_player_data(sDirPath)
    return pPlayerData
end
