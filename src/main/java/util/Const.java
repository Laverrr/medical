package util;

/**
 * Created by L on 2018/1/5.
 */
public class Const {

    public static final String ADMIN="admin";
    public static final int UNREAD=0;
    public static final int READED=1;
    public static final int MALE=1;
    public static final int FEMALE=0;

    public interface Family{
        int  HOLDER = 0;
        int  COUPLE =10;
        int  SON =20;
        int  DAU =30;
        int  GRANDSON =40;
        int  FATHER =50;
        int  MOTHER =60;
        int  BROTHER =70;
        int  BRO =71;
        int SIS=80;
        int SISTER=81;
        int  OUT=90;
    }

    public interface Resident{
        int  HEALTHY = 0;
        int  SOSO =1;
        int  sick =-1;

    }

}
