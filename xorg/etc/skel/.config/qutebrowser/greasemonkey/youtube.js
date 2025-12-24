// ==UserScript==
// @name         YouTube Cleaner (Sidebar + Recommendations)
// @namespace    https://yourdomain.example
// @version      1.3
// @description  Hides Home + Shorts in sidebar and hides right-side recommendations on video pages.
// @match        https://www.youtube.com/*
// @match        https://youtube.com/*
// @grant        none
// ==/UserScript==

(function() {
    'use strict';

    const hideElements = () => {

        // --- Hide Home in sidebar ---
        document.querySelectorAll(
            'a[title="Home"], ytd-mini-guide-entry-renderer[aria-label="Home"]'
        ).forEach(el => el.style.display = 'none');

        // --- Hide Shorts in sidebar ---
        document.querySelectorAll(
            'a[title="Shorts"], ytd-mini-guide-entry-renderer[aria-label="Shorts"]'
        ).forEach(el => el.style.display = 'none');

        // --- Hide right-side recommendations next to videos ---
        // This is the safe element that contains the recommended list
        document.querySelectorAll(
            'ytd-watch-next-secondary-results-renderer'
        ).forEach(el => el.style.display = 'none');

        // Also hide the "Up next" header if present
        document.querySelectorAll(
            '#secondary-inner #related'
        ).forEach(el => el.style.display = 'none');
    };

    hideElements();

    new MutationObserver(hideElements).observe(document.body, {
        childList: true,
        subtree: true
    });
})();
