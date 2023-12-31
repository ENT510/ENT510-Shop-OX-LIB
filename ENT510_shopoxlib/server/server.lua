
Config						  = {}

ESX = exports["es_extended"]:getSharedObject()
local showNotify = function(id, msg)
	if Config.Notify == "okok" then
		TriggerClientEvent('okokNotify:Alert', id, 'Information', msg, 3000, 'info', false)
	elseif Config.Notify == "default" then
		TriggerClientEvent('esx:showNotification', id, msg)
	elseif Config.Notify == "ent" then 
		TriggerClientEvent('ENT510-notify:notify', id, "info", "Information", msg, 3000, "Success notification message", "right")
	elseif Config.Notify == "oxlib" then 
		TriggerClientEvent('ox_lib:notify', id, { type = 'success', duration = 3000, description = msg, position = 'top',   icon = 'info',
		iconColor = '#b802fc',
	    style = {
			backgroundColor = '#141517',
			color = '#C1C2C5',
			['.description'] = {
			  color = '#fcfffc'
			}
		},
	})
	end
end



local creatorname = "𝗘͟𝗡͟𝗧͟𝟱͟𝟭͟𝟬͟ ©"
local creatorlogo = "https://cdn.discordapp.com/attachments/1165725799337426965/1167834793107525724/3dgifmaker62171.gif?ex=654f91e7&is=653d1ce7&hm=130efddef08321740a4ceefc2c1b8e7ae3ce6900c03c8a17ceb8dce0080f9a89&"

RegisterServerEvent("ENT510:buyItem", function(index, count)
	local xPlayer = ESX.GetPlayerFromId(source)
	if index and Config.Items and Config.Items[index] then
		local item = Config.Items[index]
			if xPlayer.getMoney() >= (item.price * count) then   --<--- this string is correct
			xPlayer.removeMoney(item.price * count)
			xPlayer.addInventoryItem(item.name, count)
			showNotify(xPlayer.source, _U('acquistato')..' '.. (item.name) ..' '..'x' ..' '.. count .. ' '.. 'at price' .. ' ' .. item.price * count ..'$')
			local connect = {
				{
					["color"] = "8663711",
					["title"] = "✅ LOG SHOP ✅",
					["description"] = "👨‍💻 𝙿𝙻𝙰𝚈𝙴𝚁: **"..xPlayer.getName().."** \n 📡 𝙸𝙿: **"..GetPlayerEndpoint(xPlayer.source).."** \n 🔢 𝚀𝚄𝙰𝙽𝚃𝙸𝚃𝙰 𝙸𝚃𝙴𝙼𝚂: **"..count.."** \n ❓ 𝚃𝙸𝙿𝙾𝙻𝙾𝙶𝙸𝙰 𝙸𝚃𝙴𝙼𝚂: **"..item.name.."** \n 💾 𝙵𝙸𝚅𝙴𝙼 𝙻𝙸𝙲𝙴𝙽𝚂𝙴: **"..xPlayer.getIdentifier().."** \n 📶 𝙿𝙸𝙽𝙶: **"..GetPlayerPing(xPlayer.source).."** \n ⏱️ 𝙳𝙰𝚃𝙰/𝙾𝚁𝙰𝚁𝙸𝙾 𝙰𝙲𝚀𝚄𝙸𝚂𝚃𝙾: **"..os.date("%d/%m/%Y - %X").."**",
					["footer"] = {
						["text"] = creatorname,
						["icon_url"] = creatorlogo,
					},
				}
			}
		
			PerformHttpRequest(Config.Webhook, function(err, text, headers) end, 'POST', json.encode({username = "🐌 LOG ENT510 ITEMS SHOP 🐌", embeds = connect}), { ['Content-Type'] = 'application/json' })
		else
			showNotify(xPlayer.source, _U('non_haisoldi'))
		end
	end
end)


