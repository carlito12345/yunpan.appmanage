package k9;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import okhttp3.MediaType;

/* loaded from: classes.dex */
public final class c implements Serializable {

    /* renamed from: c, reason: collision with root package name */
    public static final MediaType f10210c = MediaType.parse("text/plain;charset=utf-8");

    /* renamed from: d, reason: collision with root package name */
    public static final MediaType f10211d;

    /* renamed from: a, reason: collision with root package name */
    public final LinkedHashMap f10212a = new LinkedHashMap();

    /* renamed from: b, reason: collision with root package name */
    public final LinkedHashMap f10213b = new LinkedHashMap();

    static {
        MediaType.parse("application/json;charset=utf-8");
        f10211d = MediaType.parse("application/octet-stream");
    }

    public final void a(String str, String str2, boolean z) {
        if (str2 != null) {
            List arrayList = (List) this.f10212a.get(str);
            if (arrayList == null) {
                arrayList = new ArrayList();
                this.f10212a.put(str, arrayList);
            }
            if (z) {
                arrayList.clear();
            }
            arrayList.add(str2);
        }
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder();
        for (Map.Entry entry : this.f10212a.entrySet()) {
            if (sb2.length() > 0) {
                sb2.append("&");
            }
            sb2.append((String) entry.getKey());
            sb2.append("=");
            sb2.append(entry.getValue());
        }
        for (Map.Entry entry2 : this.f10213b.entrySet()) {
            if (sb2.length() > 0) {
                sb2.append("&");
            }
            sb2.append((String) entry2.getKey());
            sb2.append("=");
            sb2.append(entry2.getValue());
        }
        return sb2.toString();
    }
}
