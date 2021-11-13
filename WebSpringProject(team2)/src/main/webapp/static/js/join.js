const join_text = document.querySelectorAll(".join_text");
const join_warning = document.querySelectorAll(".join_warning");
const join_id = document.querySelector(".join_text"); 
const id_text = document.querySelector("#id_text");
const id_warning = document.querySelector("#id_warning");
const pwd_check = document.querySelector("#pwd_check");
const pwd_check2 = document.querySelector("#pwd_check2");
const pwd_warning = document.querySelector(".pwd_warning");
const submitflag = document.querySelector("#submitflag");
for(let i = 0; i < join_text.length - 1; i++){ 
	join_warning[i].style.display = "none";
}
id_text.onblur = () => {
    	if(id_text.value.length != 0){
    		location.href="/join/joincheck?join_id=" + id_text.value; 
    		id_warning.style.display ="none"
    		
    	}else{
    		id_warning.style.display ="block"
    		
    	}
}  	

for(let i = 1; i < join_text.length - 1; i++){
	join_text[i].onblur = () => {
		if(pwd_check2.value.length != 0){
    		if(pwd_check.value == pwd_check2.value){
				pwd_warning.style.display = "none"
				
			}else{
				pwd_warning.style.display = "block"
				
			}
		}   
        if(join_text[i].value.length == 0){
            join_warning[i].style.display = "block";
            
        }else { 
            join_warning[i].style.display = "none";
            
        }
    }
}
const email_text = document.querySelector(".email_text");
const email_last = document.querySelector("#email_last");
const email_warning = document.querySelector(".email_warning");
	email_warning.style.display = "none";
		email_text.onblur = () =>{
			if(email_text.value.length == 0){
				email_warning.style.display = "block";
				
			}else{
				email_warning.style.display = "none";
				
			}
		}
		email_last.onblur = () =>{
			if(email_text.value.length == 0){
				email_warning.style.display = "block";
				
			}else{
				email_warning.style.display = "none";
				
			}
		}	


const email_select = document.querySelector(".email_select");
email_select.onchange = () => {
    const email_last = document.querySelector("#email_last");
    if(email_select.selectedIndex == 0){
            document.querySelector('#email_last').readOnly = false;
    }else{
            document.querySelector('#email_last').readOnly = true;
    }
    email_last.value = email_select.options[email_select.selectedIndex].text; 
}   

const idstatus = document.querySelector("#idstatus");
	if(idstatus.value == "true"){
		alert("중복된 아이디 입니다");
	}

const join_button = document.querySelector(".join_button");
join_button.onclick =()=>{
	join_button.submit();
}

	

