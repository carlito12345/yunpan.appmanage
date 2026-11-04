package ei;

import java.lang.reflect.Array;

/* loaded from: classes3.dex */
public abstract class a {

    /* renamed from: a, reason: collision with root package name */
    public final short[] f4997a = new short[2];

    /* renamed from: b, reason: collision with root package name */
    public final short[][] f4998b;

    /* renamed from: c, reason: collision with root package name */
    public final short[][] f4999c;

    /* renamed from: d, reason: collision with root package name */
    public final short[] f5000d;

    public a() {
        Class cls = Short.TYPE;
        this.f4998b = (short[][]) Array.newInstance((Class<?>) cls, 16, 8);
        this.f4999c = (short[][]) Array.newInstance((Class<?>) cls, 16, 8);
        this.f5000d = new short[256];
    }

    public void a() {
        com.bumptech.glide.c.H(this.f4997a);
        int i10 = 0;
        int i11 = 0;
        while (true) {
            short[][] sArr = this.f4998b;
            if (i11 >= sArr.length) {
                break;
            }
            com.bumptech.glide.c.H(sArr[i11]);
            i11++;
        }
        while (true) {
            short[][] sArr2 = this.f4999c;
            if (i10 >= sArr2.length) {
                com.bumptech.glide.c.H(this.f5000d);
                return;
            } else {
                com.bumptech.glide.c.H(sArr2[i10]);
                i10++;
            }
        }
    }
}
