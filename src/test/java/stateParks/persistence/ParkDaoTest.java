package stateParks.persistence;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import stateParks.entity.StatePark;
import stateParks.util.Database;

import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

class ParkDaoTest {

    GenericDao<StatePark> stateParkDao;

    @BeforeEach
    void setUp() {
        Database database = Database.getInstance();
        database.runSQL("cleanDB.sql");
        stateParkDao = new GenericDao<>(StatePark.class);
    }

    @Test
    void getAll() {
        List<StatePark> parks = stateParkDao.getAll();
        assertEquals(0, parks.size());
    }

    @Test
    void getById() {
    }

    @Test
    void delete() {
    }

    @Test
    void insert() {
    }

    @Test
    void update() {
    }

    @Test
    void findByPropertyEqual() {
    }

    @Test
    void testFindByPropertyEqual() {
    }
}