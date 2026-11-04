package ba;

import l5.y;

/* loaded from: classes.dex */
public final class h implements kf.e {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2695a;

    /* renamed from: b, reason: collision with root package name */
    public String f2696b;

    /* renamed from: c, reason: collision with root package name */
    public String f2697c;

    public /* synthetic */ h(int i10) {
        this.f2695a = i10;
    }

    public static String a(v3.f fVar) {
        for (kf.b bVar : (kf.b[]) ((y) fVar.f16476d).f10629b) {
            if (((String) bVar.f10279c).equals("drawable")) {
                return (String) bVar.f10282f;
            }
        }
        return null;
    }

    @Override // kf.e
    public void m(v3.f fVar) {
        if (((String) fVar.f16475c).equals("background")) {
            this.f2697c = a(fVar);
        } else if (((String) fVar.f16475c).equals("foreground")) {
            this.f2696b = a(fVar);
        }
    }

    public String toString() {
        switch (this.f2695a) {
            case 0:
                return "GCID=" + this.f2696b + "\nCID=" + this.f2697c;
            case 1:
            case 2:
            default:
                return super.toString();
            case 3:
                return this.f2696b + "=" + this.f2697c;
            case 4:
                return this.f2696b + "=" + this.f2697c;
            case 5:
                StringBuilder sb2 = new StringBuilder("</");
                String str = this.f2696b;
                if (str != null) {
                    sb2.append(str);
                    sb2.append(":");
                }
                sb2.append(this.f2697c);
                sb2.append('>');
                return sb2.toString();
            case 6:
                return "<" + this.f2696b + ">: " + this.f2697c;
        }
    }

    public /* synthetic */ h(String str, String str2, int i10) {
        this.f2695a = i10;
        this.f2696b = str;
        this.f2697c = str2;
    }

    public h(qh.b bVar, String str) {
        this.f2695a = 6;
        bVar.getClass();
        this.f2696b = bVar.b0();
        this.f2697c = str;
    }

    public h(qh.b bVar, String str, Object[] objArr) {
        this.f2695a = 6;
        bVar.getClass();
        this.f2696b = bVar.b0();
        this.f2697c = String.format(str, objArr);
    }

    @Override // kf.e
    public void f(h hVar) {
    }

    @Override // kf.e
    public void g(h hVar) {
    }

    @Override // kf.e
    public void i(h hVar) {
    }
}
