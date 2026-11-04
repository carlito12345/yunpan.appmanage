package android.support.v4.media;

import android.util.SparseIntArray;

/* loaded from: classes.dex */
public class AudioAttributesCompat implements e.c {

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ int f12b = 0;

    /* renamed from: a, reason: collision with root package name */
    a f13a;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sparseIntArray.put(5, 1);
        sparseIntArray.put(6, 2);
        sparseIntArray.put(7, 2);
        sparseIntArray.put(8, 1);
        sparseIntArray.put(9, 1);
        sparseIntArray.put(10, 1);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof AudioAttributesCompat)) {
            return false;
        }
        AudioAttributesCompat audioAttributesCompat = (AudioAttributesCompat) obj;
        a aVar = this.f13a;
        return aVar == null ? audioAttributesCompat.f13a == null : aVar.equals(audioAttributesCompat.f13a);
    }

    public final int hashCode() {
        return this.f13a.hashCode();
    }

    public final String toString() {
        return this.f13a.toString();
    }
}
