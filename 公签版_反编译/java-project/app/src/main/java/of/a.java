package of;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.HashMap;
import qf.c;

/* loaded from: classes.dex */
public abstract class a {

    /* renamed from: a, reason: collision with root package name */
    public static final HashMap f11772a;

    static {
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(c.class.getResourceAsStream("/r_values.ini")));
            try {
                HashMap map = new HashMap();
                while (true) {
                    String line = bufferedReader.readLine();
                    if (line == null) {
                        bufferedReader.close();
                        f11772a = map;
                        return;
                    } else {
                        String[] strArrSplit = line.trim().split("=");
                        if (strArrSplit.length == 2) {
                            map.put(Integer.valueOf(strArrSplit[1].trim()), strArrSplit[0].trim());
                        }
                    }
                }
            } catch (Throwable th2) {
                try {
                    throw th2;
                } catch (Throwable th3) {
                    try {
                        bufferedReader.close();
                    } catch (Throwable th4) {
                        try {
                            Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th2, th4);
                        } catch (Exception unused) {
                        }
                    }
                    throw th3;
                }
            }
        } catch (IOException e7) {
            throw new RuntimeException(e7);
        }
    }
}
