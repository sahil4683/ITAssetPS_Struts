
$("#reset-btn").click(function () {
    $('#invoice_number').val("");
    $('#vendor').val("");
    $('#manufacture').val("");
    $('#product_name').val("");
    $('#model_number').val("");
    $('#serial_number').val("");
    $('#purchase_rate').val("");
    $('#quantity').val("");
    $('#total_amount').val("");
    $('#purchase_date').val("");
    $('#warranty_date').val("");
});

$("#submit-btn").click(function () { 
    if (!checkAddInvoice()) {
        event.preventDefault();
    } else if (checkAddInvoice()) {
        SaveInvoice();
    }
});
var callToolTipSave = function (fieldName, status) {

    if (fieldName == "invoice_number") {
        var errorMessage = "<span>Please Enter Invoice Number<span>";
    } else if (fieldName == "vendor") {
        var errorMessage = "<span>Please Enter Vendor<span>";
    } else if (fieldName == "manufacture") {
        var errorMessage = "<span>Please Enter Manufacture<span>";
    } else if (fieldName == "product_name") {
        var errorMessage = "<span>Please Enter Product Name<span>";
    } else if (fieldName == "model_number") {
        var errorMessage = "<span>Please Enter Model Number<span>";
    } else if (fieldName == "serial_number") {
        var errorMessage = "<span>Please Enter Serial Number<span>";
    } else if (fieldName == "purchase_rate") {
        var errorMessage = "<span>Please Enter Purchase Rate<span>";
    } else if (fieldName == "quantity") {
        var errorMessage = "<span>Please Enter Quantity<span>";
    } else if (fieldName == "total_amount") {
        var errorMessage = "<span>Please Enter Total Amount<span>";
    } else if (fieldName == "purchase_date") {
        var errorMessage = "<span>Please Enter Purchase Date<span>";
    } else if (fieldName == "warranty_date") {
        var errorMessage = "<span>Please Enter Warranty Date<span>";
    }

    $("#" + fieldName).tooltip({
        trigger: 'manual',
        placement: 'top',
        title: errorMessage,
        animation: true,
        delay: 1000,
        html: true
    });

    if (status === "show") {
        $("#" + fieldName).tooltip('show');
    } else {
        $("#" + fieldName).tooltip('hide');
    }
};


$('#invoice_number').on('focusout', function () {
    var usertype = $('#invoice_number').val();
    if (usertype.trim() === "") {
        callToolTipSave('invoice_number', 'show');
    } else {
        callToolTipSave('invoice_number', 'hide');
    }
});

$('#vendor').on('focusout', function () {
    var usertype = $('#vendor').val();
    if (usertype.trim() === "") {
        callToolTipSave('vendor', 'show');
    } else {
        callToolTipSave('vendor', 'hide');
    }
});

$('#manufacture').on('focusout', function () {
    var usertype = $('#manufacture').val();
    if (usertype.trim() === "") {
        callToolTipSave('manufacture', 'show');
    } else {
        callToolTipSave('manufacture', 'hide');
    }
});

$('#product_name').on('focusout', function () {
    var usertype = $('#product_name').val();
    if (usertype.trim() === "") {
        callToolTipSave('product_name', 'show');
    } else {
        callToolTipSave('product_name', 'hide');
    }
});

$('#model_number').on('focusout', function () {
    var usertype = $('#model_number').val();
    if (usertype.trim() === "") {
        callToolTipSave('model_number', 'show');
    } else {
        callToolTipSave('model_number', 'hide');
    }
});

$('#serial_number').on('focusout', function () {
    var usertype = $('#serial_number').val();
    if (usertype.trim() === "") {
        callToolTipSave('serial_number', 'show');
    } else {
        callToolTipSave('serial_number', 'hide');
    }
});

$('#purchase_rate').on('focusout', function () {
    var usertype = $('#purchase_rate').val();
    if (usertype.trim() === "") {
        callToolTipSave('purchase_rate', 'show');
    } else {
        callToolTipSave('purchase_rate', 'hide');
    }
});

$('#quantity').on('focusout', function () {
    var usertype = $('#quantity').val();
    if (usertype.trim() === "") {
        callToolTipSave('quantity', 'show');
    } else {
        callToolTipSave('quantity', 'hide');
    }
});

$('#total_amount').on('focusout', function () {
    var usertype = $('#total_amount').val();
    if (usertype.trim() === "") {
        callToolTipSave('total_amount', 'show');
    } else {
        callToolTipSave('total_amount', 'hide');
    }
});

$('#purchase_date').on('focusout', function () {
    var usertype = $('#purchase_date').val();
    if (usertype.trim() === "") {
        callToolTipSave('purchase_date', 'show');
    } else {
        callToolTipSave('purchase_date', 'hide');
    }
});

$('#warranty_date').on('focusout', function () {
    var usertype = $('#warranty_date').val();
    if (usertype.trim() === "") {
        callToolTipSave('warranty_date', 'show');
    } else {
        callToolTipSave('warranty_date', 'hide');
    }
});


$('#invoice_number').on('focus', function () {
    callToolTipSave('invoice_number', 'destroy');
});

$('#vendor').on('focus', function () {
    callToolTipSave('vendor', 'destroy');
});

$('#manufacture').on('focus', function () {
    callToolTipSave('manufacture', 'destroy');
});

$('#product_name').on('focus', function () {
    callToolTipSave('product_name', 'destroy');
});

$('#model_number').on('focus', function () {
    callToolTipSave('model_number', 'destroy');
});

$('#serial_number').on('focus', function () {
    callToolTipSave('serial_number', 'destroy');
});

$('#purchase_rate').on('focus', function () {
    callToolTipSave('purchase_rate', 'destroy');
});

$('#quantity').on('focus', function () {
    callToolTipSave('quantity', 'destroy');
});

$('#total_amount').on('focus', function () {
    callToolTipSave('total_amount', 'destroy');
});

$('#purchase_date').on('focus', function () {
    callToolTipSave('purchase_date', 'destroy');
});

$('#warranty_date').on('focus', function () {
    callToolTipSave('warranty_date', 'destroy');
});


var checkAddInvoice = function () {
    indexError = 0;

    if ($('#invoice_number').val() === '') {
        callToolTipSave('invoice_number', 'show');
        if (indexError === 0) {
        }
        indexError = indexError + 1;
    }

    if ($('#vendor').val() === '') {
        callToolTipSave('vendor', 'show');
        if (indexError === 0) {
        }
        indexError = indexError + 1;
    }

    if ($('#manufacture').val() === '') {
        callToolTipSave('manufacture', 'show');
        if (indexError === 0) {
        }
        indexError = indexError + 1;
    }

    if ($('#product_name').val() === '') {
        callToolTipSave('product_name', 'show');
        if (indexError === 0) {
        }
        indexError = indexError + 1;
    }

    if ($('#model_number').val() === "") {
        callToolTipSave('model_number', 'show');
        if (indexError === 0) {
        }
        indexError = indexError + 1;
    }

    if ($('#serial_number').val() === "") {
        callToolTipSave('serial_number', 'show');
        if (indexError === 0) {
        }
        indexError = indexError + 1;
    }

    if ($('#purchase_rate').val() === "") {
        callToolTipSave('purchase_rate', 'show');
        if (indexError === 0) {
        }
        indexError = indexError + 1;
    }

    if ($('#quantity').val() === "") {
        callToolTipSave('quantity', 'show');
        if (indexError === 0) {
        }
        indexError = indexError + 1;
    }

    if ($('#total_amount').val() === "") {
        callToolTipSave('total_amount', 'show');
        if (indexError === 0) {
        }
        indexError = indexError + 1;
    }

    if ($('#purchase_date').val() === "") {
        callToolTipSave('purchase_date', 'show');
        if (indexError === 0) {
        }
        indexError = indexError + 1;
    }

    if ($('#warranty_date').val() === "") {
        callToolTipSave('warranty_date', 'show');
        if (indexError === 0) {
        }
        indexError = indexError + 1;
    }

    if (indexError > 0) {
        return false;

    } else {
        return true;
    }
};

var SaveInvoice = function () {

    var serviceUrl = "addInvoice";
    $.ajax({
        type: 'POST',
        url: serviceUrl,
        data: "invoice_number=" + $('#invoice_number').val()
                + "&vendor=" + $('#vendor').val()
                + "&manufacture=" + $('#manufacture').val()
                + "&product_name=" + $('#product_name').val()
                + "&model_number=" + $('#model_number').val()
                + "&serial_number=" + $('#serial_number').val()
                + "&purchase_rate=" + $('#purchase_rate').val()
                + "&quantity=" + $('#quantity').val()
                + "&total_amount=" + $('#total_amount').val()
                + "&purchase_date=" + $('#purchase_date').val()
                + "&warranty_date=" + $('#warranty_date').val(),
    }).done(function (data) {
        
        if (data == "success") {
            swal({
                title: "Successfully !",
                text: "Invoice Added Successfully !",
                type: "success",
                width: 300,
                showCancelButton: !0,
                confirmButtonText: 'OK',
                cancelButtonClass: "btn btn-danger m-l-10",
                preConfirm: function () {
                    var l = window.location;
                    var base_url = l.protocol + "//" + l.host + "/" + l.pathname.split('/')[1];
                    window.location.href = base_url + "/Admin_View/addInvoice.jsp";
                }
            });
        } else if (data == "exist") {
            swal({
                title: "Exist !",
                text: "Invoice Already Exist!",
                type: "warrning",
                width: 300,
                showCancelButton: !0,
                confirmButtonText: 'OK',
                cancelButtonClass: "btn btn-danger m-l-10",
                preConfirm: function () {
                    var l = window.location;
                    var base_url = l.protocol + "//" + l.host + "/" + l.pathname.split('/')[1];
                    window.location.href = base_url + "/Admin_View/addInvoice.jsp";
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
                    window.location.href = base_url + "/Admin_View/addInvoice.jsp";
                }
            });
        }
    });
}



$(document).ready(function () {
    $("#dataTableList").DataTable();
    var serviceUrl = "viewInvoice";
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
                                    title: "Invoice Number"
                                },
                                {
                                    title: "Vendor"
                                },
                                {
                                    title: "Manufacture"
                                },
                                {
                                    title: "Product Name"
                                },
                                {
                                    title: "Model Number"
                                },
                                {
                                    title: "Serial Number"
                                },
                                {
                                    title: "Purchase Rate"
                                },
                                {
                                    title: "Quantity"
                                },
                                {
                                    title: "Total Amount"
                                },
                                {
                                    title: "Purchase Date"
                                },
                                {
                                    title: "Warranty Date"
                                },
                            ],
                        });
                    });
    $('#dataTableList').dataTable().fnDestroy();
});


function deleteList(sr_no) {
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
        var serviceUrl = "deleteInvoice";

        $.ajax({
            type: 'POST',
            url: serviceUrl,
            data: "sr_no=" + sr_no,
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
                        window.location.href = base_url + "/Admin_View/addInvoice.jsp";
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
                        window.location.href = base_url + "/Admin_View/addInvoice.jsp";
                    }
                });
            }
        });
    });
}



function editList(sr_no) {
    $.ajax({
        type: 'POST',
        url: 'editInvoice',
        data: "sr_no=" + sr_no,
    }).done(function (data) {
        
        if (data == null) {
            $('#error').val("Data not found");
        } else {
            var userData = data.split("`");

            $('#invoice_number_u').val(userData[1]);
            $('#vendor_u').val(userData[2]);
            $('#manufacture_u').val(userData[3]);
            $('#product_name_u').val(userData[4]);
            $('#model_number_u').val(userData[5]);
            $('#serial_number_u').val(userData[6]);
            $('#purchase_rate_u').val(userData[7]);
            $('#quantity_u').val(userData[8]);
            $('#total_amount_u').val(userData[9]);
            $('#purchase_date_u').val(userData[10]);
            $('#warranty_date_u').val(userData[11]);
            $('#sr_no').val(userData[12]);

            $("#editPanel").modal("show");
        }
    });
}


$("#update-btn").click(function () {
    if (!checkUpdateInvoice()) {
        event.preventDefault();
    } else if (checkUpdateInvoice()) {
        updateInvoice();
    }
});

var updateInvoice = function () {
alert("Button Click")
    var serviceUrl = "updateInvoice";
    $.ajax({
        type: 'POST',
        url: serviceUrl,
        data: "sr_no=" + $('#sr_no').val()
                + "&invoice_number_u=" + $('#invoice_number_u').val()
                + "&vendor_u=" + $('#vendor_u').val()
                + "&manufacture_u=" + $('#manufacture_u').val()
                + "&product_name_u=" + $('#product_name_u').val()
                + "&model_number_u=" + $('#model_number_u').val()
                + "&serial_number_u=" + $('#serial_number_u').val()
                + "&purchase_rate_u=" + $('#purchase_rate_u').val()
                + "&quantity_u=" + $('#quantity_u').val()
                + "&total_amount_u=" + $('#total_amount_u').val()
                + "&purchase_date_u=" + $('#purchase_date_u').val()
                + "&warranty_date_u=" + $('#warranty_date_u').val(),
    }).done(function (data) {
        alert(data)
        if (data == "success") {
            swal({
                title: "Successfully !",
                text: "Invoice Update Successfully !",
                type: "success",
                width: 300,
                showCancelButton: !0,
                confirmButtonText: 'OK',
                cancelButtonClass: "btn btn-danger m-l-10",
                preConfirm: function () {
                    var l = window.location;
                    var base_url = l.protocol + "//" + l.host + "/" + l.pathname.split('/')[1];
                    window.location.href = base_url + "/Admin_View/addInvoice.jsp";
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
                    window.location.href = base_url + "/Admin_View/addInvoice.jsp";
                }
            });
        }
    });
}




var callToolTipUpdate = function (fieldName, status) {

    if (fieldName = "invoice_number_u") {
        var errorMessage = "<span>Please Enter Invoice Number<span>";
    } else if (fieldName = "vendor_u") {
        var errorMessage = "<span>Please Enter Vendor<span>";
    } else if (fieldName = "manufacture_u") {
        var errorMessage = "<span>Please Enter Manufacture<span>";
    } else if (fieldName = "product_name_u") {
        var errorMessage = "<span>Please Enter Product Name<span>";
    } else if (fieldName = "model_number_u") {
        var errorMessage = "<span>Please Enter Model Number<span>";
    } else if (fieldName = "serial_number_u") {
        var errorMessage = "<span>Please Enter Serial Number<span>";
    } else if (fieldName = "purchase_rate_u") {
        var errorMessage = "<span>Please Enter Purchase Rate<span>";
    } else if (fieldName = "quantity_u") {
        var errorMessage = "<span>Please Enter quantity_u<span>";
    } else if (fieldName = "total_amount_u") {
        var errorMessage = "<span>Please Enter Total Amount<span>";
    } else if (fieldName = "purchase_date_u") {
        var errorMessage = "<span>Please Enter Purchase Date<span>";
    } else if (fieldName = "warranty_date_u") {
        var errorMessage = "<span>Please Enter Warranty Date<span>";
    }

    $("#" + fieldName).tooltip({
        trigger: 'manual',
        placement: 'top',
        title: errorMessage,
        animation: true,
        delay: 1000,
        html: true
    });

    if (status === "show") {
        $("#" + fieldName).tooltip('show');
    } else {
        $("#" + fieldName).tooltip('hide');
    }
};


$('#invoice_number_u').on('focusout', function () {
    var usertype = $('#invoice_number_u').val();
    if (usertype === "") {
        callToolTipUpdate('invoice_number_u', 'show');
    } else {
        callToolTipUpdate('invoice_number_u', 'hide');
    }
});

$('#vendor_u').on('focusout', function () {
    var usertype = $('#vendor_u').val();
    if (usertype === "") {
        callToolTipUpdate('vendor_u', 'show');
    } else {
        callToolTipUpdate('vendor_u', 'hide');
    }
});

$('#manufacture_u').on('focusout', function () {
    var usertype = $('#manufacture_u').val();
    if (usertype === "") {
        callToolTipUpdate('manufacture_u', 'show');
    } else {
        callToolTipUpdate('manufacture_u', 'hide');
    }
});

$('#product_name_u').on('focusout', function () {
    var usertype = $('#product_name_u').val();
    if (usertype === "") {
        callToolTipUpdate('product_name_u', 'show');
    } else {
        callToolTipUpdate('product_name_u', 'hide');
    }
});

$('#model_number_u').on('focusout', function () {
    var usertype = $('#model_number_u').val();
    if (usertype === "") {
        callToolTipUpdate('model_number_u', 'show');
    } else {
        callToolTipUpdate('model_number_u', 'hide');
    }
});

$('#serial_number_u').on('focusout', function () {
    var usertype = $('#serial_number_u').val();
    if (usertype === "") {
        callToolTipUpdate('serial_number_u', 'show');
    } else {
        callToolTipUpdate('serial_number_u', 'hide');
    }
});

$('#purchase_rate_u').on('focusout', function () {
    var usertype = $('#purchase_rate_u').val();
    if (usertype === "") {
        callToolTipUpdate('purchase_rate_u', 'show');
    } else {
        callToolTipUpdate('purchase_rate_u', 'hide');
    }
});

$('#quantity_u').on('focusout', function () {
    var usertype = $('#quantity_u').val();
    if (usertype === "") {
        callToolTipUpdate('quantity_u', 'show');
    } else {
        callToolTipUpdate('quantity_u', 'hide');
    }
});

$('#total_amount_u').on('focusout', function () {
    var usertype = $('#total_amount_u').val();
    if (usertype === "") {
        callToolTipUpdate('total_amount_u', 'show');
    } else {
        callToolTipUpdate('total_amount_u', 'hide');
    }
});

$('#purchase_date_u').on('focusout', function () {
    var usertype = $('#purchase_date_u').val();
    if (usertype === "") {
        callToolTipUpdate('purchase_date_u', 'show');
    } else {
        callToolTipUpdate('purchase_date_u', 'hide');
    }
});

$('#warranty_date_u').on('focusout', function () {
    var usertype = $('#warranty_date_u').val();
    if (usertype === "") {
        callToolTipUpdate('warranty_date_u', 'show');
    } else {
        callToolTipUpdate('warranty_date_u', 'hide');
    }
});


$('#invoice_number_u').on('focus', function () {
    callToolTipUpdate('invoice_number_u', 'destroy');
});

$('#vendor_u').on('focus', function () {
    callToolTipUpdate('vendor_u', 'destroy');
});

$('#manufacture_u').on('focus', function () {
    callToolTipUpdate('manufacture_u', 'destroy');
});

$('#product_name_u').on('focus', function () {
    callToolTipUpdate('product_name_u', 'destroy');
});

$('#model_number_u').on('focus', function () {
    callToolTipUpdate('model_number_u', 'destroy');
});

$('#serial_number_u').on('focus', function () {
    callToolTipUpdate('serial_number_u', 'destroy');
});

$('#purchase_rate_u').on('focus', function () {
    callToolTipUpdate('purchase_rate_u', 'destroy');
});

$('#quantity_u').on('focus', function () {
    callToolTipUpdate('quantity_u', 'destroy');
});

$('#total_amount_u').on('focus', function () {
    callToolTipUpdate('total_amount_u', 'destroy');
});

$('#purchase_date_u').on('focus', function () {
    callToolTipUpdate('purchase_date_u', 'destroy');
});

$('#warranty_date_u').on('focus', function () {
    callToolTipUpdate('warranty_date_u', 'destroy');
});


var checkUpdateInvoice = function () {
    indexError = 0;

    if ($('#invoice_number_u').val() === '') {
        callToolTipUpdate('invoice_number_u', 'show');
        if (indexError === 0) {
        }
        indexError = indexError + 1;
    }

    if ($('#vendor_u').val() === '') {
        callToolTipUpdate('vendor_u', 'show');
        if (indexError === 0) {
        }
        indexError = indexError + 1;
    }

    if ($('#manufacture_u').val() === '') {
        callToolTipUpdate('manufacture_u', 'show');
        if (indexError === 0) {
        }
        indexError = indexError + 1;
    }

    if ($('#product_name_u').val() === '') {
        callToolTipUpdate('product_name_u', 'show');
        if (indexError === 0) {
        }
        indexError = indexError + 1;
    }

    if ($('#model_number_u').val() === "") {
        callToolTipUpdate('model_number_u', 'show');
        if (indexError === 0) {
        }
        indexError = indexError + 1;
    }

    if ($('#serial_number_u').val() === "") {
        callToolTipUpdate('serial_number_u', 'show');
        if (indexError === 0) {
        }
        indexError = indexError + 1;
    }

    if ($('#purchase_rate_u').val() === "") {
        callToolTipUpdate('purchase_rate_u', 'show');
        if (indexError === 0) {
        }
        indexError = indexError + 1;
    }

    if ($('#quantity_u').val() === "") {
        callToolTipUpdate('quantity_u', 'show');
        if (indexError === 0) {
        }
        indexError = indexError + 1;
    }

    if ($('#total_amount_u').val() === "") {
        callToolTipUpdate('total_amount_u', 'show');
        if (indexError === 0) {
        }
        indexError = indexError + 1;
    }

    if ($('#purchase_date_u').val() === "") {
        callToolTipUpdate('purchase_date_u', 'show');
        if (indexError === 0) {
        }
        indexError = indexError + 1;
    }

    if ($('#warranty_date_u').val() === "") {
        callToolTipUpdate('warranty_date_u', 'show');
        if (indexError === 0) {
        }
        indexError = indexError + 1;
    }

    if (indexError > 0) {
        return false;

    } else {
        return true;
    }
};

