package com.diamler;

import org.eclipse.microprofile.config.inject.ConfigProperty;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

@Path("/hello")
public class GreetingResource {


    @ConfigProperty(name = "count")
    private int count;
    @GET
    @Produces(MediaType.TEXT_PLAIN)
    public String hello() {
        System.out.println("Count from secrets: "+count);
        return "Hello from RESTEasy Reactive";
    }
}
