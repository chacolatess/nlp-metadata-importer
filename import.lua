local constants = require 'constants'

local LrApplication = import 'LrApplication'
local LrTasks = import 'LrTasks'

--- get the active catalog
local catalog = LrApplication.activeCatalog()

-- get the currently selected photo
local photo = catalog.targetPhoto

LrTasks.startAsyncTask(function()
    -- changes to the catalog data need to be done with write access
    catalog:withPrivateWriteAccessDo(function(context)
    -- catalog:withWriteAccessDo('write metadata', function(context)

        -- local nlpPlugin = "com.nate.photographic.negative"
        local shutterSpeed = "1/8"

        photo:setPropertyForPlugin('com.nate.photographic.negative', 'nlpShutterSpeed', shutterSpeed)

    end)

end, 'test task')
-- TODO: task name
