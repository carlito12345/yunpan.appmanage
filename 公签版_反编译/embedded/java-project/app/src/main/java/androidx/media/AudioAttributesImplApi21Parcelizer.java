package androidx.media;

import android.media.AudioAttributes;
import android.support.v4.media.b;
import e.a;

/* loaded from: classes.dex */
public final class AudioAttributesImplApi21Parcelizer {
    public static b read(a aVar) {
        b bVar = new b();
        bVar.f25a = (AudioAttributes) aVar.e(bVar.f25a, 1);
        bVar.f26b = aVar.d(bVar.f26b, 2);
        return bVar;
    }

    public static void write(b bVar, a aVar) {
        aVar.getClass();
        AudioAttributes audioAttributes = bVar.f25a;
        aVar.g(1);
        ((e.b) aVar).f84b.writeParcelable(audioAttributes, 0);
        aVar.h(bVar.f26b, 2);
    }
}
