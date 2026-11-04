package dh;

import java.io.Serializable;
import java.lang.reflect.Array;
import java.util.Calendar;

/* loaded from: classes.dex */
public final class g implements Serializable {

    /* renamed from: c, reason: collision with root package name */
    public String f4666c;

    /* renamed from: d, reason: collision with root package name */
    public String f4667d;

    /* renamed from: e, reason: collision with root package name */
    public Calendar f4668e;

    /* renamed from: a, reason: collision with root package name */
    public int f4664a = 3;

    /* renamed from: b, reason: collision with root package name */
    public long f4665b = -1;

    /* renamed from: f, reason: collision with root package name */
    public final boolean[][] f4669f = (boolean[][]) Array.newInstance((Class<?>) Boolean.TYPE, 3, 3);

    public final boolean a() {
        return this.f4664a == 1;
    }

    public final void b(int i10, int i11, boolean z) {
        this.f4669f[i10][i11] = z;
    }

    public final String toString() {
        return this.f4666c;
    }
}
