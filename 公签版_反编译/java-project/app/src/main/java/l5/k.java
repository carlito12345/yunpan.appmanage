package l5;

import android.text.TextUtils;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class k implements h {

    /* renamed from: b, reason: collision with root package name */
    public final Map f10594b = Collections.unmodifiableMap(i.f10592a);

    /* renamed from: c, reason: collision with root package name */
    public volatile Map f10595c;

    public final HashMap a() {
        HashMap map = new HashMap();
        for (Map.Entry entry : this.f10594b.entrySet()) {
            List list = (List) entry.getValue();
            StringBuilder sb2 = new StringBuilder();
            int size = list.size();
            for (int i10 = 0; i10 < size; i10++) {
                String str = ((j) list.get(i10)).f10593a;
                if (!TextUtils.isEmpty(str)) {
                    sb2.append(str);
                    if (i10 != list.size() - 1) {
                        sb2.append(',');
                    }
                }
            }
            String string = sb2.toString();
            if (!TextUtils.isEmpty(string)) {
                map.put(entry.getKey(), string);
            }
        }
        return map;
    }

    public final Map b() {
        if (this.f10595c == null) {
            synchronized (this) {
                try {
                    if (this.f10595c == null) {
                        this.f10595c = Collections.unmodifiableMap(a());
                    }
                } finally {
                }
            }
        }
        return this.f10595c;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof k) {
            return this.f10594b.equals(((k) obj).f10594b);
        }
        return false;
    }

    public final int hashCode() {
        return this.f10594b.hashCode();
    }

    public final String toString() {
        return "LazyHeaders{headers=" + this.f10594b + '}';
    }
}
