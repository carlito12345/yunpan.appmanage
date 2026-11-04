package dd;

import r1.s;
import vc.j;

/* loaded from: classes.dex */
public final class c implements f, j {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4590a;

    /* renamed from: b, reason: collision with root package name */
    public long f4591b;

    public /* synthetic */ c(int i10, boolean z) {
        this.f4590a = i10;
    }

    public s b() {
        return new s(this);
    }

    @Override // vc.j
    public int c(int i10, byte[] bArr) {
        switch (this.f4590a) {
            case 0:
                rd.a.g(this.f4591b, bArr, i10);
                break;
            default:
                rd.a.g(this.f4591b, bArr, i10);
                break;
        }
        return 8;
    }

    @Override // vc.g
    public int i(int i10, int i11, byte[] bArr) {
        switch (this.f4590a) {
            case 0:
                this.f4591b = rd.a.c(i10, bArr);
                break;
            default:
                this.f4591b = rd.a.c(i10, bArr);
                break;
        }
        return 8;
    }

    @Override // vc.j
    public int size() {
        switch (this.f4590a) {
        }
        return 8;
    }

    public String toString() {
        switch (this.f4590a) {
            case 0:
                return new String(android.support.v4.media.session.a.t(new StringBuilder("EndOfFileInformation[endOfFile="), this.f4591b, "]"));
            case 1:
                return new String(android.support.v4.media.session.a.t(new StringBuilder("SmbQueryFileInternalInfo[indexNumber="), this.f4591b, "]"));
            default:
                return super.toString();
        }
    }

    public c(int i10) {
        this.f4590a = i10;
        switch (i10) {
            case 4:
                this.f4591b = Long.MIN_VALUE;
                break;
            default:
                this.f4591b = 0L;
                break;
        }
    }

    public c(s sVar) {
        this.f4590a = 4;
        this.f4591b = sVar.f13552a;
    }
}
