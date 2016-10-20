function check() {
 
    var data = new Array();
    data[0] = document.getElementById('namecd').value;
    data[1] = document.getElementById('namecbd').value;
    data[2] = document.getElementById('sdt').value;
    data[3] = document.getElementById('email').value;
 
    var myerror = new Array();
    myerror[0] = "<span style='color:red,font-weight:bold'>Bạn chưa nhập tên chi đoàn</span>";
    myerror[1] = "<span style='color:red,font-weight:bold'>Bạn chưa nhập tên cán bộ đoàn</span>";
    myerror[2] = "<span style='color:red,font-weight:bold'>Bạn chưa nhập số điện thoại</span>";
    myerror[3] = "<span style='color:red,font-weight:bold'>Bạn chưa nhập email</span>";
 
    var nearby = new Array("z-namecd", "z-namecbd", "z-sdt", "z-email");
 
    for (i in data) {
        var error = myerror[i];
        var div = nearby[i];
 
        if (data[i]=="") {
            document.getElementById(div).innerHTML = error;
        } else {
            document.getElementById(div).innerHTML = "OK!";
        }
    }
 
}