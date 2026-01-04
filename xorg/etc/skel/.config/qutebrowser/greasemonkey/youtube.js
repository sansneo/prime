// ==UserScript==
// @name         Anti-Brainrot YouTube
// @namespace    https://example.com
// @version      1.0
// @description  Hides various YouTube discrating features.
// @match        https://www.youtube.com/*
// @match        https://youtube.com/*
// @grant        none
// ==/UserScript==

(function() {
    'use strict';
    const hideElements = () => {
        // Hide the Home button in the sidebar
        document.querySelectorAll(
            'a[title="Home"], ytd-mini-guide-entry-renderer[aria-label="Home"]'
        ).forEach(el => el.style.display = 'none');
        // Hide the Shorts button in the sidebar
        document.querySelectorAll(
            'a[title="Shorts"], ytd-mini-guide-entry-renderer[aria-label="Shorts"]'
        ).forEach(el => el.style.display = 'none');
        // Hide recommendations next to videos
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
