//Put the jQuery code here

$(function(){

    $('input').attr('disabled', false);
    $('.cancel_upload_link').hide();

    $('input').focusin(function(){
        $('input').attr('disabled', true);
        $(this).attr('disabled', false);

        if($(this).attr('id') == 'workout_mp3_part_one'){
            $('part_one .cancel_upload_link').show();
        }else if($(this).attr('id') == 'workout_mp3_part_two'){
            $('part_two .cancel_upload_link').show();
        }else if($(this).attr('id') == 'workout_mp3_part_three'){
            $('part_three .cancel_upload_link').show();
        }else if($(this).attr('id') == 'workout_mp3_intro'){
            $('intro .cancel_upload_link').show();
        }

    });

    $('.cancel_upload_link').click(function(){
        $('input').attr('disabled', false);
        $('.cancel_upload_link').hide();
    });

});

