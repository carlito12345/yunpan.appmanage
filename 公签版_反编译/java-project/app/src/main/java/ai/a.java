package ai;

import android.graphics.Color;
import androidx.leanback.widget.i;
import gi.c;
import java.io.InputStream;
import l2.l;
import u1.q;
import yh.b;
import yh.m;
import yh.n;
import yh.y;

/* loaded from: classes3.dex */
public final class a implements n, m {

    /* renamed from: a, reason: collision with root package name */
    public int f717a;

    /* renamed from: b, reason: collision with root package name */
    public long f718b;

    public /* synthetic */ a(int i10, long j10) {
        this.f717a = i10;
        this.f718b = j10;
    }

    public static a a(l lVar, q qVar) {
        lVar.c(qVar.f15266a, 0, 8, false);
        qVar.O(0);
        return new a(qVar.o(), qVar.s());
    }

    @Override // yh.m
    public boolean b() {
        return true;
    }

    @Override // yh.n
    public InputStream c(InputStream inputStream, b bVar) {
        boolean z = false;
        int i10 = this.f717a;
        long j10 = this.f718b;
        return new y(inputStream, j10 == 4 ? new c(i10, false) : j10 == 5 ? new gi.a(i10, 3, z, false) : j10 == 6 ? new gi.a(i10, 0, z, false) : j10 == 7 ? new gi.a(i10, 1, false) : j10 == 8 ? new gi.a(i10, 2, false) : j10 == 9 ? new gi.a(i10, 4, z, false) : j10 == 10 ? new i(i10, 2) : j10 == 11 ? new i(i10, 3) : null);
    }

    @Override // yh.m
    public boolean e() {
        return false;
    }

    @Override // yh.n
    public int f() {
        int i10 = y.f19310j;
        return 5;
    }

    @Override // yh.m
    public boolean h() {
        return false;
    }

    public a(int i10) {
        switch (i10) {
            case 5:
                Color.parseColor("#00C8FF");
                this.f718b = 120L;
                break;
            case 6:
                break;
            default:
                this.f717a = -1;
                this.f718b = -1L;
                break;
        }
    }

    public a(long j10, int i10) {
        this.f718b = j10;
        this.f717a = i10;
    }
}
