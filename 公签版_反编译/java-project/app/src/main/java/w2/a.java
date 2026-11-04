package w2;

import j$.util.Objects;
import java.util.Arrays;
import r1.a0;
import r1.c0;
import r1.e0;
import r1.o;
import r1.p;

/* loaded from: classes.dex */
public final class a implements c0 {

    /* renamed from: g, reason: collision with root package name */
    public static final p f17422g;

    /* renamed from: h, reason: collision with root package name */
    public static final p f17423h;

    /* renamed from: a, reason: collision with root package name */
    public final String f17424a;

    /* renamed from: b, reason: collision with root package name */
    public final String f17425b;

    /* renamed from: c, reason: collision with root package name */
    public final long f17426c;

    /* renamed from: d, reason: collision with root package name */
    public final long f17427d;

    /* renamed from: e, reason: collision with root package name */
    public final byte[] f17428e;

    /* renamed from: f, reason: collision with root package name */
    public int f17429f;

    static {
        o oVar = new o();
        oVar.f13492n = e0.l("application/id3");
        f17422g = new p(oVar);
        o oVar2 = new o();
        oVar2.f13492n = e0.l("application/x-scte35");
        f17423h = new p(oVar2);
    }

    public a(String str, String str2, long j10, long j11, byte[] bArr) {
        this.f17424a = str;
        this.f17425b = str2;
        this.f17426c = j10;
        this.f17427d = j11;
        this.f17428e = bArr;
    }

    @Override // r1.c0
    public final p a() {
        String str = this.f17424a;
        str.getClass();
        switch (str) {
            case "urn:scte:scte35:2014:bin":
                return f17423h;
            case "https://aomedia.org/emsg/ID3":
            case "https://developer.apple.com/streaming/emsg-id3":
                return f17422g;
            default:
                return null;
        }
    }

    @Override // r1.c0
    public final /* synthetic */ void b(a0 a0Var) {
    }

    @Override // r1.c0
    public final byte[] c() {
        if (a() != null) {
            return this.f17428e;
        }
        return null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || a.class != obj.getClass()) {
            return false;
        }
        a aVar = (a) obj;
        return this.f17426c == aVar.f17426c && this.f17427d == aVar.f17427d && Objects.equals(this.f17424a, aVar.f17424a) && Objects.equals(this.f17425b, aVar.f17425b) && Arrays.equals(this.f17428e, aVar.f17428e);
    }

    public final int hashCode() {
        if (this.f17429f == 0) {
            String str = this.f17424a;
            int iHashCode = (527 + (str != null ? str.hashCode() : 0)) * 31;
            String str2 = this.f17425b;
            int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
            long j10 = this.f17426c;
            int i10 = (iHashCode2 + ((int) (j10 ^ (j10 >>> 32)))) * 31;
            long j11 = this.f17427d;
            this.f17429f = Arrays.hashCode(this.f17428e) + ((i10 + ((int) (j11 ^ (j11 >>> 32)))) * 31);
        }
        return this.f17429f;
    }

    public final String toString() {
        return "EMSG: scheme=" + this.f17424a + ", id=" + this.f17427d + ", durationMs=" + this.f17426c + ", value=" + this.f17425b;
    }
}
