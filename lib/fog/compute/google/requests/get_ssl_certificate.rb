module Fog
  module Compute
    class Google
      class Mock
        def get_ssl_certificate(_certificate_name)
          Fog::Mock.not_implemented
        end
      end

      class Real
        def get_ssl_certificate(certificate_name)
          api_method = @compute.ssl_certificates.get
          parameters = {
            "project" => @project,
            "sslCertificate" => certificate_name
          }
          request(api_method, parameters)
        end
      end
    end
  end
end
