package androidx.media;

import android.support.v4.media.AudioAttributesCompat;
import e.a;
import e.c;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes.dex */
public final class AudioAttributesCompatParcelizer {
    public static AudioAttributesCompat read(a aVar) {
        AudioAttributesCompat audioAttributesCompat = new AudioAttributesCompat();
        c cVarF = audioAttributesCompat.f13a;
        if (aVar.c(1)) {
            cVarF = aVar.f();
        }
        audioAttributesCompat.f13a = (android.support.v4.media.a) cVarF;
        return audioAttributesCompat;
    }

    public static void write(AudioAttributesCompat audioAttributesCompat, a aVar) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        aVar.getClass();
        android.support.v4.media.a aVar2 = audioAttributesCompat.f13a;
        aVar.g(1);
        aVar.i(aVar2);
    }
}
