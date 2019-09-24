/**
 * 
 */
//alert("js script loaded");


function changeActionForm(action){
	
	if (action === null || action == null) {
		alert("no parameter set into change function");
	}else{
		formAction = document.getElementById("form_one");
		
		console.log("inside function changeAction");
				
		// sets the form type - processForm processForm1
		
		if (action == 1){
			formAction.action = "processForm";
			console.log("value of attribute " + formAction.action);
		}else if(action == 2){
			formAction.action = "processForm1";
			console.log("value of attribute " + formAction.action);
		}else if(action == 3){
			formAction.action = "processForm2";
			console.log("value of attribute " + formAction.action);			
		}
		
	}
	
}

