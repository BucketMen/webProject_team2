const a_button = document.querySelector('#client_control');
const b_button = document.querySelector('#borderdtlcontrol');
const c_button = document.querySelector('#control');

a_button.onclick = () =>{
    location.href = "clientcontrol.html";
}

b_button.onclick = () =>{
    location.href = "borderdtlcontrol.html";
}
c_button.onclick = () =>{
    location.href = "control.html";
}