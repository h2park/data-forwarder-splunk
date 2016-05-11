request = require 'request'
class Splunk
  onMessage: ({message, device}, callback) =>
    {url, splunkToken} = device

    options =
      url: url
      json: message

    options.auth = {username, password} if username? || password?
    request.post options

module.exports = Splunk
