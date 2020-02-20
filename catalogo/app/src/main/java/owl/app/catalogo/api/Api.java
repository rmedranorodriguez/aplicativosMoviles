package owl.app.catalogo.api;

public class Api {


    private static final String URL_BASE = "http://192.168.57.2/proyectoAndroid/";
    private static final String ROOT_URL = URL_BASE + "views/proyectoAndroid_API/Api.php?apicall=";

    //usuarios
    public static final String URL_CREATE_USUARIO = ROOT_URL + "createusuario";
    public static final String URL_READ_USUARIOS = ROOT_URL + "readusuarios";
    public static final String URL_LOGIN_USUARIO = ROOT_URL + "loginusuario";

    //productos
    public static final String URL_READ_PRODUCTOS = ROOT_URL + "readproductos";

    //ventas
    public static final String URL_READ_VENTAS = ROOT_URL + "readventas";
    public static final String URL_READ_VENTAS_ESPECIFICAS = ROOT_URL + "readventasespecificas&usuario=";

    //galeria
    public static final String GALERIA = URL_BASE + "backend/";

    //request codes
    public static final int CODE_GET_REQUEST = 1024;
    public static final int CODE_POST_REQUEST = 1025;

}
