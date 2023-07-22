




$("#reset-btn").click(function () {
   $('#employee_id').val("");
   $('#domain').val("");
   $('#reporting_manager').val("");
   $('#assets_number').val("");
   $('#assets_tag').val("");
   $('#invoice_number').val("");
   $('#serial_number').val("");
   $('#remark').val("");  
});

$("#submit-btn").click(function () {
    if (!checkAssets()) {
        event.preventDefault();
    } else if (checkAssets()) {
        SaveAssets();
    }
});
var callToolTip4 = function (fieldName, status) {

    if (fieldName == "employee_id") {
        var errorMessage = "<span>Please Enter Employee ID<span>";
    } else if (fieldName == "domain") {
        var errorMessage = "<span>Please Select Domain<span>";
    } else if (fieldName == "reporting_manager") {
        var errorMessage = "<span>Select Select Reporting Manager<span>";
    } else if (fieldName == "assets_number") {
        var errorMessage = "<span>Please Enter Assets Number<span>";
    } else if (fieldName == "assets_tag") {
        var errorMessage = "<span>Please Enter Assets Tag<span>";
    } else if (fieldName == "invoice_number") {
        var errorMessage = "<span>Please Enter Invoice Number<span>";
    } else if (fieldName == "serial_number") {
        var errorMessage = "<span>Please Enter Serial Number<span>";
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
$('#assets_number').on('focusout', function () {
    var usertype = $('#assets_number').val();
    if (usertype.trim() == "") {
        callToolTip4('assets_number', 'show');
    } else {
        callToolTip4('assets_number', 'hide');
    }
});
$('#assets_tag').on('focusout', function () {
    var usertype = $('#assets_tag').val();
    if (usertype.trim() == "") {
        callToolTip4('assets_tag', 'show');
    } else {
        callToolTip4('assets_tag', 'hide');
    }
});
$('#invoice_number').on('focusout', function () {
    var usertype = $('#invoice_number').val();
    if (usertype == null) {
        callToolTip4('invoice_number', 'show');
    } else {
        callToolTip4('invoice_number', 'hide');
    }
});
$('#serial_number').on('focusout', function () {
    var usertype = $('#serial_number').val();
    if (usertype === null) {
        callToolTip4('serial_number', 'show');
    } else {
        callToolTip4('serial_number', 'hide');
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
$('#assets_number').on('focus', function () {
    callToolTip4('assets_number', 'destroy');
});
$('#assets_tag').on('focus', function () {
    callToolTip4('assets_tag', 'destroy');
});
$('#invoice_number').on('focus', function () {
    callToolTip4('invoice_number', 'destroy');
});
$('#serial_number').on('focus', function () {
    callToolTip4('serial_number', 'destroy');
});
var checkAssets = function () {
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

    if ($('#assets_number').val() === "") {
        callToolTip4('assets_number', 'show');
        if (indexError == 0) {
        }
        indexError = indexError + 1;
    }
    if ($('#assets_tag').val() === "") {
        callToolTip4('assets_tag', 'show');
        if (indexError == 0) {
        }
        indexError = indexError + 1;
    }
    if ($('#invoice_number').val() === null) {
        callToolTip4('invoice_number', 'show');
        if (indexError === 0) {
        }
        indexError = indexError + 1;
    }
    if ($('#serial_number').val() === null) {
        callToolTip4('serial_number', 'show');
        if (indexError === 0) {
        }
        indexError = indexError + 1;
    }

    if (indexError > 0) {
        return false;
    } else {
        return true;
    }
}


var SaveAssets = function () {
    var serviceUrl = "addAssetEntry";
    $.ajax({
        type: 'POST',
        url: serviceUrl,
        data: "employee_id=" + $('#employee_id').val()
                + "&first_name=" + $('#first_name').val()
        + "&reporting_manager=" + $('#reporting_manager').val()
        
                + "&last_name=" + $('#last_name').val()
                + "&email_id=" + $('#email_id').val()
                + "&domain=" + $('#domain').val()
                + "&invoice_number=" + $('#invoice_number').val()
                + "&vendor=" + $('#vendor').val()
                + "&manufacture=" + $('#manufacture').val()
                + "&product_name=" + $('#product_name').val()
                + "&model_number=" + $('#model_number').val()
                + "&serial_number=" + $('#serial_number').val()
                + "&purchase_rate=" + $('#purchase_rate').val()
                + "&quantity=" + $('#quantity').val()
                + "&total_amount=" + $('#total_amount').val()
                + "&purchase_date=" + $('#purchase_date').val()
                + "&warranty_date=" + $('#warranty_date').val()
                + "&assets_number=" + $('#assets_number').val()
                + "&assets_tag=" + $('#assets_tag').val()
                + "&remark=" + $('#remark').val(),
    }).done(function (data) {
        if (data == "success") {
            swal({
                title: "Successfully !",
                text: "Asset Assign Successfully !",
                type: "success",
                width: 300,
                showCancelButton: !0,
                confirmButtonText: 'OK',
                cancelButtonClass: "btn btn-danger m-l-10",
                preConfirm: function () {
                    var l = window.location;
                    var base_url = l.protocol + "//" + l.host + "/" + l.pathname.split('/')[1];
                    window.location.href = base_url + "/Admin_View/addAssetEntry.jsp";
                }
            });
        } else if (data == "exist") {
            swal({
                title: "Exist !",
                text: "Assets Already Assigned!",
                type: "warrning",
                width: 300,
                showCancelButton: !0,
                confirmButtonText: 'OK',
                cancelButtonClass: "btn btn-danger m-l-10",
                preConfirm: function () {
                    var l = window.location;
                    var base_url = l.protocol + "//" + l.host + "/" + l.pathname.split('/')[1];
                    window.location.href = base_url + "/Admin_View/addAssetEntry.jsp";
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
                    window.location.href = base_url + "/Admin_View/addAssetEntry.jsp";
                }
            });
        }
    });
}