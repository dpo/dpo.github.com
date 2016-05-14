var btns = document.querySelectorAll('.btn');

for (var i = 0; i < btns.length; i++) {
    btns[i].addEventListener('mouseleave', function(e) {
        // e.currentTarget.setAttribute('class', 'btn tooltipped tooltipped-e');
        e.currentTarget.setAttribute('aria-label', 'Copy to clipboard');
    });
}

function showTooltip(elem, msg) {
    // elem.setAttribute('class', 'btn tooltipped tooltipped-e');
    elem.setAttribute('aria-label', msg);
}

function fallbackMessage(action) {
    if (/iPhone|iPad/i.test(navigator.userAgent)) {
        actionMsg = 'No support :(';
    } else if (/Mac/i.test(navigator.userAgent)) {
        actionMsg = 'Press ⌘-C to copy';
    } else {
        actionMsg = 'Press Ctrl-C to copy';
    }
    return actionMsg;
}
