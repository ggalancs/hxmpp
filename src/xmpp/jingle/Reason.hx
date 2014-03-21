/*
 * Copyright (c) 2012, disktree.net
 * 
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 * 
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 * 
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */
package xmpp.jingle;

@:enum abstract Reason(String) {
	
	/**
		The party prefers to use an existing session with the peer rather than initiate a new session.
		The Jingle session ID of the alternative session SHOULD be provided as the XML character data of the <sid/> child.
	*/
	var alternative_session = "alternative-session";
	
	/** The party is busy and cannot accept a session. */
	var busy = "busy";
	
	/** The initiator wishes to formally cancel the session initiation request. */
	var cancel = "cancel";
	
	/** The action is related to connectivity problems. */
	var connectivity_error = "connectivity-error";
	
	/** The party wishes to formally decline the session. */
	var decline = "decline";
	
	/** The session length has exceeded a pre-defined time limit (e.g., a meeting hosted at a conference service). */
	var expired = "expired";
	
	/** The action is related to a non-specific application error. */
	var general_error = "general_error";
	
	/** The entity is going offline or is no longer available. */
	var gone = "gone";
	
	/** The action is related to media processing problems. */
	var media_error = "media_error";
	
	/** The action is generated during the normal course of state management and does not reflect any error. */
	var success = "success";
	
	/** A request has not been answered so the sender is timing out the request. */
	var timeout = "timeout";
	
	/** The party supports none of the offered application types. */
	var unsupported_applications = "unsupported-applications";
	
	/** The party supports none of the offered transport methods. */
	var unsupported_transports = "unsupported-transports";
	
}
