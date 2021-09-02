const join_text = document.querySelectorAll(".join_text");
const join_warning = document.querySelectorAll(".join_warning");

for(let i = 0; i < join_text.length - 1; i++){
    join_text[i].onblur = () => {
        if(join_text[i].value.length == 0){
            join_warning[i].style.display = "block";
        }else { 
            join_warning[i].style.display = "none";
        }
    }
}

// function mailcheck()
// {
//     const email_select = document.getElementById("email_select");
//     const displaytext = email_select.options[email_select.selectedIndex].text;
//     document.getElementById("email_last").value=displaytext;
// }



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

const id_check = document.querySelector(".id_check");
id_check.onclick=()=>{
    
}