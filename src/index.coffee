RealGateblu = require './models/real-gateblu'
VirtualGateblu = require './models/virtual-gateblu'

class GatebluShadower
  constructor: ({@meshbluConfig}) ->

  updateRealFromVirtual: (attributes, callback) =>
    virtualGateblu = new VirtualGateblu {attributes, @meshbluConfig}
    virtualGateblu.updateRealGateblu callback

  updateVirtualsFromReal: (attributes, callback) =>
    realGateblu = new RealGateblu {attributes, @meshbluConfig}
    realGateblu.updateVirtualGateblus callback

module.exports = GatebluShadower
