module('facter.application',package.seeall)

require('facter.loader')

function run()
  -- Parse some arguments
  
  -- Now load facts
  facter.loader.load()

  for k,v in pairs(facter.fact_table) do
    resolve = v()
    print(k .. " => " .. resolve)
  end
end
