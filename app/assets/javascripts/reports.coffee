#$(document).ready ->
#  $('#dataTables').dataTable
#    'dom': 'T<"clear">lfrtip'
#    'tableTools': 'sSwfPath': '//cdn.datatables.net/tabletools/2.2.2/swf/copy_csv_xls_pdf.swf'
#  return

$(document).ready ->
  $('#dataTables').dataTable
    'dom': 'T<"clear">lfrtip'
    'tableTools':
      'sSwfPath': '//cdn.datatables.net/tabletools/2.2.2/swf/copy_csv_xls_pdf.swf'
      'sRowSelect': 'none'
      'fnPreRowSelect': null
      'fnRowSelected': null
      'fnRowDeselected': null
      'aButtons': [
        'csv'
        'pdf'
      ]
  return