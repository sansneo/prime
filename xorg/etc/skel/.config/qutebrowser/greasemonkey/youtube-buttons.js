// ==UserScript==
// @name         Hide YouTube Home and Shorts buttons in the sidebar
// @namespace    http://tampermonkey.net/
// @version      1.1
// @description  Hide Shorts and/or Home buttons in YouTube's top bar
// @author       Albi
// @match        https://www.youtube.com/*
// @grant        none
// ==/UserScript==

(function () {
    'use strict';

    // Configuration: set each to true/false as you prefer
    const hideShorts = true;
    const hideHome = true;

    function hideButtons() {
        // Shorts button
        if (hideShorts) {
            const shortsBtn = document.querySelector('a[title="Shorts"]');
            if (shortsBtn) shortsBtn.style.display = 'none';
        }

        // Home button
        if (hideHome) {
            const homeBtn = document.querySelector('a[title="Home"]');
            if (homeBtn) homeBtn.style.display = 'none';
        }
    }

    // Run initially
    hideButtons();

    // Observe for dynamic changes (YouTube reloads content without full refresh)
    const observer = new MutationObserver(hideButtons);
    observer.observe(document.body, { childList: true, subtree: true });
})();

