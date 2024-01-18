public class AnimalLocator {
    public static String getAnimalNameById(Integer x){
        Http alHttp = new Http();
        HttpRequest alHttpRequest = new HttpRequest();
        alHttpRequest.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals/'+x);
        alHttpRequest.setMethod('GET');
         Map<String, Object> animal= new Map<String, Object>();
        HttpResponse alHttpResponse = alHttp.send(alHttpRequest);
        if (alHttpResponse.getStatusCode()==200){
            Map<string,object> results = (Map<string,object>) JSON.deserializeUntyped(alHttpResponse.getBody());
             animal = (Map<String,Object>) results.get('animal');
        }
     return (String)animal.get('name');   
    }
   
}