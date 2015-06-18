package com.persistance;

/**
 * Created by MalindaK on 6/17/2015.
 */

import com.entity.Vehicle;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by MalindaK on 6/17/2015.
 */
public class DataSource {

    private static DataSource dataSource=null;
    private static Connection connection = null;

    public static void main(String[] argv) {

        System.out.println("-------- Oracle JDBC Connection Testing ------");
        getInstance().getVehicles();
        Vehicle v= new Vehicle();
        v.setREGNO("sdfsdfsyy");
        getInstance().addVehicle(v);

    }

    private DataSource(){
         createConnection();
    }

    public static DataSource getInstance(){
        if(dataSource==null){
            dataSource=new DataSource();
        }
        return dataSource;
    }


    private static void createConnection(){
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            connection = DriverManager.getConnection(
                    "jdbc:oracle:thin:@localhost:1521:xe", "system",
                    "12qw!@QW");
            System.out.println("Connection created");
        } catch (Exception e) {
            dataSource=null;
            e.printStackTrace();
        }
    }


    public List getVehicles(){
        List<String> list=new ArrayList<String>();
        Statement stmt = null;
        String query = "SELECT REGNO FROM VEHICLE";
        try {
            stmt = connection.createStatement();
            ResultSet rs = stmt.executeQuery(query);
            while (rs.next()) {
                String regno = rs.getString("REGNO");
                System.out.println(regno);
                list.add(regno);
            }
        } catch (Exception e ) {
            e.printStackTrace();
        }
        return list;
    }

    public static void addVehicle(Vehicle vehicle){
        Statement stmt = null;
        String query = "INSERT INTO VEHICLE VALUES ('"+vehicle.getREGNO()+"','"+vehicle.getPHONE()+"','"+vehicle.getEMAIL()+"','"+vehicle.getMAKE()+"','"+vehicle.getMODEL()+"','"+vehicle.getTYPE()+"','"+vehicle.getOWNER()+"','"+vehicle.getDESCRIPTION()+"',"+vehicle.getACCOST()+","+vehicle.getNONACCOST()+","+vehicle.getSEATS()+")";
        try {
            stmt = connection.createStatement();
            stmt.executeQuery(query);


        } catch (Exception e ) {
            e.printStackTrace();
        }
    }


}
