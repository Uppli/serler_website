//编码
function html_encode(str) {
    var s = "";
    if (str.length == 0) return "";
    s = str.replace(/</g, "&lt;");
    s = s.replace(/>/g, "&gt;");
    //s = s.replace(/    /g, "&nbsp;");
    s = s.replace(/\'/g, "'");
    s = s.replace(/\"/g, "&quot;");
    //s = s.replace(/\n/g, "<br>");
    return s;
}

//解码
function html_decode(str) {
    var s = "";
    if (str.length == 0) return "";
    s = str.replace(/&lt;/g, " <");
    s = s.replace(/&gt;/g, ">");
    //s = s.replace(/&nbsp;/g, "    ");
    s = s.replace(/'/g, "\'");
    s = s.replace(/&quot;/g, "\"");
    //s = s.replace(/<br>/g, "\n");
    return s;
}

//设置控件选中项
function setSelect(id, val) {
    $("#" + id).val(val);
} 