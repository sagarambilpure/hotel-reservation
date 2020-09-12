$(document).ready(function () {

    var today = new Date();

    var date_str = today.getFullYear() + "-";
    if (today.getMonth().toString().length < 2) {
        date_str += "0";
    }
    date_str += (today.getMonth() + 1) + "-";

    if (today.getDate().toString().length < 2) {
        date_str += "0";
    }
    date_str += "" + today.getDate();

    document.getElementById("from_datepicker").min = date_str;
    console.log(date_str);

    function to_checkDate() {
        var today = new Date(document.getElementById("from_datepicker").value);
        var date_str = today.getFullYear() + "-";
        if (today.getMonth().toString().length < 2) {
            date_str += "0";
        }
        date_str += (today.getMonth() + 1) + "-";

        if (today.getDate().toString().length < 2) {
            date_str += "0";
        }
        date_str += "" + today.getDate();
        console.log(date_str);
        document.getElementById("to_datepicker").min = date_str;
    }
    $('#to_datepicker').change(to_checkDate);
    $('#to_datepicker').click(to_checkDate);

    $('#from_datepicker').click(to_checkDate);

    /*
    $('#from_datepicker').datepicker();
    $('#to_datepicker').datepicker();

    function isFutureDate(idate) {
        var today = new Date(),
            idate = idate.split("/");

        idate = new Date(idate[2], idate[0] - 1, idate[1]);
        console.log("today " + today);
        console.log("idate " + idate)
        if ((today.getFullYear() <= idate.getFullYear()) && (today.getMonth() <= idate.getMonth()) && (today.getDate() <= idate.getDate())) {

            console.log("AHEAD");
            return true;
        }
        else {
            return false;
        }
    }

    function is_after_checkin(idate) {
        var today = new Date(document.getElementById("from_datepicker").value),
            idate = idate.split("/");

        idate = new Date(idate[2], idate[0] - 1, idate[1]);
        if ((today.getFullYear() <= idate.getFullYear()) && (today.getMonth() <= idate.getMonth()) && (today.getDate() <= idate.getDate())) {
            return true
        }
        else {
            return false;
        }
    }

    // // Demo example
    // console.log(isFutureDate("02/03/2014")); // true
    // console.log(isFutureDate("01/01/2014")); // false

    // your function
    document.getElementById("from_datepicker").onkeyup = from_checkDate;
    $('#from_datepicker').change(from_checkDate);

    document.getElementById("to_datepicker").onkeyup = to_checkDate;
    $('#to_datepicker').change(to_checkDate);

    function from_checkDate() {

        var idate = document.getElementById("from_datepicker"),
            resultDiv = document.getElementById("from_datewarn"),
            dateReg = /(0[1-9]|[12][0-9]|3[01])[\/](0[1-9]|1[012])[\/]201[4-9]|20[2-9][0-9]/;

        if (dateReg.test(idate.value)) {
            if (isFutureDate(idate.value)) {
                resultDiv.innerHTML = "It's a valid date";
                resultDiv.style.color = "green";
                $('#search_btn').show();
            } else {
                resultDiv.innerHTML = "Entered old date";
                resultDiv.style.color = "red";
                $('#search_btn').hide();
            }
        } else {
            resultDiv.innerHTML = "Invalid date!";
            $('#search_btn').hide();
            resultDiv.style.color = "red";
        }
    }

    function to_checkDate() {

        var idate = document.getElementById("to_datepicker"),
            resultDiv = document.getElementById("to_datewarn"),
            dateReg = /(0[1-9]|[12][0-9]|3[01])[\/](0[1-9]|1[012])[\/]201[4-9]|20[2-9][0-9]/;

        if (dateReg.test(idate.value)) {
            if (is_after_checkin(idate.value)) {
                resultDiv.innerHTML = "It's a valid date";
                resultDiv.style.color = "green";
                $('#search_btn').show();
            } else {
                resultDiv.innerHTML = "Entered date before check in";
                resultDiv.style.color = "red";
                $('#search_btn').hide();
            }
        } else {
            resultDiv.innerHTML = "Invalid date!";
            $('#search_btn').hide();
            resultDiv.style.color = "red";
        }
    }

*/


});
