package stateParks.controller;

import stateParks.entity.StatePark;
import stateParks.persistence.GenericDao;

import javax.ws.rs.*;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.MediaType;
import java.util.List;

@Path("/stateParks")
@Consumes(MediaType.APPLICATION_JSON)
@Produces(MediaType.APPLICATION_JSON)
public class Parks {
    private final GenericDao<StatePark> dao = new GenericDao<>(StatePark.class);

    @GET
    @Path("/{id}")
    @Produces(MediaType.APPLICATION_JSON)
    public Response getUserById(@PathParam("id") int id) {
        StatePark statePark = dao.getById(id);
        if (statePark != null) {
            return Response
                    .status(Response.Status.OK)
                    .entity(statePark)
                    .build();
        } else {
            return Response.status(Response.Status.NOT_FOUND)
                    .entity("State Park with id '" + id + "' not found")
                    .build();
        }
    }

    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public Response getAllUsers() {
        List<StatePark> stateParks = dao.getAll();
        return Response
                .status(Response.Status.OK)
                .entity(stateParks)
                .build();
    }
}