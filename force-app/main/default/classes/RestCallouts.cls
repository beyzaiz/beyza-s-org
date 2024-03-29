public with sharing class RestCallouts {
    
    //Endpoint: https://th-apex-http-callout.herokuapp.com/animals
    //Http Method: GET
    public static HttpResponse getAnimals() {
        //1. Prepare HttpRequest and wrap all the necessary data in it
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
        request.setMethod('GET');

        //2. Prepare internet
        Http http = new Http();

        //3. Send the request over the internet to receive HttpResponse
        HttpResponse response = http.send(request);

        //4. Process the response
        System.debug(response.getStatus());
        System.debug(response.getStatusCode());
        System.debug(response.getBody());
        return response;
    }

    //Endpoint: https://api.instantwebtools.net/v1/airlines/1
    //Http Method: GET
    public static HttpResponse getAirlines() {
        //1. Prepare HttpRequest and wrap all the necessary data in it
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://api.instantwebtools.net/v1/airlines/1');
        request.setMethod('GET');

        //2. Prepare internet
        Http http = new Http();

        //3. Send the request over the internet in order to receive HttpResponse
        HttpResponse response = http.send(request);

        //4. Process the response
        if(response.getStatusCode() == 200) {
            String jsonString = response.getBody();
            //Convert json string into wrapper
            AirlinesWrapper wrapper = (AirlinesWrapper)JSON.deserialize(jsonString, AirlinesWrapper.class);

            //Convert wrapper into sobject record
            Airlines__c airline = new Airlines__c();
            airline.Name = String.valueOf(wrapper.id);
            airline.Name__c = wrapper.name;
            airline.Country__c = wrapper.country;
            airline.LogoURL__c = wrapper.logo;
            airline.Slogan__c = wrapper.slogan;
            airline.HeadQuarters__c = wrapper.head_quaters;
            airline.Website__c = wrapper.website;
            airline.Established__c = wrapper.established;

            //create airlines record
            try {
                insert airline;
            } catch(Exception ex) {
                System.debug(ex.getMessage());
            }
        } else {
            System.debug(response.getStatus());
            System.debug(response.getStatusCode());
            System.debug(response.getBody());
        }
        return response;
    }

    //Endpoint: https://api.onlinewebtutorblog.com/employees
    //Http Method: GET
    public static HttpResponse getEmployees() {
        //1. Prepare HttpRequest and wrap all the necessary data in it
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://api.onlinewebtutorblog.com/employees');
        request.setMethod('GET');

        //2. Prepare internet
        Http http = new Http();

        //3. Send the request over the internet in order to receive HttpResponse
        HttpResponse response = http.send(request);

        //4. Process the response
        if(response.getStatusCode() == 200) {
            String jsonString = response.getBody();
            //Convert the json string into wrapper class
            EmployeeWrapper empWrapper = (EmployeeWrapper)JSON.deserialize(jsonString, EmployeeWrapper.class);
            List<EmployeeWrapper.Employee> employees = empWrapper.data;

            //Convert the wrapper into sObject
            List<Employee__c> emps = new List<Employee__c>();
            for(EmployeeWrapper.Employee empWrap : employees) {
                Employee__c emp = new Employee__c();
                emp.Name = String.valueOf(empWrap.id);
                emp.Name__c = empWrap.name;
                emp.Username__c = empWrap.username;
                emp.Email__c = empWrap.email;
                emp.Designation__c = empWrap.designation;
                emp.Gender__c = empWrap.gender;
                emp.Complete_Address__c = empWrap.complete_address;
                emp.Phone_Number__c = empWrap.phone_number;
                emps.add(emp);
            }
            //insert employee records
            try {
                insert emps;
            } catch(Exception ex) {
                System.debug(ex.getMessage());
            }
        } else {
            System.debug(response.getStatus());
            System.debug(response.getStatusCode());
            System.debug(response.getBody());
        }
        return response;
    }

    //Endpoint: //https://twocom5-dev-ed.develop.my.salesforce.com/services/apexrest/Case/500Do000005B88wIAC
    //Http Method: GET
    public static HttpResponse getCaseInfo(){
        //1. Prepare HttpRequest and wrap all the necessary data in it
        HttpRequest request = new HttpRequest();
        request.setEndpoint('callout:NC_target_twocom/services/apexrest/Case/500Do000005B88wIAC');
        request.setMethod('GET');
        //2. Prepare internet
        Http http = new Http();
        //3. Send the request over the internet in order to receive HttpResponse
        HttpResponse response = http.send(request);
        
        //4. Process the response
        System.debug(response.getStatus());
        System.debug(response.getStatusCode());
        System.debug(response.getBody());
        return response;
    }

    //Endpoint: https://th-apex-http-callout.herokuapp.com/animals
    //Http Method: POST
    public static HttpResponse postAnimal() {
        //1. Prepare HttpRequest and wrap all the necessary data in it
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
        request.setMethod('POST');
        //set json body
        request.setBody('{"name":"mighty moose"}');
        request.setHeader('Content-Type', 'application/json;ccharset=UTF-8');

        //2. Prepare internet
        Http http = new Http(); 

        //3. Send the request over the internet in order to receive HttpResponse
        HttpResponse response = http.send(request);

        //4. Process the response
        System.debug(response.getStatus());//OK, Created
        System.debug(response.getStatusCode());//200,201
        System.debug(response.getBody());
        return response;
        
    }

    //Endpoint: https://api.instantwebtools.net/v1/airlines
    //Http Method: POST
    @future(callout=true)
    public static void postAirlines(Id airlineId){
        //1. Prepare HttpRequest and wrap all the necessary data in it
        HttpRequest request = new HttpRequest();
        Request.setEndpoint('https://api.instantwebtools.net/v1/airlines');
        request.setMethod('POST');
        
        //set json body
        Airlines__c airline = [SELECT Name, Name__c, Country__c, LogoURL__c, Slogan__c, HeadQuarters__c, Website__c, Established__c FROM Airlines__c WHERE Id = :airlineId];
        AirlinesWrapper wrapper = new AirlinesWrapper();
        wrapper.country = airline.Country__c;
        wrapper.established = airline.Established__c;
        wrapper.head_quaters = airline.HeadQuarters__c;
        wrapper.logo = airline.LogoURL__c;
        wrapper.name = airline.Name__c;
        wrapper.slogan = airline.Slogan__c;
        wrapper.website = airline.Website__c;
        String body = JSON.serialize(wrapper);
        request.setBody(body);
        request.setHeader('Content-Type', 'application/json;charset=UTF-8');


        //2. Prepare internet
        Http http = new Http();

        //3. Send the request over the internet in order to receive HttpResponse
        HttpResponse response = http.send(request);

        //4. Process the response
        if (response.getStatusCode()== 200 || response.getStatusCode() == 201) {
            System.debug(response.getBody());
        }else{
            System.debug(response.getBody());
        }
       

    }

    //Endpoint: https://api.onlinewebtutorblog.com/employees
    //HttpMethod: POST
    @future(callout=true)
    public static void postEmployee(Id employeeId){
        //1. Prepare HttpRequest and wrap all the necessary data in it
        HttpRequest request = new HttpRequest();
        Request.setEndpoint('https://api.onlinewebtutorblog.com/employees');
        request.setMethod('POST');

         //set json body
         Employee__c employee = [SELECT Name__c, Username__c,Email__c, Gender__c, Designation__c, Phone_Number__c,Complete_Address__c FROM Employee__c WHERE Id = :employeeId];
         
         EmployeeWrapper.Employee emp = new EmployeeWrapper.Employee();
         emp.username= employee.Username__c;
         emp.name = employee.Name__c;
         emp.email = employee.Email__c;
         emp.gender = employee.Gender__c;
         emp.designation = employee.Designation__c;
         emp.phone_number = employee.Phone_Number__c;
         emp.complete_address = employee.Complete_Address__c;
         String body = JSON.serialize(emp);
         request.setBody(body);
         request.setHeader('Content-Type', 'application/json;charset=UTF-8');

        //2. Prepare internet
        Http http = new Http();
        //3. Send the request over the internet in order to receive HttpResponse
         HttpResponse response = http.send(request);

        //4. Process the response
        if (response.getStatusCode()== 200 || response.getStatusCode() == 201) {
            System.debug('Data has been sent successfully!');
        }else{
            System.debug(response.getBody());
        }

    
    }
}