--[[
    This file is part of the MapleQuestAdvisor planning tool
    Copyleft (L) 2020 RonanLana

    GNU General Public License v3.0

    Permissions of this strong copyleft license are conditioned on making available complete
    source code of licensed works and modifications, which include larger works using a licensed
    work, under the same license. Copyright and license notices must be preserved. Contributors
    provide an express grant of patent rights.
--]]

require("utils.class");

CFieldReturnTable = createClass({
    tFieldReturn
})

function CFieldReturnTable:add_field_return(iSrcid, iDestId)
    self.tFieldReturn[iSrcid] = iDestId
end

function CFieldReturnTable:get_field_return(iSrcid)
    return self.tFieldReturn[iSrcid]
end
