const borderinsertform = document.querySelector("#borderinsertform");
const submitFlag = document.querySelector("#submitFlag");
const insertButton = document.querySelector("#insertButton");
const reset = document.querySelector("#reset");

insertButton.onclick=()=>{
	submitFlag.value = "true";
	borderinsertform.submit();
}

