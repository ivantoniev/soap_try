var serviceUrl = 'http://localhost/ivan/soap/index.cgi';

function sayHello(data) {
  console.log(data);
}

$('#submit-hello').on('submit', function (ev) {
  ev.preventDefault();

  var message = '<soap:Envelope xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/" xmlns:hi="urn:Hello">' +
                      '<soap:Body>' +
                          '<hi:sayHello>' +
                            '<name>Pesho</name>' +
                          '</hi:sayHello>' +
                      '</soap:Body>' +
                  '</soap:Envelope>';

  $.ajax({
        url: serviceUrl,
        type: "POST",
        dataType: "xml",
        data: message,
        success: function (data) {
        sayHello(data);
    },

    contentType: "text/xml; charset=\"utf-8\""
  });
});
