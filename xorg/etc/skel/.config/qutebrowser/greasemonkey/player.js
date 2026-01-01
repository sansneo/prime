// ==UserScript==
// @name         Stop stealing j/k YouTube!
// @namespace    https://example.com/
// @version      1.0
// @description  Prevent YouTube from capturing j/k by auto-blurring the video player
// @match        https://www.youtube.com/*
// @match        https://youtube.com/*
// @grant        none
// ==/UserScript==

(function() {
    'use strict';
    // Repeatedly blur the active element if it's the video player
    setInterval(() => {
        const el = document.activeElement;
        if (el && (el.tagName === "VIDEO" || el.id === "movie_player")) {
            el.blur();
        }
    }, 200);
})();
