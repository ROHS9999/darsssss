    var image=["masque.jpg","allahabad.jpg" ,"beauty_taj.jpg" ,"adh.jpg","rishikesh.jpg","fort-palaces.jpg","heritage.jpg","ambedkar.jpg","fatehpur.jpg"];
    var n=image.length;
    var i=0;
    document.getElementById("img").src=image[i];
    function slide(obj)
{
    obj.style.opacity=0;
    function select()
    {
        obj.style.opacity=+obj.style.opacity+0.02;
        if(+obj.style.opacity<1)
            setTimeout(select, 25);
        
    }
    select();
}
function slider()
{
    i=(i+1)%n;
    document.getElementById("img").src=image[i];
    slide(document.getElementById("image"));
}