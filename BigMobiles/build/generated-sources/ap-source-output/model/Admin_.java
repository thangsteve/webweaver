package model;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.0.v20130507-rNA", date="2019-05-25T10:16:39")
@StaticMetamodel(Admin.class)
public class Admin_ { 

    public static volatile SingularAttribute<Admin, String> password;
    public static volatile SingularAttribute<Admin, Date> createdDate;
    public static volatile SingularAttribute<Admin, Integer> adminID;
    public static volatile SingularAttribute<Admin, Boolean> adminState;
    public static volatile SingularAttribute<Admin, Boolean> adminRole;
    public static volatile SingularAttribute<Admin, String> fullname;
    public static volatile SingularAttribute<Admin, String> avatar;
    public static volatile SingularAttribute<Admin, String> email;

}