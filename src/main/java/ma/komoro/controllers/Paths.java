package ma.komoro.controllers;

public final class Paths {


    public interface ProfPaths {
        String LOGIN_ENDPOINT = "/login";
        String LOGOUT_ENDPOINT = "/logout";
        String REGISTRATION_ENDPOINT = "/register";
    }

    public interface AppPaths {
        String ORDER_CONFIRM_ENDPOINT = "/app";
        String APP_INIT = "/init";
    }
}
