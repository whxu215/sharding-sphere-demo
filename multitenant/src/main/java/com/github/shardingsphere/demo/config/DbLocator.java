package com.github.shardingsphere.demo.config;

public class DbLocator {
    private static final ThreadLocal<String> DB_NAME = new ThreadLocal<>();

    public static void setDbName(String dbName) {
        DB_NAME.set(dbName);
    }
    public static String getDbName() {
        return DB_NAME.get();
    }
}
