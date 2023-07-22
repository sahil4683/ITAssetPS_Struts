

$("#reset-btn").click(function () {
    $('#employee_id').val("");
    $('#first_name').val("");
    $('#last_name').val("");
    $('#email_id').val("");
    $('#domain').val("");
    $('#user_type').val("");
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
        var errorMessage = "<span>Please Enter Employee ID<span>";
    } else if (fieldName == "first_name") {
        var errorMessage = "<span>Please Enter First Name<span>";
    } else if (fieldName == "last_name") {
        var errorMessage = "<span>Select Enter Last Name<span>";
    } else if (fieldName == "email_id") {
        var errorMessage = "<span>Please Enter Email ID<span>";
    } else if (fieldName == "domain") {
        var errorMessage = "<span>Please Select Domain<span>";
    } else if (fieldName == "user_type") {
        var errorMessage = "<span>Select Select UserType<span>";
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
    if (usertype.trim() == "") {
        callToolTip4('employee_id', 'show');
    } else {
        callToolTip4('employee_id', 'hide');
    }
});

$('#first_name').on('focusout', function () {
    var usertype = $('#first_name').val();
    if (usertype.trim() == "") {
        callToolTip4('first_name', 'show');
    } else {
        callToolTip4('first_name', 'hide');
    }
});

$('#last_name').on('focusout', function () {
    var usertype = $('#last_name').val();
    if (usertype.trim() === "") {
        callToolTip4('last_name', 'show');
    } else {
        callToolTip4('last_name', 'hide');
    }
});

$('#email_id').on('focusout', function () {
    var usertype = $('#email_id').val();
    if (usertype.trim() == "") {
        callToolTip4('email_id', 'show');
    } else {
        callToolTip4('email_id', 'hide');
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

$('#user_type').on('focusout', function () {
    var usertype = $('#user_type').val();
    if (usertype == null) {
        callToolTip4('user_type', 'show');
    } else {
        callToolTip4('user_type', 'hide');
    }
});


$('#employee_id').on('focus', function () {
    callToolTip4('employee_id', 'destroy');
});

$('#first_name').on('focus', function () {
    callToolTip4('first_name', 'destroy');
});

$('#last_name').on('focus', function () {
    callToolTip4('last_name', 'destroy');
});

$('#email_id').on('focus', function () {
    callToolTip4('email_id', 'destroy');
});

$('#domain').on('focus', function () {
    callToolTip4('domain', 'destroy');
});

$('#user_type').on('focus', function () {
    callToolTip4('user_type', 'destroy');
});

var checkAddUser = function () {
    indexError = 0;

    if ($('#employee_id').val() === '') {
        callToolTip4('employee_id', 'show');
        if (indexError == 0) {
        }
        indexError = indexError + 1;
    }

    if ($('#first_name').val() === '') {
        callToolTip4('first_name', 'show');
        if (indexError == 0) {
        }
        indexError = indexError + 1;
    }

    if ($('#last_name').val() === '') {
        callToolTip4('last_name', 'show');
        if (indexError == 0) {
        }
        indexError = indexError + 1;
    }

    if ($('#email_id').val() === '') {
        callToolTip4('email_id', 'show');
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

    if ($('#user_type').val() === null) {
        callToolTip4('user_type', 'show');
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
    var serviceUrl = "addUser";
    $.ajax({
        type: 'POST',
        url: serviceUrl,
        data: "employee_id=" + $('#employee_id').val()
                + "&first_name=" + $('#first_name').val()
                + "&last_name=" + $('#last_name').val()
                + "&email_id=" + $('#email_id').val()
                + "&domain=" + $('#domain').val()
                + "&user_type=" + $('#user_type').val(),
    }).done(function (data) {

        if (data == "success") {
            swal({
                title: "Successfully !",
                text: "User Added Successfully !",
                type: "success",
                width: 300,
                showCancelButton: !0,
                confirmButtonText: 'OK',
                cancelButtonClass: "btn btn-danger m-l-10",
                preConfirm: function () {
                    var l = window.location;
                    var base_url = l.protocol + "//" + l.host + "/" + l.pathname.split('/')[1];
                    window.location.href = base_url + "/Admin_View/addUser.jsp";
                }
            });
        } else if (data == "exist") {
            swal({
                title: "Exist !",
                text: "User Already Exist!",
                type: "warrning",
                width: 300,
                showCancelButton: !0,
                confirmButtonText: 'OK',
                cancelButtonClass: "btn btn-danger m-l-10",
                preConfirm: function () {
                    var l = window.location;
                    var base_url = l.protocol + "//" + l.host + "/" + l.pathname.split('/')[1];
                    window.location.href = base_url + "/Admin_View/addUser.jsp";
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
                    window.location.href = base_url + "/Admin_View/addUser.jsp";
                }
            });
        }
    });
}