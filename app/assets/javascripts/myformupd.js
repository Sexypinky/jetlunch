$(document).ready(function(){
    $('#Form').on('click','input[type="submit"]', function() {
        $.ajax({
            type: "POST",
            url: "dashboard/cards/cardcheck",
            data: "check_text="+$("#check_text").val()+"&id="+$("#id").val()+"&time="+$("#time").val(),
            success: function(notice) {
                $("#flash").html('<div class="alert alert-info">'+notice+'</div>');
                $("#Form").load(location.href + " #Form");
                $("#point").val('stop');
            }
        });
        return false;
    });
});
