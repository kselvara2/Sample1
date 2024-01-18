public class GetDatafromService {
    public static httpresponse datafromservice(){
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
        request.setMethod('GET');
        HttpResponse response =  http.send(request);
        if(response.getStatusCode() == 200){
            Map<String,object> results =  (Map<String,object>) JSON.deserializeUntyped(response.getBody());
            List<Object> animals = (List<object>) results.get('animals');
            system.debug('Received the following animal');
            for(object animal:animals){
                system.debug(animal);
            }
        }
        return response;
    }
}