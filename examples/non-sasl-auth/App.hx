
/**
	Example usage of non-sasl client authentication.

	This should NOT get used! (Use jabber.client.Authentication instead).
*/
class App {
	
	static function main() {
		var creds = XMPPClient.readArguments();
		var cnx = new jabber.SocketConnection( creds.ip, 5222 );
		var stream = new jabber.client.Stream( cnx );
		stream.onOpen = function() {
			trace("XMPP stream opened");
			var auth = new jabber.client.NonSASLAuthentication( stream );
			auth.onSuccess = function() {
				trace( "Authenticated as "+stream.jid.toString() );
			}
			auth.onFail = function(?e) {
				trace( "Failed to authenticate as "+stream.jid.toString() );
			}
			auth.start( "test", "HXMPP" );
		}
		stream.onClose = function(?e) {
			trace("XMPP stream  closed "+e );
		}
		stream.open( creds.jid );
	}

}
