describe('.subtract', function() {
  var result;
  beforeEach(function() {
    result = subtract(5, 3);
  });

  it('5-3=2', function() {
    expect(result).toEqual(2);
  });

});