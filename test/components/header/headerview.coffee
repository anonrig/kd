should = require 'should'
sinon = require 'sinon'
shouldSinon = require 'should-sinon'
KDHeaderView = require '../../../lib/components/header/headerview'


describe 'KDHeaderView', ->
  beforeEach ->
    @instance = new KDHeaderView

  afterEach ->
    @instance.destroy()

  it 'exists', ->
    KDHeaderView.should.exist

  describe 'setTitle', ->
    it 'should set title', ->
      @instance.setTitle 'koding'
      @instance.getElement().getElementsByTagName('span')[0].innerHTML.should.equal 'koding'

  describe 'updateTitle', ->
    it 'should update title', ->
      @instance.setTitle 'koding'
      @instance.updateTitle 'koding-updated'
      @instance.getElement().getElementsByTagName('span')[0].innerHTML.should.equal 'koding-updated'

  describe 'setDomElement', ->
    it 'should set a dom element if type big', ->
      instance = new KDHeaderView
        type: 'big'
      instance.setDomElement()
      instance.getElement().tagName.should.equal 'H1'

    it 'should set a dom element if type medium', ->
      instance = new KDHeaderView
        type: 'medium'
      instance.setDomElement()
      instance.getElement().tagName.should.equal 'H2'

    it 'should set a dom element if type small', ->
      instance = new KDHeaderView
        type: 'small'
      instance.setDomElement()
      instance.getElement().tagName.should.equal 'H3'
