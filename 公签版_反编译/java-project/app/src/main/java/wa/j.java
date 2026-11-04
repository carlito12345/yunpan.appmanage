package wa;

import java.io.File;

/* loaded from: classes.dex */
public final /* synthetic */ class j implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f17669a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ s f17670b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ File f17671c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f17672d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f17673e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ int f17674f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ int f17675g;

    /* renamed from: h, reason: collision with root package name */
    public final /* synthetic */ int f17676h;

    public /* synthetic */ j(s sVar, File file, int i10, int i11, int i12, int i13, int i14, int i15) {
        this.f17669a = i15;
        this.f17670b = sVar;
        this.f17671c = file;
        this.f17672d = i10;
        this.f17673e = i11;
        this.f17674f = i12;
        this.f17675g = i13;
        this.f17676h = i14;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f17669a) {
            case 0:
                File file = this.f17671c;
                int i10 = this.f17672d;
                int i11 = this.f17673e;
                int i12 = this.f17674f;
                int i13 = this.f17675g;
                int i14 = this.f17676h;
                s sVar = this.f17670b;
                sVar.getClass();
                try {
                    sVar.l(file, i10, i11, i12, i13, i14);
                    break;
                } catch (Exception unused) {
                    return;
                }
            default:
                File file2 = this.f17671c;
                int i15 = this.f17672d;
                int i16 = this.f17673e;
                int i17 = this.f17674f;
                int i18 = this.f17675g;
                int i19 = this.f17676h;
                s sVar2 = this.f17670b;
                sVar2.getClass();
                try {
                    sVar2.l(file2, i15, i16, i17, i18, i19);
                    break;
                } catch (Exception unused2) {
                    return;
                }
        }
    }
}
