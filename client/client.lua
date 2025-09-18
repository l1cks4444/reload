RegisterCommand("rr", function()
    local playerPed = PlayerPedId()
    local coords = GetEntityCoords(playerPed)

    local x, y, z = coords.x, coords.y, coords.z

    SetEntityCoordsNoOffset(playerPed, 0.0, 0.0, 1000.0, false, false, false)

    Wait(1000)

    SetEntityCoordsNoOffset(playerPed, x, y, z, false, false, false)

    RequestCollisionAtCoord(x, y, z)
    while not HasCollisionLoadedAroundEntity(playerPed) do
        Wait(10)
    end

    print("TP")
end)
