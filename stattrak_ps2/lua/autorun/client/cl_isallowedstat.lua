hook.Add("HUDPaint", "dont.load.too.early55", function()
    timer.Create("can.playerviewStat", 2, 0, function()
        if LocalPlayer():GetNWBool('staktrak_enabled', false) == true then
            LocalPlayer():ConCommand('cl_tfa_csgo_stattrack 1')
        else
            LocalPlayer():ConCommand('cl_tfa_csgo_stattrack 0')
        end
    end)
    hook.Remove("HUDPaint", "dont.load.too.early55")
end)