// Add open/close icons toggle feature to form accordion
function toggleIcon(e) {
$(e.target)
    .prev('.card-header')
    .find(".more-less")
    .toggleClass('fa-plus fa-minus');
}
$('.panel-group').on('hidden.bs.collapse', toggleIcon);
$('.panel-group').on('shown.bs.collapse', toggleIcon);