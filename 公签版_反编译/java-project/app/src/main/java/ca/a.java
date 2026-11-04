package ca;

import ec.d;
import java.io.File;
import java.io.PrintStream;
import mc.b;
import za.g;

/* loaded from: classes.dex */
public final /* synthetic */ class a implements d {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2981a = 1;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ File f2982b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f2983c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ String f2984d;

    public /* synthetic */ a(File file, String str, String str2) {
        this.f2982b = file;
        this.f2983c = str;
        this.f2984d = str2;
    }

    @Override // ec.d
    public final void g(b bVar) {
        switch (this.f2981a) {
            case 0:
                File file = this.f2982b;
                String str = this.f2983c;
                String str2 = this.f2984d;
                System.currentTimeMillis();
                try {
                    p000if.a.w(file, str, str2, bVar);
                    PrintStream printStream = System.out;
                    System.currentTimeMillis();
                    printStream.getClass();
                    bVar.b();
                    break;
                } catch (Exception e7) {
                    bVar.d(e7);
                    return;
                }
            default:
                File file2 = this.f2982b;
                String str3 = this.f2983c;
                String str4 = this.f2984d;
                try {
                    System.currentTimeMillis();
                    g.e(file2, str3, str4, bVar);
                    PrintStream printStream2 = System.out;
                    System.currentTimeMillis();
                    printStream2.getClass();
                    bVar.b();
                    break;
                } catch (Exception e10) {
                    bVar.d(e10);
                }
        }
    }

    public /* synthetic */ a(File file, String str, String str2, gf.g gVar) {
        this.f2982b = file;
        this.f2983c = str;
        this.f2984d = str2;
    }
}
