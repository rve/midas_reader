$(document).ready(function(){
  $(".content").annotator();

jQuery("#contentId").annotator().annotator("addPlugin","Offline",{
    online: function (plugin){
    },
offline: function (plugin){
}
});
})

//******************************def*****************************//
function def()
{
  textEditor.document.designMode="on";
  textEditor.document.open();
  textEditor.document.write('<head><style type="text/css">body{ font-family:arial; font-size:13px;}</style></head>');
  textEditor.document.close();
  document.getElementById("fonts").selectedIndex=0;
  document.getElementById("size").selectedIndex=1;
  document.getElementById("color").selectedIndex=0;
  if (window.localStorage)
    {
      textEditor.document.body.innerHTML=localStorage.iframe_value;
      if (textEditor.document.body.innerHTML=='undefined') textEditor.document.body.innerHTML='';
    }
}

function fontEdit(x,y)
{
  textEditor.document.execCommand(x,"",y);
  textEditor.focus();
}

//******************************localstorage******************//
function local_storage()
{
  if (window.localStorage)
    {
      if (textEditor.document.body.innerHTML=='Undefined') localStorage.iframe_value="";
      else
        localStorage.iframe_value=textEditor.document.body.innerHTML;
    }
}

//******************************jquery**************************//
$(document).ready(function()
                  {
                    $(".note").click(function()
                                     {
                                       $.blockUI({
                                         message: $(".RTE"),
                                         css:
                                           {
                                           width:"auto",
                                           background:"#E4E4E4"
                                         }
                                       });
                                       $(".blockOverlay").attr("title","Click to close").click(function()
                                                                                               {
                                                                                                 local_storage();
                                                                                               ($.unblockUI());
                                                                                               })
                                       def();
                                     })
                  })

