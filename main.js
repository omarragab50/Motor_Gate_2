let subMenu = document.getElementById("subMenu");
function toggleMenu () {
    subMenu.classList.toggle("open-menu");
}


let span = document.querySelector(".up");

window.onscroll = function () {
    if (this.scrollY >= 800) {
        span.classList.add("show");
    }else {
        span.classList.remove("show");
    }
}


span.onclick = function () {
    window.scrollTo({
        top: 0,
        behavior: "smooth",
    });
};