package com.sukriti
import org.hibernate.dialect.MySQL5InnoDBDialect;
/**
 * Created by Rubal19 on 4/22/2016.
 */
class ImprovedMySQLDialect extends MySQL5InnoDBDialect {

    @Override
    public String getDropSequenceString(String sequenceName) {
        // Adding the "if exists" clause to avoid warnings
        return "drop sequence if exists " + sequenceName;
    }

    @Override
    public boolean dropConstraints() {
        // We don't need to drop constraints before dropping tables, that just leads to error
        // messages about missing tables when we don't have a schema in the database
        return false;
    }
}
