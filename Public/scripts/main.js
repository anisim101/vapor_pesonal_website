function setupAge() {
    let bithday =  new Date(Date.UTC(1998, 11, 30));
    
    let ageDifMs = Date.now() - bithday;
    let ageDate = new Date(ageDifMs);
    let age = Math.abs(ageDate.getUTCFullYear() - 1970);
    let element = document.getElementById("subtitle")
    
    let text = `${age}, y.o. iOS Software Engineer`
    element.textContent = text
}

function configure() {
    setupAge()  
}

configure()
