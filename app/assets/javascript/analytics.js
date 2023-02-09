window.dataLayer = window.dataLayer || [];
function gtag() { dataLayer.push(arguments); }

gtag('js', new Date());

gtag('config', 'G-1E3GVJJG8D', { 
    'page_location': document.location,
    'page_path':   document.location.pathname,
    'page_origin': document.location.origin,
    'page_title': document.title,
    'page_host': document.location.host,
    'page_port': document.location.port,
    'page_protocol': document.location.protocol,
    'page_hash': document.location.hash,
    'page_href': document.location.href,
    'page_search': document.location.search,
    'cookie_flags': 'max-age=7200;secure;samesite=none'
});
