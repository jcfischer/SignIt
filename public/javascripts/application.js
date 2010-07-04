$(document).ready(function()
{
  $('#drawbox').drawbox({caption:'This is a caption',lineWidth:3,lineCap:'round',lineJoin:'round',colorSelector:true});
  $('#show-output').click(function()
    {
      $('#svg-output').text($('#drawbox-tab').val());
    }
   ); 
  $('#view-output').click(function()
  {
    var svgOutput = window.open('data:image/svg+xml,' + $('#drawbox-data').val());

    svgOutput.document.close();

    return false;
  });
});
