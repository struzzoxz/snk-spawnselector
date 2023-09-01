$(function(){
    function display(bool) {
        if (bool){
            $(".container").show()
        } else {
            $(".container").hide()
        }
    }

    display(false)

    window.addEventListener("message", function(event){
        
        let item = event.data
        if (item.type === "ui"){
            if (item.status){
                display(true)
             }
             else {
                display(false)
             }
    }
})


    $(".close").click(function ()
    {$.post(`https://${GetParentResourceName()}/exit`, JSON.stringify({})) })
    $(".paletob").click(function ()
    {$.post(`https://${GetParentResourceName()}/paleto`, JSON.stringify({})) })
    $(".spawngar").click(function ()
    {$.post(`https://${GetParentResourceName()}/garage`, JSON.stringify({})) })
    $(".spawnspiaggia").click(function ()
    {$.post(`https://${GetParentResourceName()}/spiaggia`, JSON.stringify({})) })
    $(".spawngoverno").click(function ()
    {$.post(`https://${GetParentResourceName()}/governo`, JSON.stringify({})) })
    })


