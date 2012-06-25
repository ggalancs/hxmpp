/*
 *	This file is part of HXMPP.
 *	Copyright (c)2009 http://www.disktree.net
 *	
 *	HXMPP is free software: you can redistribute it and/or modify
 *  it under the terms of the GNU Lesser General Public License as published by
 *  the Free Software Foundation, either version 3 of the License, or
 *  (at your option) any later version.
 *
 *  HXMPP is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 *	See the GNU Lesser General Public License for more details.
 *
 *  You should have received a copy of the GNU Lesser General Public License
 *  along with HXMPP. If not, see <http://www.gnu.org/licenses/>.
*/
package jabber.jingle;

import jabber.jingle.io.WebRTCSDPInput;

/**
	Experimental!
	This implementation does NOT parse the jingle packet but attaches the transmitted SDP information directly to processSignalingMessage method of the peerconnection.
	
	http://community.igniterealtime.org/docs/DOC-2273
*/
class WebRTCSDPListener extends SessionListener<WebRTCSDPInput,WebRTCSDPResponder> {
	
	public function new( stream : jabber.Stream, handler : WebRTCSDPResponder->Void ) {
		super( stream, handler, xmpp.Jingle.XMLNS_WEBRTC );
	}
	
	override function createResponder() : WebRTCSDPResponder {
		return new WebRTCSDPResponder( stream );
	}
	
}