$(function(){
    verificarconexion();
    twitter();
    var paside = $('<div id="#pagina" class="aside pagina-ext"></div>'),
        closeaside = $('<div id="closeaside" class="icon-close"></div>');
        iframeaside = $('<iframe id="iframe" class="" src="" allowtransparency="false"></iframe>'),
        loading = $('<div id="loading"></div>');
    var $link = $('.header__menu a');
    var $info = $('#info'),
        $developer = $('aside'),
        $close = $('#close'),
        $pagina = $('#pagina'),
        $acontainer = $('#acontainer'),
        $aclose = $('#closeaside'),
        $lleyes = $('.lleyes'),
        $iframe = $('#iframe');
    $developer.slideUp(0);
    $acontainer.fadeOut(0);
    paside.append(closeaside).append(iframeaside).append(loading);
    $('body').append(paside);
    paside.fadeOut(0);
    $link.on('click', function(e){
    	e.preventDefault();
    	var lattr = $(this).attr('href');
    	$('html, body').animate({
            scrollLeft: $(lattr).offset().left
        }, 1000);
    });
    $('.section').on("swipeleft",function(){
	  alert("You swiped left!");
	});

    $info.on('click', function(){
        //alert("hola");
        $developer.slideDown(300);
        setTimeout(function(){
            $acontainer.fadeIn(300);
        },100);
        $developer.on('click',function(e){
            if (e.target !== this) return;
            $developer.slideUp(300);
            $acontainer.fadeOut(200)
        });
    });
    $close.click(function(){
        $developer.trigger('click');
    });
    $aclose.on('click',function(){
        $pagina.fadeOut(300);
    });
    verleyes(5);
    vervideos(5);
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
    
});
function twitter(){
    var portada = $('#ptwitter'),
        logo = $('#plogo'),
        twitter = $('.twitter-timeline');
    portada.css('height', portada.width()/3);
    logo.css('width',logo.height());
    var atwitter =  $('main').height() - portada.height();
    twitter.attr('height',atwitter);
}
function verleyes(limite)
{
    var paside = $('<div id="#pagina" class="aside pagina-ext"></div>'),
        closeaside = $('<div id="closeaside" class="icon-close-circle"></div>');
        iframeaside = $('<iframe id="iframe" class="" src="" allowtransparency="false"></iframe>'),
        // loading = $('<div id="loading"></div>');
    paside.append(closeaside).append(iframeaside).append(loading);
    $('body').append(paside);
    paside.fadeOut(0);
  var  url="http://roman.com.mx/app/verleyes.php";
//   var url="php/verleyes.php";
  $.post(url,{limite:limite},function(resposetext){
        $('#leyescontainer').html(resposetext);
        var lleyesss = $('.lleyes');
        lleyesss.on('click',function(e){
            e.preventDefault();
            var atrib = $(this).attr('href');
            //alert(atrib);
            iframeaside.attr('src',atrib);
            paside.fadeIn(300);
            iframeaside.load(function(){
                loading.fadeOut(100);
            })
        })
        closeaside.on('click', function(){
        paside.fadeOut(200);
        setTimeout(function(){

            loading.fadeIn(0);
        },200);
    });
  });
}
function vervideos(limite)
{
  var  url="http://roman.com.mx/app/vervideos.php";
//   var url="php/vervideos.php";
    console.log(url);
    $.post(url,{limite:limite},function(responsetext){
       $('#videoscontainer').html(responsetext);
       console.log(responsetext);
    });
}

function verificarconexion(){
    var data="$(this).serializeArray()",
                url="http://roman.com.mx/app/verificarconexion.php";
            $.ajax({
                    url: url,
                    type:'post',
                    dataType: 'json',
                    data: data,
                })
                .done(function(){
                    setTimeout(function(){
                         $('#cargando').fadeOut(300);
                    },3500);
                })
                .fail(function(){
                    setTimeout(function(){
                        $('#cargando').fadeOut(300);
                        $('#noconectado').fadeIn(1);
                    },500);
                })
}