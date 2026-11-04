package pg;

import j$.nio.charset.StandardCharsets;
import j$.util.Map;
import java.nio.charset.Charset;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;

/* loaded from: classes.dex */
public abstract class f {

    /* renamed from: a, reason: collision with root package name */
    public static final Charset f12696a = StandardCharsets.ISO_8859_1;

    static {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(".tgz", ".tar");
        linkedHashMap.put(".taz", ".tar");
        linkedHashMap.put(".svgz", ".svg");
        linkedHashMap.put(".cpgz", ".cpio");
        linkedHashMap.put(".wmz", ".wmf");
        linkedHashMap.put(".emz", ".emf");
        linkedHashMap.put(".gz", "");
        linkedHashMap.put(".z", "");
        linkedHashMap.put("-gz", "");
        linkedHashMap.put("-z", "");
        linkedHashMap.put("_z", "");
        HashMap map = new HashMap();
        Collections.unmodifiableMap(linkedHashMap);
        int i10 = Integer.MIN_VALUE;
        int i11 = Integer.MIN_VALUE;
        int i12 = Integer.MAX_VALUE;
        int i13 = Integer.MAX_VALUE;
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            int length = ((String) entry.getKey()).length();
            if (length > i10) {
                i10 = length;
            }
            if (length < i12) {
                i12 = length;
            }
            String str = (String) entry.getValue();
            int length2 = str.length();
            if (length2 > 0) {
                Map.EL.computeIfAbsent(map, str, new mg.b(0, entry));
                if (length2 > i11) {
                    i11 = length2;
                }
                if (length2 < i13) {
                    i13 = length2;
                }
            }
        }
    }
}
