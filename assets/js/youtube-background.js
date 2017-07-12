(function () {
var player, playerRetry;

function setupPlayer (event) {
    window.player = player = event.target;
    player.mute();
    player.pauseVideo();
}

function playVideo () {
    if (!player) { return; }
    if (playerRetry) { clearInterval(playerRetry); }
    player.getIframe().classList.remove('hidden');
    player.getIframe().classList.add('animated', 'fadeIn');
    player.playVideo();
}

function onYouTubeIframeAPIReady() {
    new YT.Player('reel', {
        videoId: '5nVXwuKwcJ8',
        playerVars: {
            loop: 1,
            rel: 0,
            controls: 0,
            showinfo: 0,
            autoplay: 1,
            start: 4,
        },
        events: { onReady: setupPlayer }
    });
    var motto = document.querySelector('.motto');
    motto.addEventListener('animationend', function (event) {
        if (event.target !== motto) { return; }
        motto.style.display = 'none';
        if (player) { playVideo(); }
        else { var playerRetry = setInterval(playVideo, 500); }
    });
}
window.onYouTubeIframeAPIReady = onYouTubeIframeAPIReady;
}());
