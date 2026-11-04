package ei;

import java.lang.reflect.Array;

/* loaded from: classes3.dex */
public abstract class b {

    /* renamed from: a, reason: collision with root package name */
    public final int f5001a;

    /* renamed from: b, reason: collision with root package name */
    public final int[] f5002b = new int[4];

    /* renamed from: c, reason: collision with root package name */
    public final androidx.leanback.widget.i f5003c = new androidx.leanback.widget.i(1);

    /* renamed from: d, reason: collision with root package name */
    public final short[][] f5004d;

    /* renamed from: e, reason: collision with root package name */
    public final short[] f5005e;

    /* renamed from: f, reason: collision with root package name */
    public final short[] f5006f;

    /* renamed from: g, reason: collision with root package name */
    public final short[] f5007g;

    /* renamed from: h, reason: collision with root package name */
    public final short[] f5008h;

    /* renamed from: i, reason: collision with root package name */
    public final short[][] f5009i;

    /* renamed from: j, reason: collision with root package name */
    public final short[][] f5010j;

    /* renamed from: k, reason: collision with root package name */
    public final short[][] f5011k;
    public final short[] l;

    public b(int i10) {
        Class cls = Short.TYPE;
        this.f5004d = (short[][]) Array.newInstance((Class<?>) cls, 12, 16);
        this.f5005e = new short[12];
        this.f5006f = new short[12];
        this.f5007g = new short[12];
        this.f5008h = new short[12];
        this.f5009i = (short[][]) Array.newInstance((Class<?>) cls, 12, 16);
        this.f5010j = (short[][]) Array.newInstance((Class<?>) cls, 4, 64);
        this.f5011k = new short[][]{new short[2], new short[2], new short[4], new short[4], new short[8], new short[8], new short[16], new short[16], new short[32], new short[32]};
        this.l = new short[16];
        this.f5001a = (1 << i10) - 1;
    }

    public void a() {
        int[] iArr = this.f5002b;
        int i10 = 0;
        iArr[0] = 0;
        iArr[1] = 0;
        iArr[2] = 0;
        iArr[3] = 0;
        this.f5003c.f1647b = 0;
        int i11 = 0;
        while (true) {
            short[][] sArr = this.f5004d;
            if (i11 >= sArr.length) {
                break;
            }
            com.bumptech.glide.c.H(sArr[i11]);
            i11++;
        }
        com.bumptech.glide.c.H(this.f5005e);
        com.bumptech.glide.c.H(this.f5006f);
        com.bumptech.glide.c.H(this.f5007g);
        com.bumptech.glide.c.H(this.f5008h);
        int i12 = 0;
        while (true) {
            short[][] sArr2 = this.f5009i;
            if (i12 >= sArr2.length) {
                break;
            }
            com.bumptech.glide.c.H(sArr2[i12]);
            i12++;
        }
        int i13 = 0;
        while (true) {
            short[][] sArr3 = this.f5010j;
            if (i13 >= sArr3.length) {
                break;
            }
            com.bumptech.glide.c.H(sArr3[i13]);
            i13++;
        }
        while (true) {
            short[][] sArr4 = this.f5011k;
            if (i10 >= sArr4.length) {
                com.bumptech.glide.c.H(this.l);
                return;
            } else {
                com.bumptech.glide.c.H(sArr4[i10]);
                i10++;
            }
        }
    }
}
