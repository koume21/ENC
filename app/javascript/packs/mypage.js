'use strict';
const opener = document.getElementById("open");
const modal = document.getElementById("modal");
const closer = document.getElementById("closer");
opener.addEventListener("click", () => {
    modal.classList.add("inview");
}, false);

closer.addEventListener("click", () => {
    modal.classList.remove("inview");
}, false);