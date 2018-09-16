var menuButton = document.getElementById('menu-button');
menuButton.addEventListener('click', function(event) {
    var navigatorContainer = document.querySelector('.navigator-container');
    navigatorContainer.style.position = "fixed";
    navigatorContainer.style.display = "block";
});