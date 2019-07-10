package it.achtelik.webtemplate.endpoints.rest;

import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class frontendconfig {

    @GetMapping(path = "/api/v1/frontendconfig", produces = MediaType.APPLICATION_JSON_VALUE)
    String getFrontendConfig() {
        return "{}";
    }
}
