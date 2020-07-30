function verify(idpassword,ssid){
					//global vars
	var data=document.getElementById(idpassword).value;
					//var form = $("#form");
					//var username= $("#fid");
					//var password = $("#idpassword");

					//On Submitting
					
						if(data.val().length==0){
						    alert('Please enter the username');
						    return false;
						}
						
						return true;
					
					}
