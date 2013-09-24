describe "dom manipulation", ->
  beforeEach ->
    el = "<div id='pic'></div>"
    $(document.body).append el

  afterEach ->
    $('#pic').remove()

  it "should add an element to pic", ->
    add_pic()
    expect($('#pic').children().length).toEqual 1

describe "test proper calculus", ->
  foo = 2

  it "should get the square", ->
    expect(square(foo)).toEqual 4

describe "spy", ->
  foo = 2

  beforeEach ->
    spyOn(window, 'square')
    square(foo)

  it "should have called square", ->
    expect(square).toHaveBeenCalled()

describe "spy and return", ->
  foo = 2

  beforeEach ->
    spyOn(window, 'square').andReturn(5);

  it "should return a wrong square", ->
    expect(square(foo)).toEqual 5

describe 'testing function return', ->
  blob = "{\"blah\":\"defe\"}"

  it "should return a json hash", ->
    expect(the_blob()).toEqual blob
