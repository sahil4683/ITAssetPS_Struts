
//function getManagerByDomain(){
//    $.ajax({
//        url: "getManagerByDomain",
//        type: 'POST',
//        dataType: 'json',
//        data: 'domain='+$('#domain').val()
//    }).done(function (data) {
//        var html="<select class='form-control' id='reporting_manager' name='reporting_manager' multiple='multiple'>";
//       for(var i=0;i<data.length;i++){
//           html+='<option value="'+data[i]+'">'+data[i]+'</option>';
//       }
//       html+='</select>'
//       document.getElementById('reporting_manager').innerHTML=html;
//    });
//}


function getManagerByDomain() {
    $.ajax({
        url: "getManagerByDomain",
        type: 'POST',
        dataType: 'json',
        data: 'domain=' + $('#domain').val()
    }).done(function (data) {
        var html = "<option value='' disabled='true' selected='true'>Please Select</option> ";
        for (var i = 0; i < data.length; i++) {   
            html += '<option value="' + data[i] + '">' + data[i] + '</option>';
        }
        document.getElementById('reporting_manager').innerHTML = html;
    });
}

function getEmployee(){
    $.ajax({
        url: "getEmployee",
        type: 'POST',
        dataType: 'json',
    }).done(function (data) {
        var html = "<option value='' disabled='true' selected='true'>Please Select</option> ";
        for (var i = 0; i < data.length; i++) {   
            html += '<option value="' + data[i] + '">' + data[i] + '</option>';
        }
        document.getElementById('employee_id').innerHTML = html;
    });
}




$("#reset-btn").click(function () {

    callToolTip4('employee_id', 'destroy');
    callToolTip4('domain', 'destroy');
    callToolTip4('reporting_manager', 'destroy');
    $('#employee_id').val('');
    $('#domain').val('');
    $('#reporting_manager').val('');

});


$("#submit-btn").click(function () {
    if (!checkAddUser()) {
        event.preventDefault();
    } else if (checkAddUser()) {
        SaveUser();
    }
});

var callToolTip4 = function (fieldName, status) {

    if (fieldName == "employee_id") {
        var errorMessage = "<span>Select Enter Employee ID<span>";
    } else if (fieldName == "domain") {
        var errorMessage = "<span>Please Select Domain<span>";
    } else if (fieldName == "reporting_manager") {
        var errorMessage = "<span>Select Select Reporting Manager<span>";
    }

    $("#" + fieldName).tooltip({
        trigger: 'manual',
        placement: 'top',
        title: errorMessage,
        animation: true,
        delay: 1000,
        html: true
    });

    if (status == "show") {
        $("#" + fieldName).tooltip('show');
    } else {
        $("#" + fieldName).tooltip('hide');
    }
}


$('#employee_id').on('focusout', function () {
    var usertype = $('#employee_id').val();
    if (usertype == null) {
        callToolTip4('employee_id', 'show');
    } else {
        callToolTip4('employee_id', 'hide');
    }
});

$('#domain').on('focusout', function () {
    var usertype = $('#domain').val();
    if (usertype == null) {
        callToolTip4('domain', 'show');
    } else {
        callToolTip4('domain', 'hide');
    }
});

$('#reporting_manager').on('focusout', function () {
    var usertype = $('#reporting_manager').val();
    if (usertype == null) {
        callToolTip4('reporting_manager', 'show');
    } else {
        callToolTip4('reporting_manager', 'hide');
    }
});


$('#employee_id').on('focus', function () {
    callToolTip4('employee_id', 'destroy');
});

$('#domain').on('focus', function () {
    callToolTip4('domain', 'destroy');
});

$('#reporting_manager').on('focus', function () {
    callToolTip4('reporting_manager', 'destroy');
});

var checkAddUser = function () {
    indexError = 0;

    if ($('#employee_id').val() === null) {
        callToolTip4('employee_id', 'show');
        if (indexError == 0) {
        }
        indexError = indexError + 1;
    }

    if ($('#domain').val() === null) {
        callToolTip4('domain', 'show');
        if (indexError == 0) {
        }
        indexError = indexError + 1;
    }

    if ($('#reporting_manager').val() === null) {
        callToolTip4('reporting_manager', 'show');
        if (indexError == 0) {
        }
        indexError = indexError + 1;
    }

    if (indexError > 0) {
        return false;

    } else {
        return true;
    }
}


var SaveUser = function () {

    var serviceUrl = "assignUser";
    $.ajax({
        type: 'POST',
        url: serviceUrl,
        data: "employee_id=" + $('#employee_id').val()
                + "&domain=" + $('#domain').val()
                + "&reporting_manager=" + $('#reporting_manager').val(),
    }).done(function (data) {
        if (data == "success") {
            swal({
                title: "Successfully !",
                text: "User Assign Successfully !",
                type: "success",
                width: 300,
                showCancelButton: !0,
                confirmButtonText: 'OK',
                cancelButtonClass: "btn btn-danger m-l-10",
                preConfirm: function () {
                    var l = window.location;
                    var base_url = l.protocol + "//" + l.host + "/" + l.pathname.split('/')[1];
                    window.location.href = base_url + "/Admin_View/assignUser.jsp";
                }
            });
        } else if (data == "exist") {
            swal({
                title: "Exist !",
                text: "User Already Assigned !",
                type: "warrning",
                width: 300,
                showCancelButton: !0,
                confirmButtonText: 'OK',
                cancelButtonClass: "btn btn-danger m-l-10",
                preConfirm: function () {
                    var l = window.location;
                    var base_url = l.protocol + "//" + l.host + "/" + l.pathname.split('/')[1];
                    window.location.href = base_url + "/Admin_View/assignUser.jsp";
                }
            });
        } else {
            swal({
                title: "Error !",
                text: "Invalid Inputs!",
                type: "error",
                width: 300,
                showCancelButton: !0,
                confirmButtonText: 'OK',
                cancelButtonClass: "btn btn-danger m-l-10",
                preConfirm: function () {
                    var l = window.location;
                    var base_url = l.protocol + "//" + l.host + "/" + l.pathname.split('/')[1];
                    window.location.href = base_url + "/Admin_View/assignUser.jsp";
                }
            });
        }
    });
}

//
//window.onload= function ()
//{
//    $.ajax
//   ({
//       url : 'get_employee_id',
//       type :'POST', 
//         success: function (total) 
//         {
//                   
//                  $('#grand_total').val(total);  
//                  document.getElementById('grand_total').readOnly =true;
//         }
//   });
//}