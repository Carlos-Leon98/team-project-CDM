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

@Path("/stateParks")
@Consumes(MediaType.APPLICATION_JSON)
@Produces(MediaType.APPLICATION_JSON)
public class Parks {
    GenericDao<StatePark> dao;

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