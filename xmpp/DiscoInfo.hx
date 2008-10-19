package xmpp;


typedef DiscoIdentity = {
	var category : String;
	var name : String;
	var type : String;
}


class DiscoInfo {
	
	public static inline var XMLNS = 'http://jabber.org/protocol/disco#info';
	
	public var from : String;
	public var identities : List<DiscoIdentity>; 
	public var features : List<String>;
	
	
	public function new( ?identities : List<DiscoIdentity>, ?features : List<String> ) {
		this.identities = ( identities == null ) ? new List() : identities;
		this.features = ( features == null ) ? new List() : features;
	}
	

	public function toXml() : Xml {
		var query = xmpp.IQ.createQuery( XMLNS );
		if( identities.length > 0 ) {
			for( i in identities ) {
				var identity = Xml.createElement( 'identity' );
				if( i.category != null ) identity.set( "category", i.category );
				if( i.name != null ) identity.set( "name", i.name );
				if( i.type != null ) identity.set( "type", i.type );
				query.addChild( identity );
			}
		}
		if( features.length > 0 ) {
			for( f in features ) {
				var feature = Xml.createElement( 'feature' );
				feature.set( "var", f );
				query.addChild( feature );
			}
		}
		return query;
	}
	
	public inline function toString() {
		return toXml().toString();
	}
	
	
	public static function parse( x : Xml ) : DiscoInfo {
		var i = new xmpp.DiscoInfo();
		for( f in x.elements() ) {
			switch( f.nodeName ) {
				case "feature"  : i.features.add( f.get( "var" ) );
				case "identity" : i.identities.push( { category : f.get( "category" ), name : f.get( "name" ), type : f.get( "type" ) } );
			}
		}
		return i;
	}
	
}