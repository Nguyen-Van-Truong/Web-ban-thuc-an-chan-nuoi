package vn.edu.hcmuaf.fit.service;

import vn.edu.hcmuaf.fit.db.JDBiConnector;
import vn.edu.hcmuaf.fit.model.Characteristic;
import vn.edu.hcmuaf.fit.model.Product;

import java.util.List;
import java.util.stream.Collectors;

public class CharacteristicService {
    public static List<Characteristic> getListCharacteristic() {

        // Query the database
        return JDBiConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from characteristic")
                    .mapToBean(Characteristic.class)
                    .stream().collect(Collectors.toList());
        });
    }

    public static void main(String[] args) {
        System.out.println(getListCharacteristic());
    }
}
