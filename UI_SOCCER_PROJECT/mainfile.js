
 $(document).ready(function(){
	 function getMaxPlayersProducedClub() {
		 var clubname  ="";
		 var playerscount;
    var selectBox = document.getElementById("WcYearselectBox").value;

	$.ajax({
        type: "GET",
        url: 'http://192.168.0.14:8080/restfulservicestest/test/clubname?wcYear='+selectBox,
		async: false,
        success: function(data) {
			 console.log("success");
            clubname = data;
			
        }
    });
    var paragraph = document.getElementById("maxPlayersProducedClubParaId");
	paragraph.textContent = clubname;
	
	$.ajax({
        type: "GET",
        url: 'http://192.168.0.14:8080/restfulservicestest/test/playerscount?wcYear='+selectBox,
		async: false,
        success: function(data) {
			 console.log("success");
            playerscount = data;
			
        }
    });
	 var playercountpara = document.getElementById("maxPlayersCountParaId");
	playercountpara.textContent = playerscount;
	
	
	$.ajax({
        type: "GET",
        url: 'http://192.168.0.14:8080/restfulservicestest/test/clubnamePlayers?wcYear=1934',
		async: false,
		dataType:'application/json',
        success: function(data) {
			 console.log("success");
            playerscount = data;
			
        }
    });
	
   }
   $("#WcYearselectBox").on("change", getMaxPlayersProducedClub);
 $('#buttonid').click(function() {
	 console.log("inbutton");
	 var hc = document.getElementById("hc").value;
	 var wc = document.getElementById("wc").value;
	 var frc = document.getElementById("frc").value;
	  var year = document.getElementById("ip1").value;
	  year = parseInt(year, 10)
	  //String url = 'http://192.168.0.14:8080/restfulservicestest/test/wcentryadd?wcYear=2070&wc='+'Germany'+'&hc='+ 'test' +'&frc='+ 'Germany';
	  
 $.ajax({
        type: "GET",
        url: 'http://192.168.0.14:8080/restfulservicestest/test/wcentryadd?wcYear=2090&wc='+'Germany'+'&hc='+ 'test' +'&frc='+ 'Germany',
        success: function(data) {
			 console.log("success");
            moviename = data;
			document.getElementById("header").innerHTML = moviename;
        }
    });
 })
 

 });
