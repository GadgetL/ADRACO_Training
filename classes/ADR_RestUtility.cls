/***************************************************************************************
 * Name: ADR_RestUtility
 * Test: ADR_RestUtility_Test
 * Author: Valentín López Morales
 * Description: Variables
****************************************************************************************
LastModifiedBy	| LastModifiedDate	| Modification Id	| Change Description	
----------------------------------------------------------------------------------------
Valentín López	| 23-06-22 			| v0.1 				| Conection with Code of HTTP
*/
public class ADR_RestUtility {
    //CODE
    public static final Integer SUCCESS_CODE= 200;
    public static final Integer CREATED= 201;
    public static final Integer INTERNAL_SERVER_ERROR_CODE = 405;
    public static final Integer RESOURCE_NOT_FOUND_CODE = 404; 
    public static final Integer FORBIDDEN_ERROR_CODE = 403; 
    public static final Integer UNAUTHORIZED_ERROR_CODE = 401; 
    public static final Integer BAD_REQUEST_ERROR_CODE = 400; 
    public static final Integer SERVER_ERROR_CODE = 500;
    
    //TEXT
    public static final String SUCCESS = 'Success';
    public static final String RESOURCE_NOT_FOUND_ERROR = 'Resource not found';
    public static final String BAD_REQUEST_ERROR = 'Bad Request';
    public static final String UNEXPECTED_ERROR = 'Unexpected Error';
    public static final String FORBIDDEN_ERROR = 'Forbidden';
    public static final String UNAUTHORIZED_ERROR = 'Unauthorized';
    public static final String INTERNAL_SERVER_ERROR = 'Internal Server Error';
    public static final String LOGIN_FAILED = 'Login Failed';
    public static final String NOT_FOUND_ERROR = 'not found'; 
}