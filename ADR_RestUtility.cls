/************************************************************************************************************
 * Name: ADR_RestUtility
 * Class test: None
 * Autor: Francisco Reyes
 * Description: List of code and message to status response of a webservice.
 * ***********************************************************************************************************
 LastModifiedBy      | LastModifiedDate      | Modification Id   | Change description
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
 Francisco Reyes		| 13-07-2022			| v0.1				| List of status response
*/
public class ADR_RestUtility {
    public static final Integer SUCESS_CODE= 200;
    public static final Integer CREATED= 201;
    public static final Integer INTERNAL_SERVER_ERROR_CODE = 405;
    public static final Integer RESOURCE_NOT_FOUND_CODE = 404;
    public static final Integer FORBIDDEN_ERROR_CODE = 403;
    public static final Integer UNAUTHORIZED_ERROR_CODE = 401;
    public static final Integer BAD_REQUEST_ERROR_CODE = 400;
    public static final Integer SERVER_ERROR_CODE = 500;
    
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