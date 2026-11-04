package r1;

import java.util.HashSet;

/* loaded from: classes.dex */
public abstract class z {

    /* renamed from: a, reason: collision with root package name */
    public static final HashSet f13633a = new HashSet();

    /* renamed from: b, reason: collision with root package name */
    public static String f13634b = "media3.common";

    public static synchronized void a(String str) {
        if (f13633a.add(str)) {
            f13634b += ", " + str;
        }
    }
}
