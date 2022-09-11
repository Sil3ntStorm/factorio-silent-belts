local function silence(e)
    -- log(e.name .. ' sound: ' .. serpent.line(e.working_sound))
    if e.working_sound and e.working_sound.sound then
        if e.working_sound.sound.volume then
            e.working_sound.sound.volume = 0.0
        elseif type(e.working_sound.sound[1]) == 'table' then
            for _, s in pairs(e.working_sound.sound) do
                s.volume = 0.0
            end
        end
    end
end

for _, e in pairs(data.raw["transport-belt"]) do
    silence(e)
end
for _, e in pairs(data.raw['underground-belt']) do
    silence(e)
end
for _, e in pairs(data.raw['splitter']) do
    silence(e)
end
if mods['miniloader'] then
    for _, e in pairs(data.raw['loader-1x1']) do
        silence(e)
    end
end
-- log(serpent.line(data.raw['transport-belt']))
-- log(serpent.line(data.raw['underground-belt']))
-- log(serpent.line(data.raw['splitter']))
-- log(serpent.line(data.raw['loader-1x1']))
