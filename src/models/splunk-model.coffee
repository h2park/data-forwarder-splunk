request = require 'request'
class Splunk
  onMessage: ({message, forwarderConfig}, callback) =>
    {url, splunkToken} = forwarderConfig

    options =
      url: url
      json:
        event: message
      headers:
        Authorization: "Splunk #{splunkToken}"

    request.post options
    callback()

module.exports = Splunk
