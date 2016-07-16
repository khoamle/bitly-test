class Bitly
  API_ERRORS = {
    bitly_error:          ::BitlyError,
    bitly_url_error:      ::Bitly::V3::MissingUrl,
    invalid_uri_error:    ::URI::InvalidURIError
  }
end
