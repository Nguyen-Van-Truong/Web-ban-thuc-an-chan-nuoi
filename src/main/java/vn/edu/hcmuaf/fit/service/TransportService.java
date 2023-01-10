package vn.edu.hcmuaf.fit.service;

import vn.edu.hcmuaf.fit.db.JDBiConnector;
import vn.edu.hcmuaf.fit.model.Transport;

public class TransportService {

    public static Transport getTransport(int transport_id){
        return JDBiConnector.get().withHandle(handle -> {
            return handle.createQuery("SELECT * FROM transport  WHERE transport_id = ?")
                    .bind(0, transport_id)
                    .mapToBean(Transport.class)
                    .findFirst()
                    .orElse(new Transport(0,"Lỗi",0));
        });
    }

    public static void main(String[] args) {
        System.out.println(getTransport(4));
    }
}
