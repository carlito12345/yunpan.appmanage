package androidx.media;

import android.util.SparseIntArray;
import j4.c;

/* loaded from: classes.dex */
public class AudioAttributesCompat implements c {

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ int f1841b = 0;

    /* renamed from: a, reason: collision with root package name */
    public AudioAttributesImpl f1842a;

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
        AudioAttributesImpl audioAttributesImpl = this.f1842a;
        return audioAttributesImpl == null ? audioAttributesCompat.f1842a == null : audioAttributesImpl.equals(audioAttributesCompat.f1842a);
    }

    public final int hashCode() {
        return this.f1842a.hashCode();
    }

    public final String toString() {
        return this.f1842a.toString();
    }
}
