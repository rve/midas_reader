page_num = 3;
function click()
{
  $.post("/sync_pages/create", {
    current_page:page_num
  }, function(data) {
    console.log("data: "+data);
  });
}
