/*
 * Copyright (c) disktree
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
package xmpp;

class Attention {
	
	public static inline var XMLNS = 'urn:xmpp:attention:0';
	
	public static inline function xml() : Xml {
		return IQ.createQueryXml( XMLNS, 'attention' );
	}

	/**
		Returns true if the given message packet contains a attention property
	*/
	public static function isRequest( m : Message ) : Bool {
		for( x in m.properties )
			if( x.nodeName == 'attention' && x.get( 'xmlns' ) == XMLNS )
				return true;
		return false;
	}

	public static function getValue( m : Message ) : Bool {
		for( x in m.properties )
			if( x.nodeName == 'attention' && x.get( 'xmlns' ) == XMLNS )
				return true;
		return false;
	}

}
