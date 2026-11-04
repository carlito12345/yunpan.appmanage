package r3;

import java.util.Collections;
import java.util.Set;

/* loaded from: classes.dex */
public final class b {

    /* renamed from: f, reason: collision with root package name */
    public int f13672f;

    /* renamed from: h, reason: collision with root package name */
    public int f13674h;

    /* renamed from: o, reason: collision with root package name */
    public float f13680o;

    /* renamed from: a, reason: collision with root package name */
    public String f13667a = "";

    /* renamed from: b, reason: collision with root package name */
    public String f13668b = "";

    /* renamed from: c, reason: collision with root package name */
    public Set f13669c = Collections.emptySet();

    /* renamed from: d, reason: collision with root package name */
    public String f13670d = "";

    /* renamed from: e, reason: collision with root package name */
    public String f13671e = null;

    /* renamed from: g, reason: collision with root package name */
    public boolean f13673g = false;

    /* renamed from: i, reason: collision with root package name */
    public boolean f13675i = false;

    /* renamed from: j, reason: collision with root package name */
    public final int f13676j = -1;

    /* renamed from: k, reason: collision with root package name */
    public int f13677k = -1;
    public int l = -1;

    /* renamed from: m, reason: collision with root package name */
    public int f13678m = -1;

    /* renamed from: n, reason: collision with root package name */
    public int f13679n = -1;

    /* renamed from: p, reason: collision with root package name */
    public int f13681p = -1;

    /* renamed from: q, reason: collision with root package name */
    public boolean f13682q = false;

    public static int a(String str, int i10, int i11, String str2) {
        if (str.isEmpty() || i10 == -1) {
            return i10;
        }
        if (str.equals(str2)) {
            return i10 + i11;
        }
        return -1;
    }
}
