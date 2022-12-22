-- TODO: Using https://github.com/Eandrju/cellular-automaton.nvim plugin as a screenasaver
-- ref: https://github.com/tamton-aquib/zone.nvim
-- - Use the plugin animation when the neovim hits an idle time of specified time
-- - try when it hits 5 minutes of idle time

-- -- Creating a simple setTimeout wrapper
-- local uv = vim.loop
-- local function setTimeout(timeout, callback)
--   local timer = uv.new_timer()
--   timer:start(timeout, 0, function ()
--     vim.notify(timer)
--     timer:stop()
--     -- timer:close()
--     callback()
--   end)
--   return timer
-- end

-- setTimeout(0)

-- -- Creating a simple setInterval wrapper
-- local function setInterval(interval, callback)
--   local timer = uv.new_timer()
--   timer:start(interval, interval, function ()
--     callback()
--   end)
--   return timer
-- end

-- -- And clearInterval
-- local function clearInterval(timer)
--   timer:stop()
--   timer:close()
-- end
