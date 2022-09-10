for _, entity in pairs(data.raw["transport-belt"]) do
    entity.working_sound.sound.volume = 0.0
end
for _, e in pairs(data.raw['underground-belt']) do
    e.working_sound.sound.volume = 0.0
end
for _, e in pairs(data.raw['splitter']) do
    if e.working_sound and e.working_sound.sound then
        for _, s in pairs(e.working_sound.sound) do
            s.volume = 0.0
        end
    end
end
if mods['miniloader'] then
    for _, e in pairs(data.raw['loader-1x1']) do
        if e.working_sound and e.working_sound.sound then
            e.working_sound.sound.volume = 0.0
        end
    end
end
