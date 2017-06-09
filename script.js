// 1) Замикання (closure)
for (var i = 0; i < 10; i++) {
    (function(i) {
        setTimeout(function() {
            console.log(i);
        }, 0);
    })(i);
}

//2) 
for (let i = 0; i < 10; i++) {
    setTimeout(function() {
        console.log(i);
    }, 0);
}


//index.html-> 10 * <input class='button' >
var buttons = document.getElementsByClassName('button');

for (let i = 0; i < 10; i++) {
    buttons[i].onclick = function(){
        alert(i + 1);
    }
}
