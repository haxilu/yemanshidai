-----------Init---START----------------------
xRobot.Run("yemanshidai")

--xRobot.Set_Robot_Options("sleep_time",100)
--xRobot.Set_Robot_Options("loop_sw",true)
--xRobot.Set_Robot_Options("xmlog_sw",true)
--xRobot.Set_Robot_Options("applog_sw",true)
--xRobot.Set_Robot_Options("ide_print_sw",true)

--xRobot.Set_Script_Options("scale_xy",{ 720, 1280 })
--xRobot.Set_Script_Options("msgbox_position_xy",{ 233, 1215 })
--xRobot.Set_Script_Options("center_msgbox_position_xy",{ 442,24 })
--xRobot.Set_Script_Options("homekey_position","下")
--xRobot.Set_Script_Options("logfolder_name","野蛮时代")
--xRobot.Set_Script_Options("zd_floatwindow_location_xy",{ 5, 718 })
-----------Init---END----------------------

xRobot.Task("yemanshidai",
function (list)
    关闭所有界面()
    联盟帮助()
    if 界面大小调整() then
        return "界面部分1"
    end
    
    return list.name
end
)

xRobot.Task("界面部分1",
function (list)  
    升级建筑(1)
    
    if xGame.Find({"部落界面","圣火"},true) then	
    elseif  xGame.Find({"部落界面","步兵"},true) then
    elseif  xGame.Find({"部落界面","枪兵"},true) then     
    end
	
	XM.Swipe(715,719,100,722,4)
    return "界面部分2"
end
)

xRobot.Task("界面部分2",
function (list)
    sleep(1000)
    --先检查后移动
    升级建筑(2)
    松鼠坚果()
    第二_福利领取()
    领取补给飞船()
    第二_未建造()
	XM.Swipe(715,719,310,722,4)
    
    return "界面部分3"
end
)

xRobot.Task("界面部分3",
function (list)  
	
    return "yemanshidai"
end
)


xRobot.Task("升级",
function (list)  
	
    升级建筑()
    return "yemanshidai"
end
)
