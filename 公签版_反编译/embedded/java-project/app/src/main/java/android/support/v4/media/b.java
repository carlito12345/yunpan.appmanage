package android.support.v4.media;

import android.media.AudioAttributes;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class b implements a {

    /* renamed from: a, reason: collision with root package name */
    AudioAttributes f25a;

    /* renamed from: b, reason: collision with root package name */
    int f26b = -1;

    public final boolean equals(Object obj) {
        if (obj instanceof b) {
            return this.f25a.equals(((b) obj).f25a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f25a.hashCode();
    }

    public final String toString() {
        return "AudioAttributesCompat: audioattributes=" + this.f25a;
    }
}
