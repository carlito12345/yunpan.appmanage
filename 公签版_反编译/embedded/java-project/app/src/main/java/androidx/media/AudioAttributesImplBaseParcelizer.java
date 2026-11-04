package androidx.media;

import android.support.v4.media.c;
import e.a;

/* loaded from: classes.dex */
public final class AudioAttributesImplBaseParcelizer {
    public static c read(a aVar) {
        c cVar = new c();
        cVar.f27a = aVar.d(cVar.f27a, 1);
        cVar.f28b = aVar.d(cVar.f28b, 2);
        cVar.f29c = aVar.d(cVar.f29c, 3);
        cVar.f30d = aVar.d(cVar.f30d, 4);
        return cVar;
    }

    public static void write(c cVar, a aVar) {
        aVar.getClass();
        aVar.h(cVar.f27a, 1);
        aVar.h(cVar.f28b, 2);
        aVar.h(cVar.f29c, 3);
        aVar.h(cVar.f30d, 4);
    }
}
