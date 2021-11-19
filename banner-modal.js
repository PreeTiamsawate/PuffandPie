// $(document).ready(function () {
//   if ($("#modal-banner").find(".modal-img").attr("src")) {
//     $("#modal-banner").modal("show");
//   }
// });
banner_modal_image = document.querySelector(".modal-img");
var myModal = new bootstrap.Modal(document.getElementById("modal-banner"));

if (banner_modal_image.getAttribute("src")) {
  myModal.show();
}
