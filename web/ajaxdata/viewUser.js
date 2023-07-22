
$(document).ready(function () {
    $.ajax({
        url: "getManager",
        type: 'POST',
        dataType: 'json',
    }).done(function (data) {
        var html = "<option value='' disabled='true' selected='true'>Please Select</option> ";
        for (var i = 0; i < data.length; i++) {   
            html += '<option value="' + data[i] + '">' + data[i] + '</option>';
        }
        document.getElementById('reporting_manager').innerHTML = html;
    });
});

$(document).ready(function () {
    $("#dataTableList").DataTable();
    var serviceUrl = "viewUser";
    $.ajax(
            {
                type: 'POST',
                url: serviceUrl,
                dataType: 'json'

            })
            .done(
                    function (data) {

                        $("#dataTableList").DataTable({
                            lengthChange: !1,
                            "processing": true,
                            "pageLength": 10,
                            data: data,
                            exportButtons: ['excel', 'xml', 'csv', 'json', 'txt', 'sql'],
                            columns: [
                                {
                                    title: "Edit"
                                },
                                {
                                    title: "Delete"
                                },
                                {
                                    title: "Sr No"
                                },
                                {
                                    title: "Employee ID"
                                },
                                {
                                    title: "First Name"
                                },
                                {
                                    title: "Last Name"
                                },
                                {
                                    title: "Email ID"
                                },
                                {
                                    title: "Domain"
                                },
                                {
                                    title: "User Type"
                                },
                                {
                                    title: "Reporting Manager"
                                }
                            ],
                            oLanguage: {
                                "sSearch": "Search:"
                            },
                        });
                    });
    $('#dataTableList').dataTable().fnDestroy();
});

function deleteList(emp_id) {
    swal({
        title: "Are you sure?",
        text: "You want to delete?<br>",
        type: "warning",
        width: 350,
        height: 200,
        showCancelButton: !0,
        confirmButtonClass: "btn btn-success",
        cancelButtonClass: "btn btn-danger m-l-10",
        confirmButtonText: "Yes, Delete it!"
    }).then(function () {
        var serviceUrl = "deleteUser";

        $.ajax({
            type: 'POST',
            url: serviceUrl,
            data: "employee_id=" + emp_id,
        }).done(function (data) {
            if (data == "success") {
                swal({
                    title: "Successfully !",
                    text: "User Deleted Successfully !",
                    type: "success",
                    width: 300,
                    showCancelButton: !0,
                    confirmButtonText: 'OK',
                    cancelButtonClass: "btn btn-danger m-l-10",
                    preConfirm: function () {
                        var l = window.location;
                        var base_url = l.protocol + "//" + l.host + "/" + l.pathname.split('/')[1];
                        window.location.href = base_url + "/Admin_View/viewUser.jsp";
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
                        window.location.href = base_url + "/Admin_View/viewUser.jsp";
                    }
                });
            }
        });
    });
}



function editList(emp_id) {
    $.ajax({
        type: 'POST',
        url: 'editUser',
        data: "employee_id=" + emp_id,
    }).done(function (data) {
        if (data == null) {
            $('#error').val("Data not found");
        } else {
            var userData = data.split("`");
            $('#employee_id').val(userData[1]);
            $('#first_name').val(userData[2]);
            $('#last_name').val(userData[3]);
            $('#email_id').val(userData[4]);
            $('#domain').val(userData[5]);
            $('#user_type').val(userData[6]);
            $('#reporting_manager').val(userData[7]);

            $("#modelDriveMonitoring").modal("show");
        }
    });
}


$("#update-btn").click(function () {
    if (!checkUpdateUser()) {
        event.preventDefault();
    } else if (checkUpdateUser()) {
        updateUser();
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
    } else if (fieldName == "reporting_manager") {
        var errorMessage = "<span>Select Reporting Manager<span>";
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
    if (usertype.trim() == "") {
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

$('#reporting_manager').on('focus', function () {
    callToolTip4('reporting_manager', 'destroy');
});



var checkUpdateUser = function () {
    indexError = 0;

    if ($('#employee_id').val().trim() === '') {
        callToolTip4('employee_id', 'show');
        if (indexError == 0) {
        }
        indexError = indexError + 1;
    }

    if ($('#first_name').val().trim() === '') {
        callToolTip4('first_name', 'show');
        if (indexError == 0) {
        }
        indexError = indexError + 1;
    }

    if ($('#last_name').val().trim() === '') {
        callToolTip4('last_name', 'show');
        if (indexError == 0) {
        }
        indexError = indexError + 1;
    }

    if ($('#email_id').val().trim() === '') {
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


var updateUser = function () {
    var serviceUrl = "updateUser";
    $.ajax({
        type: 'POST',
        url: serviceUrl,
        data: "employee_id=" + $('#employee_id').val()
                + "&first_name=" + $('#first_name').val()
                + "&last_name=" + $('#last_name').val()
                + "&email_id=" + $('#email_id').val()
                + "&domain=" + $('#domain').val()
                + "&user_type=" + $('#user_type').val()
                + "&reporting_manager=" + $('#reporting_manager').val(),
    }).done(function (data) {

        if (data == "success") {
            swal({
                title: "Successfully !",
                text: "User Update Successfully !",
                type: "success",
                width: 300,
                showCancelButton: !0,
                confirmButtonText: 'OK',
                cancelButtonClass: "btn btn-danger m-l-10",
                preConfirm: function () {
                    var l = window.location;
                    var base_url = l.protocol + "//" + l.host + "/" + l.pathname.split('/')[1];
                    window.location.href = base_url + "/Admin_View/viewUser.jsp";
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
                    window.location.href = base_url + "/Admin_View/viewUser.jsp";
                }
            });
        }
    });
}
