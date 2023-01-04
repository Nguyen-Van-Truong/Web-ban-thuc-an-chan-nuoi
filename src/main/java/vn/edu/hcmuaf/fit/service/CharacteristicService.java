package vn.edu.hcmuaf.fit.service;

import vn.edu.hcmuaf.fit.db.JDBiConnector;
import vn.edu.hcmuaf.fit.model.Characteristic;
import vn.edu.hcmuaf.fit.model.Product;

import java.util.List;
import java.util.stream.Collectors;

public class CharacteristicService {
    public static List<Characteristic> getListCharacteristic(int startIndex, int endIndex) {

        // Query the database
        return JDBiConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from characteristic limit :startIndex offset :endIndex")
                    .bind("startIndex", startIndex)
                    .bind("endIndex", endIndex)
                    .mapToBean(Characteristic.class)
                    .stream().collect(Collectors.toList());
        });
    }

    public static void main(String[] args) {
        System.out.println(getListCharacteristic(4,0));
    }
}
