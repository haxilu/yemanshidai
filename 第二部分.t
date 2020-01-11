function 第二_福利领取()
    if xGame.Find({"建筑升级2","福利"},true) then
        sleep(1000)
        if xGame.Find({"建筑升级2","每日奖励"},true) then
            sleep(1000)
            xGame.RndTap(360,993)
        else
        end
    end
end

function 第二_未建造()
    if xGame.Find({"建筑升级2","未建造仓库"},true) then
        sleep(1000)
        立即完成无花费()
    end
end