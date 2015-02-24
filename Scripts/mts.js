$(function () {
   //anything on the ready
});
//set path
//ZeroClipboard.config({ swfPath: "Scripts\ZeroClipboard\ZeroClipboard.swf" });
//create client
var clip = new ZeroClipboard.Client();
//event
clip.addEventListener('mousedown', function () {
    clip.setText($('#box-content').text);
});
clip.addEventListener('complete', function (client, text) {
    alert('copied: ' + text);
});
//glue it to the button
clip.glue('copy');
function fileToConvert() {
    var file = String($("input[type=file]").val());
        //file = "C:/Users/terrellj/Desktop/" + file;
        $.ajax({
            type: "POST",
            url: "index.aspx/BrowseForFile",
            data: JSON.stringify({ fileName: file }),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                //gives the xml as string text. We count on thrid party converter to beautify and save as xml
                $("code").text(msg.d);
            },
            fail: function(e){
                console.log(e);
        }
        });
    return false;
}
