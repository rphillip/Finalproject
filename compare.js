
var graphData;

// this processes a passed JSON structure representing gene matches and draws it
//  to the result table
function processJSON( data ) {
	var graph1 = $("#jqxgraph1").jqxDropDownList('val');
	var graph2 = $("#jqxgraph").jqxDropDownList('val');
	
	 var dataAdapter = new $.jqx.dataAdapter(data,
		{
			autoBind: true,
			async: false,
			downloadComplete: function () { },
			loadComplete: function () { },
			loadError: function () { }
		});
	var settings = {
                title: "Man vs. Animal",
                description: "Comparison between man versus animal",
                enableAnimations: true,
                showLegend: true,
                padding: { left: 5, top: 5, right: 15, bottom: 5 },
                titlePadding: { left: 90, top: 0, right: 15, bottom: 10 },
                source: dataAdapter,
                xAxis:
                    {
                        dataField: 'species'
                        
                    },
                colorScheme: graph2,
                seriesGroups:
                    [
                        {
                            type: graph1,
                            columnsGapPercent: 20,
			    showLabels: true,
                            valueAxis:
                            {
                                unitInterval: 10,
                                minValue: 0,
                                maxValue: 100,
                                displayValueAxis: true,
                                description: 'Percent Identity',
                                tickMarksColor: '#888888'
                            },
                            series: [
                                    { dataField: 'score', 
					displayText: 'species',
					abelRadius: 120,
                                        initialAngle: 15,
                                        radius: 170,
					innerRadius: 90,
                                        centerOffset: 0,
                                        formatSettings: { sufix: '%', decimalPlaces: 2}					    
				    }
                                
                                ]
                        }
                    ]
            };
	    // setup the chart
            $('#chartContainer').jqxChart(settings);
}


// run our javascript once the page is ready
$(document).ready( function() {
	//dropdown and prepare the gene data
       var source1 ={
                datatype: "json",
                datafields: [
                    { name: 'gene', type:'string' }
                ],
                url: "./showgene.cgi"
	};
        var dataAdapter1 = new $.jqx.dataAdapter(source1);
                // Create a jqxDropDownList
	$("#jqxgene").jqxDropDownList({
                    selectedIndex: 1, source: dataAdapter1, displayMember: "gene", valueMember:"gene", selectedIndex: 1, width: 200, height: 25
        });
		
	// dropdown and holds graph type
	var source2=[
		'column',
		'donut',
		'stepline',
		'line',
		'area',
		'spline'
	];
	$("#jqxgraph1").jqxDropDownList({ source: source2, selectedIndex: 1, width: '200', height: '25'});
	
	// dropdown and holds graph type
	var source3=[
		'scheme01',
		'scheme02',
		'scheme03',
		'scheme04',
		'scheme05',
		'scheme06'
	];
	$("#jqxgraph").jqxDropDownList({ source: source3, selectedIndex: 1, width: '200', height: '25'});
	
	
               // subscribe to the select event for any jqx
	//updates graph to different gene
      $("[id^='jqxgene']").on('select', function (event) {
		var item = $("#jqxgene").jqxDropDownList('getSelectedItem');
		 $.ajax({
		url: "./compare.cgi",
		dataType: 'json',
		data: "geneterm="+ item.value,
		success: function(data, textStatus, jqXHR) {
			graphData = data;
		processJSON(graphData);
		},
		error: function(jqXHR, textStatus, errorThrown){
		alert("Failed to perform gene search! textStatus: (" + textStatus +
			") and errorThrown: (" + errorThrown + ")");
		}
		});
	});
	   $("[id^='jqxgraph']").on('select', function (event) {

		processJSON(graphData);

	});
	
	

    // define what should happen when a user clicks submit on our search for
	// updates graph with input field
    $('#submit').click( function() {
         var item = $("#jqxgene").jqxDropDownList('getSelectedItem');
    // transforms all the form parameters into a string we can send to the server
        var frmStr = $('#seqform').serialize() + "&geneterm="+ item.value ;

        $.ajax({
        url: './compare.cgi',
        dataType: 'json',
        data: frmStr,
        success: function(data, textStatus, jqXHR) {
            graphData = data;
		processJSON(graphData);
        },
        error: function(jqXHR, textStatus, errorThrown){
            alert("Failed to perform gene search! textStatus: (" + textStatus +
                  ") and errorThrown: (" + errorThrown + ")");
        }
        });
        return false;  // prevents 'normal' form submission
    });
});

