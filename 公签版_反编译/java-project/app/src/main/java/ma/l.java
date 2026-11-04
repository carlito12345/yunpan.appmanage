package ma;

/* loaded from: classes.dex */
public final class l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f11047a;

    /* renamed from: b, reason: collision with root package name */
    public final int f11048b;

    /* renamed from: c, reason: collision with root package name */
    public final String f11049c;

    public /* synthetic */ l(int i10, String str, int i11) {
        this.f11047a = i11;
        this.f11048b = i10;
        this.f11049c = str;
    }

    public boolean a() {
        return this.f11048b == 1;
    }

    public String toString() {
        String str;
        switch (this.f11047a) {
            case 0:
                StringBuilder sb2 = new StringBuilder();
                switch (this.f11048b) {
                    case 1:
                        str = "INSTALLED";
                        break;
                    case 2:
                        str = "DENIED";
                        break;
                    case 3:
                        str = "FAILED";
                        break;
                    case 4:
                        str = "BUSY";
                        break;
                    case 5:
                        str = "TIMEOUT";
                        break;
                    case 6:
                        str = "ERROR";
                        break;
                    default:
                        str = "null";
                        break;
                }
                sb2.append(str);
                String str2 = this.f11049c;
                sb2.append(str2 == null ? "" : "：".concat(str2));
                return sb2.toString();
            default:
                return super.toString();
        }
    }
}
