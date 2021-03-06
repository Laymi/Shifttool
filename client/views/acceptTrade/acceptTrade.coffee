Template.acceptTrade.helpers
  trade: ->
    Trades.findOne(Router?.current()?.params?._id)

  userId: ->
    # console.log Trades.findOne(Router?.current()?.params?._id)
    Meteor.userId()

  formatDate: (date) ->
    moment(date).subtract(2, 'hours').format('DD-MM-YYYY hh:mm:ss')

Template.acceptTrade.rendered = ->
  document.getElementById('searchStudent')?.value = ''
  Session.set('possibleStudents', undefined)
  # console.log 'Router?.current()?.params?._id', Router?.current()?.params?._id

Template.acceptTrade.events
  "click #acceptOffer": (event) ->
    Meteor.call 'closeTrade', Router?.current()?.params?._id
    # console.log 'accepted Offer'
