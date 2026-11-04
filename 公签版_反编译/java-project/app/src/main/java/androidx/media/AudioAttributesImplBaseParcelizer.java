package androidx.media;

import j4.a;

/* loaded from: classes.dex */
public final class AudioAttributesImplBaseParcelizer {
    public static AudioAttributesImplBase read(a aVar) {
        AudioAttributesImplBase audioAttributesImplBase = new AudioAttributesImplBase();
        audioAttributesImplBase.f1845a = aVar.f(audioAttributesImplBase.f1845a, 1);
        audioAttributesImplBase.f1846b = aVar.f(audioAttributesImplBase.f1846b, 2);
        audioAttributesImplBase.f1847c = aVar.f(audioAttributesImplBase.f1847c, 3);
        audioAttributesImplBase.f1848d = aVar.f(audioAttributesImplBase.f1848d, 4);
        return audioAttributesImplBase;
    }

    public static void write(AudioAttributesImplBase audioAttributesImplBase, a aVar) {
        aVar.getClass();
        aVar.j(audioAttributesImplBase.f1845a, 1);
        aVar.j(audioAttributesImplBase.f1846b, 2);
        aVar.j(audioAttributesImplBase.f1847c, 3);
        aVar.j(audioAttributesImplBase.f1848d, 4);
    }
}
