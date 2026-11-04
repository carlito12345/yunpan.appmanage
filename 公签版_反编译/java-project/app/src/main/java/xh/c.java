package xh;

import java.util.concurrent.atomic.AtomicReferenceArray;

/* loaded from: classes3.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public final String f18492a;

    /* renamed from: b, reason: collision with root package name */
    public final String[] f18493b;

    /* renamed from: c, reason: collision with root package name */
    public final short[] f18494c;

    /* renamed from: d, reason: collision with root package name */
    public final AtomicReferenceArray f18495d;

    public c(String str, String[] strArr, short[] sArr, AtomicReferenceArray atomicReferenceArray) {
        this.f18495d = atomicReferenceArray;
        this.f18492a = str;
        this.f18493b = strArr;
        this.f18494c = sArr;
    }

    public final String toString() {
        return this.f18492a;
    }
}
