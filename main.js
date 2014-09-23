

function toggleSignup(){
    console.log($('#login').css('display'));
    if($('#login').css('display') == 'none') {
        $('#signup').hide();
        $('#login').show();
    } else {
        $('#login').hide();
        $('#signup').show();
    }

}