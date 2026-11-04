package c3;

import d.b;
import qf.c;
import r1.a0;
import r1.c0;
import r1.p;

/* loaded from: classes.dex */
public final class a implements c0 {

    /* renamed from: a, reason: collision with root package name */
    public final String f2870a;

    /* renamed from: b, reason: collision with root package name */
    public final String f2871b;

    public a(String str, String str2) {
        this.f2870a = c.c0(str);
        this.f2871b = str2;
    }

    @Override // r1.c0
    public final /* synthetic */ p a() {
        return null;
    }

    @Override // r1.c0
    public final void b(a0 a0Var) {
        String str;
        String str2 = this.f2870a;
        str2.getClass();
        str = this.f2871b;
        switch (str2) {
            case "TOTALTRACKS":
                Integer numS0 = b.s0(str);
                if (numS0 != null) {
                    a0Var.f13379i = numS0;
                    break;
                }
                break;
            case "TOTALDISCS":
                Integer numS02 = b.s0(str);
                if (numS02 != null) {
                    a0Var.f13390v = numS02;
                    break;
                }
                break;
            case "TRACKNUMBER":
                Integer numS03 = b.s0(str);
                if (numS03 != null) {
                    a0Var.f13378h = numS03;
                    break;
                }
                break;
            case "ALBUM":
                a0Var.f13373c = str;
                break;
            case "GENRE":
                a0Var.f13391w = str;
                break;
            case "TITLE":
                a0Var.f13371a = str;
                break;
            case "DESCRIPTION":
                a0Var.f13375e = str;
                break;
            case "DISCNUMBER":
                Integer numS04 = b.s0(str);
                if (numS04 != null) {
                    a0Var.f13389u = numS04;
                    break;
                }
                break;
            case "ALBUMARTIST":
                a0Var.f13374d = str;
                break;
            case "ARTIST":
                a0Var.f13372b = str;
                break;
        }
    }

    @Override // r1.c0
    public final /* synthetic */ byte[] c() {
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
        return this.f2870a.equals(aVar.f2870a) && this.f2871b.equals(aVar.f2871b);
    }

    public final int hashCode() {
        return this.f2871b.hashCode() + org.bouncycastle.jcajce.provider.digest.a.c(527, 31, this.f2870a);
    }

    public final String toString() {
        return "VC: " + this.f2870a + "=" + this.f2871b;
    }
}
