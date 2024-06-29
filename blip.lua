local Venus = {

 --HOODLAR

  {title = "Kiralık Hood", id=439, colour=5, scale=0.6, vector3 = vector3(-33.09, -1521.04, 30.37)},

  --DİĞER
  
	{title = "Kiralık Malikane", id=439, colour=5, scale=0.6, vector3 = vector3(-862.92, -36.16, 40.55)},
  {title = "Kiralık Malikane", id=439, colour=5, scale=0.6, vector3 = vector3(-811.59, 180.49, 72.15)},
  {title = "Unicorn Kafe", id=121, colour=5, scale=0.6, vector3 = vector3(127.63, -1296.13, 29.27)},
  {title = "Motel", id=475, colour=61, scale=0.65, vector3 = vector3(322.82, -217.35, 54.09)},
  {title = "Lost MC", id=226, colour=40, scale=0.7, vector3 = vector3(977.15, -120.6, 74.08)},

  --DEPARTMANLAR

  {title = "Adalet Bakanlığı", id=419, colour=0, scale=0.65, vector3 = vector3(-542.21, -208.96, 37.65)},
}








-- BLİP İDLER https://docs.fivem.net/docs/game-references/blips/

-- DOKUNMA

Citizen.CreateThread(function()

    for _, info in pairs(Venus) do
      info.blip = AddBlipForCoord(info.vector3)
      SetBlipSprite(info.blip, info.id)
      SetBlipDisplay(info.blip, 4)
      SetBlipScale(info.blip, info.scale)
      SetBlipColour(info.blip, info.colour)
      SetBlipAsShortRange(info.blip, true)
	  BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(info.title)
      EndTextCommandSetBlipName(info.blip)
    end
end)
