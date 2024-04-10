package stateParks.controller;

import com.fasterxml.jackson.core.JsonProcessingException;
import stateParks.entity.StatePark;
import stateParks.persistence.GenericDao;

import javax.ws.rs.*;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.MediaType;
import java.util.List;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.ObjectWriter;

/**
 * Controller class for managing state parks resources.
 * This class provides RESTful endpoints for accessing and manipulating state park data.
 */
@Path("/stateParks")
@Consumes(MediaType.APPLICATION_JSON)
@Produces(MediaType.APPLICATION_JSON)
public class Parks {
    GenericDao<StatePark> dao;

    /**
     * Retrieves a state park by its ID.
     *
     * @param id The ID of the state park to retrieve.
     * @return The response containing the state park information in JSON format.
     * @throws JsonProcessingException if an error occurs while processing JSON.
     */
    @GET
    @Path("/{id}")
    @Produces(MediaType.APPLICATION_JSON)
    public Response getParkById(@PathParam("id") int id) throws JsonProcessingException {
        dao = new GenericDao<>(StatePark.class);

        StatePark statePark = dao.getById(id);
        ObjectMapper objectMapper = new ObjectMapper();
        String json = objectMapper.writeValueAsString(statePark);
        if (statePark != null) {
            return Response
                    .status(Response.Status.OK)
                    .entity(json)
                    .build();
        } else {
            return Response.status(Response.Status.NOT_FOUND)
                    .entity("State Park with id '" + id + "' not found")
                    .build();
        }
    }

    /**
     * Retrieves a state park by name.
     *
     * @param name The name of the state parks to retrieve.
     * @return The response containing the state parks information in JSON format.
     * @throws JsonProcessingException if an error occurs while processing JSON.
     */
    @GET
    @Path("/parkName/{name}")
    @Produces(MediaType.APPLICATION_JSON)
    public Response getByName(@PathParam("name") String name) throws JsonProcessingException {
        dao = new GenericDao<>(StatePark.class);

        List<StatePark> stateParks = dao.findByPropertyEqual(
                "name",
                name
        );

        ObjectMapper objectMapper = new ObjectMapper();
        String json = objectMapper.writeValueAsString(stateParks);

        return Response
                .status(Response.Status.OK)
                .entity(json)
                .build();
    }

    /**
     * Retrieves state parks by county.
     *
     * @param county The county of the state parks to retrieve.
     * @return The response containing the state parks information in JSON format.
     * @throws JsonProcessingException if an error occurs while processing JSON.
     */
    @GET
    @Path("/county/{county}")
    @Produces(MediaType.APPLICATION_JSON)
    public Response getByCounty(@PathParam("county") String county) throws JsonProcessingException {
        dao = new GenericDao<>(StatePark.class);

        List<StatePark> stateParks = dao.findByPropertyEqual(
                "county",
                county
        );

        ObjectMapper objectMapper = new ObjectMapper();
        String json = objectMapper.writeValueAsString(stateParks);

        return Response
                .status(Response.Status.OK)
                .entity(json)
                .build();
    }

    /**
     * Retrieves state parks that have camping facilities.
     *
     * @return The response containing the state parks information in JSON format.
     * @throws JsonProcessingException if an error occurs while processing JSON.
     */
    @GET
    @Path("/hasCamping")
    @Produces(MediaType.APPLICATION_JSON)
    public Response getByHasCamping() throws JsonProcessingException {
        dao = new GenericDao<>(StatePark.class);

        List<StatePark> stateParks = dao.findByPropertyEqual(
                "HasCamping",
                true
        );

        ObjectMapper objectMapper = new ObjectMapper();
        String json = objectMapper.writeValueAsString(stateParks);

        return Response
                .status(Response.Status.OK)
                .entity(json)
                .build();
    }

    /**
     * Retrieves state parks that have hiking trails.
     *
     * @return The response containing the state parks information in JSON format.
     * @throws JsonProcessingException if an error occurs while processing JSON.
     */
    @GET
    @Path("/hasHiking")
    @Produces(MediaType.APPLICATION_JSON)
    public Response getByHasHiking() throws JsonProcessingException {
        dao = new GenericDao<>(StatePark.class);

        List<StatePark> stateParks = dao.findByPropertyEqual(
                "HasHiking",
                true
        );

        ObjectMapper objectMapper = new ObjectMapper();
        String json = objectMapper.writeValueAsString(stateParks);

        return Response
                .status(Response.Status.OK)
                .entity(json)
                .build();
    }

    /**
     * Retrieves all state parks.
     *
     * @return The response containing all state parks information in JSON format.
     * @throws JsonProcessingException if an error occurs while processing JSON.
     */
    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public Response getAllParks() throws JsonProcessingException {
        dao = new GenericDao<>(StatePark.class);

        List<StatePark> stateParks = dao.getAll();

        ObjectMapper objectMapper = new ObjectMapper();
        String json = objectMapper.writeValueAsString(stateParks);
        return Response
                .status(Response.Status.OK)
                .entity(json)
                .build();
    }
}