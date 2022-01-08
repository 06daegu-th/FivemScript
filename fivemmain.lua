local ch_adrag = {function(player,choice)
	local user_id = vRP.getUserId({player})
	if user_id ~= nil then
		vRPclient.getNearestPlayer(player,{10},function(nplayer)
			if nplayer ~= nil then
				local nuser_id = vRP.getUserId({nplayer})
				if nuser_id ~= nil then
							TriggerClientEvent("dr:drag", nplayer, player)
						else
					end)
				else
					vRPclient.notify(player,{lang.common.no_player_near()})
				end
			else
				vRPclient.notify(player,{lang.common.no_player_near()})
			end
		end)
	end
end, "가장 가까운 플레이어를 드래그하십시오."}


    if vRP.hasPermission({user_id,"police.drag"}) then
      choices["끌고 가기"] = ch_adrag -- Drags closest handcuffed player
    end