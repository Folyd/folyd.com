document.getElementById('menu-button').addEventListener('click', function(event) {
    var navigatorContainer = document.querySelector('.navigator-container');
    navigatorContainer.style.position = "fixed";
    navigatorContainer.style.display = "block";
});
document.getElementById('close-menu-button').addEventListener('click', function(event) {
    var navigatorContainer = document.querySelector('.navigator-container');
    navigatorContainer.style.display = "none";
});