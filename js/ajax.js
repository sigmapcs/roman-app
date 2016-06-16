$(function () {
    miFuncion(5);
    // console.log('funciona');
    var $lleyes = $('.lleyes');
    console.log($lleyes);
    $lleyes.css('color','red');
    // $lleyes.on('click', function(e){
    //     e.preventDefault();
    //    var link = $(this).attr('href') ;
    //    console.log(link);
    // });
});

function miFuncion(limite)
{
  var  url="php/verbd.php";
  $.post(url,{limite:limite},function(resposetext){
        console.log(resposetext);
        $('#leyescontainer').html(resposetext);
        var lleyesss = $('.lleyes');
        lleyesss.on('click',function(e){
            e.preventDefault();
            var atrib = $(this).attr('href');
            alert(atrib);
            paside.fadeIn(300);
            iframeaside.load(function(){
                loading.fadeOut(100);
            })
        })
  });
}

    // $lleyes.on('click', function(e){
    //     e.preventDefault();
    //     var atrib = $(this).attr('href');
    //     iframeaside.attr('src',atrib);
    //     console.log(atrib);
    //     paside.fadeIn(300);
    //     iframeaside.load(function(){
    //         loading.fadeOut(100);
    //     })
    // });
    // closeaside.on('click', function(){
    //     paside.fadeOut(200);
    //     setTimeout(function(){

    //         loading.fadeIn(0);
    //     },200);
    // });