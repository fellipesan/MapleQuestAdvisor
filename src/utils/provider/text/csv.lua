--[[
    This file is part of the MapleQuestAdvisor planning tool
    Copyleft (L) 2020 RonanLana

    GNU General Public License v3.0

    Permissions of this strong copyleft license are conditioned on making available complete
    source code of licensed works and modifications, which include larger works using a licensed
    work, under the same license. Copyright and license notices must be preserved. Contributors
    provide an express grant of patent rights.
--]]

require("utils/provider/io/file")
require("utils/provider/io/wordlist")
require("utils/provider/text/table")

function read_csv(sFilePath)
    local fn_split = split_csv
    return read_table(sFilePath, fn_split)
end