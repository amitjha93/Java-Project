function echeck(str) {

		var at="@"
		var dot="."
		var lat=str.indexOf(at)
		var lstr=str.length
		var ldot=str.indexOf(dot)
		if (str.indexOf(at)==-1){
		   alert("Invalid E-mail ID")
		   return false
		}

		if (str.indexOf(at)==-1 || str.indexOf(at)==0 || str.indexOf(at)==lstr){
		   alert("Invalid E-mail ID")
		   return false
		}

		if (str.indexOf(dot)==-1 || str.indexOf(dot)==0 || str.indexOf(dot)==lstr){
		    alert("Invalid E-mail ID")
		    return false
		}

		 if (str.indexOf(at,(lat+1))!=-1){
		    alert("Invalid E-mail ID")
		    return false
		 }

		 if (str.substring(lat-1,lat)==dot || str.substring(lat+1,lat+2)==dot){
		    alert("Invalid E-mail ID")
		    return false
		 }

		 if (str.indexOf(dot,(lat+2))==-1){
		    alert("Invalid E-mail ID")
		    return false
		 }
		
		 if (str.indexOf(" ")!=-1){
		    alert("Invalid E-mail ID")
		    return false
		 }

 		 return true					
	}

function ValidateForm(){
	var emailID=document.cops_registration.email
	var userID=document.cops_registration.user_name
	var password=document.cops_registration.password
	var name=document.cops_registration.name
	var address=document.cops_registration.address
	var posting=document.cops_registration.posting
	var designation=document.cops_registration.designation
	
	if((userID.value==null)||(userID.value=="")){
		alert("Please Enter your User Name(voter icard no)")
		userID.focus()
		return false
	}
	
	if((password.value==null)||(password.value=="")){
		alert("Password cannot be left blank")
		password.focus()
		return false
	}
	
	if((name.value==null)||(name.value=="")){
		alert("Please Enter your Name")
		name.focus()
		return false
	}
	
	if ((emailID.value==null)||(emailID.value=="")){
		alert("Please Enter your Email ID")
		emailID.focus()
		return false
	}
	
	if ((posting.value==null)||(posting.value=="")){
		alert("Please Enter your posting")
		posting.focus()
		return false
	}
	
	if ((designation.value==null)||(designation.value=="")){
		alert("Please Enter your designation")
		designation.focus()
		return false
	}
	
	if((address.value==null)||(address.value=="")){
		alert("Please Enter your Address")
		address.focus()
		return false
	}
	
	
	if (echeck(emailID.value)==false){
		emailID.value=""
		emailID.focus()
		return false
	}
	return true
 }