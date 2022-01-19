component extends="testbox.system.BaseSpec" {

	function run(testResults, testBox) {
		given( "I have two numbers in the stack", () => {
			beforeEach(function() {
				foo = createObject( "model.Foo" );
				prepareMock( foo );
				foo.$( "getStack", [ 10, 50 ] );
				sut = new model.Bar( foo );
			});
			when( "I get the stack", () => {
				it( "should return each item in the stack doubled", () => {
					expect( sut.doubleIt() ).toBe( [ 20, 100 ] );
				});
			})
			when( "I view the meta data", () => {
				it( "dump all the things", () => {
					debug( createObject( "model.Foo" ) );
					debug( getMetaData( createObject( "model.Foo" ) ) );
				});
			})
		});
	}

}