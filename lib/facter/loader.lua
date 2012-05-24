module('facter.loader',package.seeall)

require('facter')

function load()
  -- Goddamn this is horrible
  for dir in io.popen([[ls facts]]):lines() do
    -- TODO: Load each fact one by one
    dofile('facts/' .. dir)
  end

end
