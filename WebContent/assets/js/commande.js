var CCNV = 0;

$('#purchase').on('click', function(){
    console.log('button clicked')
    if($('#idCard').val().length != 16 ){
        $('#idCard').addClass('is-invalid');
        CCNV = 1;
    }else{
        $('#idCard').removeClass('is-invalid');
        CCNV = 0;
    }

    if(CCNV === 0){
        $('.submitPayement').click();
    }

    
})