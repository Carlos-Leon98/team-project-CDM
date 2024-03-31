package stateParks.persistence;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import stateParks.entity.StatePark;
import stateParks.util.Database;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
        assertEquals(15, parks.size());
    }

    @Test
    void getById() {
        StatePark retrievedPark = stateParkDao.getById(22);
        assertEquals("Amnicon Falls State Park", retrievedPark.getName());
    }

    @Test
    void delete() {
        stateParkDao.delete(stateParkDao.getById(22));
        assertNull(stateParkDao.getById(22));
        List<StatePark> parks = stateParkDao.getAll();
        assertEquals(14, parks.size());
    }

    @Test
    void insert() {
        StatePark newPark = new StatePark();
        newPark.setName("Wonderful Park");
        int id = stateParkDao.insert(newPark);
        StatePark retrievedPark = stateParkDao.getById(id);
        assertEquals("Wonderful Park", retrievedPark.getName());
    }

    @Test
    void update() {
        StatePark parkToUpdate = stateParkDao.getById(22);
        parkToUpdate.setName("new Name");
        stateParkDao.update(parkToUpdate);
        StatePark updatedPark = stateParkDao.getById(22);
        assertEquals("new Name", updatedPark.getName());
        assertEquals(parkToUpdate, updatedPark);
    }

    @Test
    void findByPropertyEqual() {
        List<StatePark> parks = stateParkDao.findByPropertyEqual("county", "Dane");
        assertEquals(2, parks.size());
    }

    @Test
    void testFindByPropertyEqual() {
        HashMap<String, Object> searchTerms = new HashMap<>();
        searchTerms.put("county", "Dane");
        searchTerms.put("HasCamping", true);
        List<StatePark> parks = stateParkDao.findByPropertyEqual(searchTerms);
        assertEquals(1, parks.size());
        assertEquals("Blue Mound State Park", parks.get(0).getName());
    }
}