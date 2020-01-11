
--任务表
TaskTable={}
--任务完成表
TaskOverTable={}
function 界面大小调整()
    if xGame.Find({"界面","部落界面"}) then
		XM.Swipe(560,328,18,1044,2)
        sleep(100)
        while xGame.Find({"界面","魔法门"}) == false do
            XM.Swipe(6,647,697,707,4)
            sleep(100)
            XM.Swipe(560,328,18,1044,2)
            领取左下角礼物()
        end
        
        return true
    else
        return false
    end
end


--点击坚果
function 松鼠坚果()
	
	if xGame.Find({"部落界面","坚果"},true) then
		
		sleep(3000)
        XM.RndTap(310,657)
    end
    
    if xGame.Find({"指引","手指"},true) then
		
    end
   
    
end

--升级建筑
function 升级建筑(quyu)
	xGame.Find({"建筑升级","免费"},true)
    --区域1
	if 1 == quyu then
		建筑升级(quyu,"传送门")

    elseif 2 == quyu then
        建筑升级(quyu,"要塞")
		
        
    elseif 3 == quyu then

    end	
    
    
end
--升级操作
function 建筑升级(num,name)
    if xGame.Find({"建筑升级"..num,name},true) then
		升级建筑操作()
    end
end
--升级建筑操作
function 升级建筑操作()
    sleep(500) 
	if xGame.Find({"建筑升级","升级按钮"},true) then
		sleep(500)
		xGame.Find({"建筑升级","可升级按钮"},true)
	else
	   
	end
end

--领取左下角礼物
function 领取左下角礼物()
    xGame.Find({"界面","左下角礼物"},true)
end
--领取补给飞船
function 领取补给飞船()
    if xGame.Find({"建筑升级2","补给飞船"},true) then
        sleep(200)
        XM.RndTap(382,824)
    end
end

--关闭所有界面
function 关闭所有界面()
    if xGame.Find({"关闭界面","左上角红叉"},true) then
    
    elseif xGame.Find({"关闭界面","左上角红叉"},true) then
        
    end
end