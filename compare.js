// this function executes our search via an AJAX call
function runSearch( term ) {
    // hide and clear the previous results, if any
    $('#results').hide();
    $('tbody').empty();

    // transforms all the form parameters into a string we can send to the server
    var frmStr = $('#gene_search').serialize();

    $.ajax({
        url: './compare.cgi',
        dataType: 'json',
        data: frmStr,
        success: function(data, textStatus, jqXHR) {
            processJSON(data);
        },
        error: function(jqXHR, textStatus, errorThrown){
            alert("Failed to perform gene search! textStatus: (" + textStatus +
                  ") and errorThrown: (" + errorThrown + ")");
        }
    });
}


// this processes a passed JSON structure representing gene matches and draws it
//  to the result table
function processJSON( data ) {
    // set the span that lists the match count
    $('#match_count').text( data.match_count );

    // this will be used to keep track of row identifiers
    var next_row_num = 1;

    // iterate over each match and add a row to the result table for each
    $.each( data.matches, function(i, item) {
        var this_row_id = 'result_row_' + next_row_num++;

        // create a row and append it to the body of the table
        $('<tr/>', { "id" : this_row_id } ).appendTo('tbody');

        // add the locus column
        $('<td/>', { "text" : item.locus } ).appendTo('#' + this_row_id);

        // add the product column
        $('<td/>', { "text" : item.product } ).appendTo('#' + this_row_id);

    });
    // now show the result section that was previously hidden
    $('#results').show();
}

function CallService() {
        var txtValue = $("#TextBox1").val();
        $.ajax({
            type: "POST", //GET or POST or PUT or DELETE verb
            url: "Service.svc/getCityList", // Location of the service
            data: '{"str": "' + txtValue + '"}', //Data sent to server
            contentType: "application/json; charset=utf-8", // content type sent to server
            dataType: "json", //Expected data format from server
            processdata: true, //True or False
            success: function (msg) {//On Successfull service call
                if (msg.getCityListResult == '') {
                    $("#divCity").html("No Data found");
                }
                else {
                    var ddl = $('#ddlCity');
                    ddl.append("<option value='0'>-select-</option>");
                    for (var i = 0; i < msg.getCityListResult.length; i++) {
                        var City = msg.getCityListResult[i].split('~')[0];
                        var Code = msg.getCityListResult[i].split('~')[1];
                        ddl.append("<option value='" + Code + "'>" + City + "</options>");
                    }
                }
            }
        });
    }

// run our javascript once the page is ready
$(document).ready( function() {
	//dropdown
		var url1 = "./showgene.cgi";
                // prepare the data
                var source1 =
                {
                    datatype: "json",
                    datafields: [
                        { name: 'gene' }
			
                    ],
                    url: url,
                    async: false
                };
                var dataAdapter1 = new $.jqx.dataAdapter(source1);
                // Create a jqxDropDownList
                $("#jqxgene").jqxDropDownList({
                    selectedIndex: 0, source: dataAdapter, displayMember: "ContactName", width: 200, height: 25
                });
		var url2 = "./showspecies.cgi";
                // prepare the data
                var source1 =
                {
                    datatype: "json",
                    datafields: [
                        { name: 'gene' }
			
                    ],
                    url: url,
                    async: false
                };
                var dataAdapter1 = new $.jqx.dataAdapter(source1);
                // Create a jqxDropDownList
                $("#jqxgene").jqxDropDownList({
                    selectedIndex: 0, source: dataAdapter, displayMember: "ContactName", width: 200, height: 25
                });
                // subscribe to the select event.
                $("#jqxWidget").on('select', function (event) {
                    if (event.args) {
                        var item = event.args.item;
                        if (item) {
                            var valueelement = $("<div></div>");
                            valueelement.text("Value: " + item.value);
                            var labelelement = $("<div></div>");
                            labelelement.text("Label: " + item.label);
                            $("#selectionlog").children().remove();
                            $("#selectionlog").append(labelelement);
                            $("#selectionlog").append(valueelement);
                        }
                    }
                });
	
	
	
	
	
    // define what should happen when a user clicks submit on our search form
    $('#submit').click( function() {
        runCompare();
        return false;  // prevents 'normal' form submission
    });
});

