# This file describes the behavior of `something` variants

describe "the array [{ a: 1 }, { b: 2 }, { c: { d: 5, e: 4, f: 9 } }]", ->
  array = [{ a: 1 }, { b: 2 }, { c: { d: 5, e: 4, f: 9 } }]

  it "should include a thing", ->
    array.should.include.a.thing()

  it "should include a thing that deep equals { b: 2 }", ->
    array.should.include.a.thing.that.deep.equals { b: 2 }

  it "should include an item", ->
    array.should.include.an.item()

  it "should include an item that deep equals { b: 2 }", ->
    array.should.include.an.item.that.deep.equals { b: 2 }

  it "should include one that deep equals { b: 2 }", ->
    array.should.include.one.that.deep.equals { b: 2 }

  it "should include some", ->
    array.should.include.some()

  it "should include some that deep equal { b: 2 }", ->
    array.should.include.some.that.deep.equal { b: 2 }

  it "should not include some that deeper equal { c: { d: 5 } }", ->
    array.should.not.include.some.that.deep.equal { c: { d: 5} }

  it "should include some that have a deep property 'c.d'", ->
    array.should.include.some.with.deep.property 'c.d'

  it "should include some that have a deep property 'c.d' equal to 5", ->
    array.should.include.some.with.deep.property 'c.d', 5


describe "the empty array", ->
  emptyArray = []

  it "should not include any", ->
    emptyArray.should.not.include.any()

  it "should not include any that deep equal { b: 2 }", ->
    emptyArray.should.not.include.any.that.deep.equal { b: 2 }
