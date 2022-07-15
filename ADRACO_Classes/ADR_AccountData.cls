@RestResource(urlMapping = '/v1/ADR_AccountData/')
global class ADR_AccountData {

    @httpGet
    global static Account doGetMethod() {
        Account objAccount = new Account();
        Map<String, String> paramsMap = RestContext.request.params;
        String strIdAcc = paramsMap.get('id');

        objAccount = [SELECT Id, Name FROM Account WHERE Id = :strIdAcc];

        return objAccount;
    }

    @httpPost
    global static Account doPostMethod(String strName) {
        Account objAccount = new Account(Name = strName);

        INSERT objAccount;

        return objAccount;
    }

    @httpDelete
    global static String doDelete() {
        //RestRequest request = RestContext.request;
        //RestResponse response = RestContext.response;
        //String strIdAcc = request.requestURI.substring(request.requestURI.lastIndexOf('/') + 1);
        Map<String, String> paramsMap = RestContext.request.params;
        String strIdAcc = paramsMap.get('id');


        Account objAccount = [SELECT Id, Name FROM Account WHERE Id = :strIdAcc];

        DELETE objAccount;

        return 'The account was deleted';
    }

    @httpPut
    global static Account doPutMethod(String strName) {
        Map<String, String> paramsMap = RestContext.request.params;
        String strIdAcc = paramsMap.get('id');

        Account objAccount = new Account(Name = strName, Id = strIdAcc);
        UPDATE objAccount;

        return objAccount;
    }
}
