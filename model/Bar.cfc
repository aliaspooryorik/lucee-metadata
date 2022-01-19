component {

	function init(required Foo) {
		variables.foo = Foo;
		return this;
	}

	array function doubleIt() {
		return arrayMap( variables.foo.getStack(), ( el ) => el * 2 );
	}

}
