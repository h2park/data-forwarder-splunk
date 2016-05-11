request = require 'request'
class Splunk
  onMessage: ({message, device}, callback) =>
    {url, splunkToken} = device

    options =
      url: url
      json:
        event: message
      headers:
        Authorization: "Splunk #{splunkToken}"

    request.post options
    callback()

module.exports = Splunk
