public class SendDatatoService {
    public static HttpResponse makePostCallout(){
        Http http = new Http();
    	HttpRequest request = new HttpRequest();
    	request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
    	request.setMethod('POST');
    	request.setHeader('Content-Type', 'application/json;charset=UTF-8');
        request.setBody('{"name":"Good Boy"}');
        HttpResponse response = http.send(request);
        if (response.getStatusCode() != 201){
            system.debug('Failure');
        }
         else
         {
             system.debug(response.getBody());
         }
            return response;
    
    }
}