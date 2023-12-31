
local curResName = GetCurrentResourceName()
local curVersion = GetResourceMetadata(curResName, 'version')
local resourceName = 'ENT510_shopoxlib'
local continueCheck = true

local getRepoInformations = function()
    local repoVersion, repoURL

    PerformHttpRequest('https://api.github.com/repos/ENT510/ENT510_oxlib_shop/releases/latest', function(err, response, headers)
        if err == 200 then
            local data = json.decode(response)

            repoVersion = data.tag_name
            repoURL = data.html_url
        else
            repoVersion = curVersion
            repoURL = 'https://github.com/ENT510/ENT510_oxlib_shop'
        end
    end, 'GET')

    repeat
        Wait(500)
    until (repoVersion and repoURL)

    return repoVersion, repoURL
end

local checkVersion = function(err, responseText, headers)
    local repoVersion, repoURL = getRepoInformations()

    if curVersion ~= repoVersion then
        print(('^0[^3WARNING^0] %s is ^1NOT ^0up to date!'):format(resourceName))
        print(('^0[^3WARNING^0] Your Version: ^2%s^0'):format(curVersion))
        print(('^0[^3WARNING^0] Latest Version: ^2%s^0'):format(repoVersion))
        print(('^0[^3WARNING^0] Get the latest Version from: ^2%s^0'):format(repoURL))
    else
        print(('^0[^2INFO^0] %s is up to date! (^2%s^0)'):format(resourceName, curVersion))
        continueCheck = true
    end
end

CreateThread(function()
    if curResName ~= 'ENT510_shopoxlib' then
        resourceName = ('ENT510_shopoxlib (%s)'):format(curResName)
    end

    while continueCheck do
        PerformHttpRequest('https://github.com/ENT510/ENT510_oxlib_shop/releases/latest', checkVersion, 'GET')
        Wait(3600000)
    end
end)

