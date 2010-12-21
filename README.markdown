# Cocoa Facebook Connection Example

Example using WebView to connect to Facebook Graph API.

The webview hits the authorization URL, then we use it's frame delegate to
intercept the redirect url and parse out the access_token.

## Resources

* [Graph API Overview](http://developers.facebook.com/docs/api)
* [Desktop Application Authentication](http://developers.facebook.com/docs/authentication/desktop)
* [Extended Permissions](http://developers.facebook.com/docs/authentication/permissions)
