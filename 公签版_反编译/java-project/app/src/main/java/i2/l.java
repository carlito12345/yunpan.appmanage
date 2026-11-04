package i2;

import a2.m;
import java.util.ArrayList;
import java.util.Collections;
import ta.q;

/* loaded from: classes.dex */
public final class l {

    /* renamed from: g, reason: collision with root package name */
    public static final m f8476g = new m(19);

    /* renamed from: h, reason: collision with root package name */
    public static final m f8477h = new m(20);

    /* renamed from: d, reason: collision with root package name */
    public int f8481d;

    /* renamed from: e, reason: collision with root package name */
    public int f8482e;

    /* renamed from: f, reason: collision with root package name */
    public int f8483f;

    /* renamed from: b, reason: collision with root package name */
    public final k[] f8479b = new k[5];

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f8478a = new ArrayList();

    /* renamed from: c, reason: collision with root package name */
    public int f8480c = -1;

    public final void a(float f10, int i10) {
        k kVar;
        int i11 = this.f8480c;
        ArrayList arrayList = this.f8478a;
        if (i11 != 1) {
            Collections.sort(arrayList, f8476g);
            this.f8480c = 1;
        }
        int i12 = this.f8483f;
        k[] kVarArr = this.f8479b;
        if (i12 > 0) {
            int i13 = i12 - 1;
            this.f8483f = i13;
            kVar = kVarArr[i13];
        } else {
            kVar = new k();
        }
        int i14 = this.f8481d;
        this.f8481d = i14 + 1;
        kVar.f8473a = i14;
        kVar.f8474b = i10;
        kVar.f8475c = f10;
        arrayList.add(kVar);
        this.f8482e += i10;
        while (true) {
            int i15 = this.f8482e;
            if (i15 <= 2000) {
                return;
            }
            int i16 = i15 - 2000;
            k kVar2 = (k) arrayList.get(0);
            int i17 = kVar2.f8474b;
            if (i17 <= i16) {
                this.f8482e -= i17;
                arrayList.remove(0);
                int i18 = this.f8483f;
                if (i18 < 5) {
                    this.f8483f = i18 + 1;
                    kVarArr[i18] = kVar2;
                }
            } else {
                kVar2.f8474b = i17 - i16;
                this.f8482e -= i16;
            }
        }
    }

    public final float b() {
        int i10 = this.f8480c;
        ArrayList arrayList = this.f8478a;
        if (i10 != 0) {
            Collections.sort(arrayList, f8477h);
            this.f8480c = 0;
        }
        float f10 = 0.5f * this.f8482e;
        int i11 = 0;
        for (int i12 = 0; i12 < arrayList.size(); i12++) {
            k kVar = (k) arrayList.get(i12);
            i11 += kVar.f8474b;
            if (i11 >= f10) {
                return kVar.f8475c;
            }
        }
        if (arrayList.isEmpty()) {
            return Float.NaN;
        }
        return ((k) q.h(1, arrayList)).f8475c;
    }
}
