// ==UserScript==
// @name         Hide YouTube recommended videos next to the playing video
// @namespace    http://tampermonkey.net/
// @version      1.0
// @description  Hide the sidebar with suggested videos on YouTube watch pages
// @author       You
// @match        https://www.youtube.com/*
// @grant        none
// ==/UserScript==

(function () {
    'use strict';

    function hideSidebar() {
        const sidebar = document.querySelector('#related');
        if (sidebar) {
            sidebar.style.display = 'none';
        }
    }

    // Run initially
    hideSidebar();

    // Keep watching for changes (YouTube reloads content dynamically)
    const observer = new MutationObserver(hideSidebar);
    observer.observe(document.body, { childList: true, subtree: true });
})();

