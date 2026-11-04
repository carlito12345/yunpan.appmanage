package androidx.media;

import android.media.AudioAttributes;
import androidx.fragment.app.o1;
import j4.a;
import j4.b;

/* loaded from: classes.dex */
public final class AudioAttributesImplApi21Parcelizer {
    public static AudioAttributesImplApi21 read(a aVar) {
        AudioAttributesImplApi21 audioAttributesImplApi21 = new AudioAttributesImplApi21();
        audioAttributesImplApi21.f1843a = o1.h(aVar.g(audioAttributesImplApi21.f1843a, 1));
        audioAttributesImplApi21.f1844b = aVar.f(audioAttributesImplApi21.f1844b, 2);
        return audioAttributesImplApi21;
    }

    public static void write(AudioAttributesImplApi21 audioAttributesImplApi21, a aVar) {
        aVar.getClass();
        AudioAttributes audioAttributes = audioAttributesImplApi21.f1843a;
        aVar.i(1);
        ((b) aVar).f9745e.writeParcelable(audioAttributes, 0);
        aVar.j(audioAttributesImplApi21.f1844b, 2);
    }
}
