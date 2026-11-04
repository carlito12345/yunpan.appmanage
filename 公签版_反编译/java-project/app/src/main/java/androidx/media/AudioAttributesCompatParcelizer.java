package androidx.media;

import j4.a;
import j4.c;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes.dex */
public final class AudioAttributesCompatParcelizer {
    public static AudioAttributesCompat read(a aVar) {
        AudioAttributesCompat audioAttributesCompat = new AudioAttributesCompat();
        c cVarH = audioAttributesCompat.f1842a;
        if (aVar.e(1)) {
            cVarH = aVar.h();
        }
        audioAttributesCompat.f1842a = (AudioAttributesImpl) cVarH;
        return audioAttributesCompat;
    }

    public static void write(AudioAttributesCompat audioAttributesCompat, a aVar) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        aVar.getClass();
        AudioAttributesImpl audioAttributesImpl = audioAttributesCompat.f1842a;
        aVar.i(1);
        aVar.k(audioAttributesImpl);
    }
}
