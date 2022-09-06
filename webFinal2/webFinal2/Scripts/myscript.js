$(function () {
    $("#cevapListesi").on("click", ".btnSil", function () {
        if (confirm("Bu satırı silmek istediğinizden emin misiniz?")) {
            var id = $(this).data("id")
            var btn = $(this);
            $.ajax({
                type: "GET",
                url: "/Home/Table/" + id,     
                success: function () {
                    btn.parent().parent().remove();
                }
            });
        }
      
    });

})