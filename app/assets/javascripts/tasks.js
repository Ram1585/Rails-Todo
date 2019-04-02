$(document).ready(function() {
  $('#tasks-datatable').dataTable({
    "processing": true,
    "serverSide": true,
    "ajax": $('#tasks-datatable').data('source'),
    "pagingType": "full_numbers",
    "columns": [
      {"data": "id"},
      {"data": "task_title"},
      {"data": "created_at"}
    ]
  });
});