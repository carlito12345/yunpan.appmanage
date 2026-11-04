package y2;

import a9.o;
import j$.util.Objects;
import java.util.List;
import java.util.Map;
import r1.a0;
import r1.c0;
import r1.p;
import ta.q;

/* loaded from: classes.dex */
public final class b implements c0 {

    /* renamed from: a, reason: collision with root package name */
    public final int f18885a;

    /* renamed from: b, reason: collision with root package name */
    public final String f18886b;

    /* renamed from: c, reason: collision with root package name */
    public final String f18887c;

    /* renamed from: d, reason: collision with root package name */
    public final String f18888d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f18889e;

    /* renamed from: f, reason: collision with root package name */
    public final int f18890f;

    public b(int i10, int i11, String str, String str2, String str3, boolean z) {
        o.k(i11 == -1 || i11 > 0);
        this.f18885a = i10;
        this.f18886b = str;
        this.f18887c = str2;
        this.f18888d = str3;
        this.f18889e = z;
        this.f18890f = i11;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00c6  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:57:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static b d(Map map) throws NumberFormatException {
        boolean z;
        int i10;
        List list;
        String str;
        List list2;
        String str2;
        List list3;
        String str3;
        List list4;
        boolean zEquals;
        List list5;
        int i11;
        int i12;
        List list6 = (List) map.get("icy-br");
        boolean z4 = true;
        int i13 = -1;
        if (list6 != null) {
            String str4 = (String) list6.get(0);
            try {
                i12 = Integer.parseInt(str4) * 1000;
                if (i12 > 0) {
                    z = true;
                } else {
                    try {
                        u1.a.p("Invalid bitrate: " + str4);
                        z = false;
                        i12 = -1;
                    } catch (NumberFormatException unused) {
                        q.t("Invalid bitrate header: ", str4);
                        i10 = i12;
                        z = false;
                        list = (List) map.get("icy-genre");
                        if (list == null) {
                        }
                        list2 = (List) map.get("icy-name");
                        if (list2 == null) {
                        }
                        list3 = (List) map.get("icy-url");
                        if (list3 == null) {
                        }
                        list4 = (List) map.get("icy-pub");
                        if (list4 == null) {
                        }
                        list5 = (List) map.get("icy-metaint");
                        if (list5 == null) {
                        }
                        if (z) {
                        }
                    }
                }
                i10 = i12;
            } catch (NumberFormatException unused2) {
                i12 = -1;
            }
        } else {
            z = false;
            i10 = -1;
        }
        list = (List) map.get("icy-genre");
        if (list == null) {
            str = (String) list.get(0);
            z = true;
        } else {
            str = null;
        }
        list2 = (List) map.get("icy-name");
        if (list2 == null) {
            str2 = (String) list2.get(0);
            z = true;
        } else {
            str2 = null;
        }
        list3 = (List) map.get("icy-url");
        if (list3 == null) {
            str3 = (String) list3.get(0);
            z = true;
        } else {
            str3 = null;
        }
        list4 = (List) map.get("icy-pub");
        if (list4 == null) {
            zEquals = ((String) list4.get(0)).equals("1");
            z = true;
        } else {
            zEquals = false;
        }
        list5 = (List) map.get("icy-metaint");
        if (list5 == null) {
            String str5 = (String) list5.get(0);
            try {
                int i14 = Integer.parseInt(str5);
                if (i14 > 0) {
                    i13 = i14;
                } else {
                    try {
                        u1.a.p("Invalid metadata interval: " + str5);
                        z4 = z;
                    } catch (NumberFormatException unused3) {
                        i13 = i14;
                        q.t("Invalid metadata interval: ", str5);
                        i11 = i13;
                        if (z) {
                        }
                    }
                }
                z = z4;
            } catch (NumberFormatException unused4) {
            }
            i11 = i13;
        } else {
            i11 = -1;
        }
        if (z) {
            return new b(i10, i11, str, str2, str3, zEquals);
        }
        return null;
    }

    @Override // r1.c0
    public final /* synthetic */ p a() {
        return null;
    }

    @Override // r1.c0
    public final void b(a0 a0Var) {
        String str = this.f18887c;
        if (str != null) {
            a0Var.f13392x = str;
        }
        String str2 = this.f18886b;
        if (str2 != null) {
            a0Var.f13391w = str2;
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
        if (obj == null || b.class != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        return this.f18885a == bVar.f18885a && Objects.equals(this.f18886b, bVar.f18886b) && Objects.equals(this.f18887c, bVar.f18887c) && Objects.equals(this.f18888d, bVar.f18888d) && this.f18889e == bVar.f18889e && this.f18890f == bVar.f18890f;
    }

    public final int hashCode() {
        int i10 = (527 + this.f18885a) * 31;
        String str = this.f18886b;
        int iHashCode = (i10 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.f18887c;
        int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.f18888d;
        return ((((iHashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31) + (this.f18889e ? 1 : 0)) * 31) + this.f18890f;
    }

    public final String toString() {
        return "IcyHeaders: name=\"" + this.f18887c + "\", genre=\"" + this.f18886b + "\", bitrate=" + this.f18885a + ", metadataInterval=" + this.f18890f;
    }
}
