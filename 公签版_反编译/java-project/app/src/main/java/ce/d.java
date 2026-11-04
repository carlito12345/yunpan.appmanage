package ce;

import java.io.IOException;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class d {

    /* renamed from: c, reason: collision with root package name */
    public static final de.d f3039c = de.d.r();

    /* renamed from: d, reason: collision with root package name */
    public static final boolean f3040d = wd.a.a("jcifs.smb1.smb.client.dfs.strictView", false);

    /* renamed from: e, reason: collision with root package name */
    public static final long f3041e;

    /* renamed from: f, reason: collision with root package name */
    public static final boolean f3042f;

    /* renamed from: g, reason: collision with root package name */
    public static final c f3043g;

    /* renamed from: a, reason: collision with root package name */
    public c f3044a = null;

    /* renamed from: b, reason: collision with root package name */
    public c f3045b = null;

    static {
        long j10;
        String property = wd.a.f17870a.getProperty("jcifs.smb1.smb.client.dfs.ttl");
        if (property != null) {
            try {
                j10 = Long.parseLong(property);
            } catch (NumberFormatException e7) {
                if (de.d.f4630b > 0) {
                    e7.printStackTrace(wd.a.f17871b);
                }
            }
        } else {
            j10 = 300;
        }
        f3041e = j10;
        f3042f = wd.a.a("jcifs.smb1.smb.client.dfs.disabled", false);
        f3043g = new c(0L);
    }

    public static b1 a(String str, p pVar) throws IOException {
        if (f3042f) {
            return null;
        }
        try {
            e eVarM = b1.o(wd.c.b(str, true), 0).m(pVar, "\\" + str, 1);
            if (eVarM != null) {
                e eVar = eVarM;
                do {
                    try {
                        return b1.o(wd.c.b(eVar.f3048e, false), 0);
                    } catch (IOException e7) {
                        eVar = eVar.f3053j;
                    }
                } while (eVar != eVarM);
                throw e7;
            }
        } catch (IOException e10) {
            if (de.d.f4630b >= 3) {
                e10.printStackTrace(f3039c);
            }
            if (f3040d && (e10 instanceof s)) {
                throw ((s) e10);
            }
        }
        return null;
    }

    public static e b(b1 b1Var, String str, String str2, String str3, p pVar) throws s {
        e eVarM;
        if (f3042f) {
            return null;
        }
        try {
            String str4 = "\\" + str + "\\" + str2;
            if (str3 != null) {
                str4 = str4 + str3;
            }
            eVarM = b1Var.m(pVar, str4, 0);
        } catch (IOException e7) {
            if (de.d.f4630b >= 4) {
                e7.printStackTrace(f3039c);
            }
            if (f3040d && (e7 instanceof s)) {
                throw ((s) e7);
            }
        }
        if (eVarM != null) {
            return eVarM;
        }
        return null;
    }

    public final HashMap c(p pVar) throws s {
        if (!f3042f && pVar.f3105a != "?") {
            if (this.f3044a != null && System.currentTimeMillis() > this.f3044a.f3027a) {
                this.f3044a = null;
            }
            c cVar = this.f3044a;
            if (cVar != null) {
                return cVar.f3028b;
            }
            try {
                b1 b1VarO = b1.o(wd.c.b(pVar.f3105a, true), 0);
                c cVar2 = new c(f3041e * 10);
                e eVarM = b1VarO.m(pVar, "", 0);
                if (eVarM != null) {
                    e eVar = eVarM;
                    do {
                        cVar2.f3028b.put(eVar.f3048e.toLowerCase(), new HashMap());
                        eVar = eVar.f3053j;
                    } while (eVar != eVarM);
                    this.f3044a = cVar2;
                    return cVar2.f3028b;
                }
            } catch (IOException e7) {
                if (de.d.f4630b >= 3) {
                    e7.printStackTrace(f3039c);
                }
                if (f3040d && (e7 instanceof s)) {
                    throw ((s) e7);
                }
            }
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0100 A[Catch: all -> 0x0047, TryCatch #0 {all -> 0x0047, blocks: (B:4:0x0007, B:6:0x0010, B:9:0x001c, B:11:0x0024, B:13:0x0030, B:15:0x003c, B:17:0x0042, B:21:0x004c, B:25:0x0054, B:27:0x005a, B:29:0x006d, B:30:0x0075, B:32:0x007e, B:34:0x0082, B:35:0x0087, B:45:0x00a3, B:47:0x00af, B:49:0x00b5, B:53:0x00c1, B:57:0x00c9, B:59:0x00cf, B:64:0x00f0, B:66:0x00f4, B:68:0x00fa, B:69:0x00fc, B:71:0x0100, B:72:0x0109, B:74:0x012a, B:75:0x0139, B:76:0x0149, B:78:0x014f, B:80:0x015f, B:90:0x017e, B:81:0x0164, B:83:0x016b, B:85:0x0171, B:38:0x0091, B:39:0x0097), top: B:100:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x012a A[Catch: all -> 0x0047, TryCatch #0 {all -> 0x0047, blocks: (B:4:0x0007, B:6:0x0010, B:9:0x001c, B:11:0x0024, B:13:0x0030, B:15:0x003c, B:17:0x0042, B:21:0x004c, B:25:0x0054, B:27:0x005a, B:29:0x006d, B:30:0x0075, B:32:0x007e, B:34:0x0082, B:35:0x0087, B:45:0x00a3, B:47:0x00af, B:49:0x00b5, B:53:0x00c1, B:57:0x00c9, B:59:0x00cf, B:64:0x00f0, B:66:0x00f4, B:68:0x00fa, B:69:0x00fc, B:71:0x0100, B:72:0x0109, B:74:0x012a, B:75:0x0139, B:76:0x0149, B:78:0x014f, B:80:0x015f, B:90:0x017e, B:81:0x0164, B:83:0x016b, B:85:0x0171, B:38:0x0091, B:39:0x0097), top: B:100:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x014f A[Catch: all -> 0x0047, TryCatch #0 {all -> 0x0047, blocks: (B:4:0x0007, B:6:0x0010, B:9:0x001c, B:11:0x0024, B:13:0x0030, B:15:0x003c, B:17:0x0042, B:21:0x004c, B:25:0x0054, B:27:0x005a, B:29:0x006d, B:30:0x0075, B:32:0x007e, B:34:0x0082, B:35:0x0087, B:45:0x00a3, B:47:0x00af, B:49:0x00b5, B:53:0x00c1, B:57:0x00c9, B:59:0x00cf, B:64:0x00f0, B:66:0x00f4, B:68:0x00fa, B:69:0x00fc, B:71:0x0100, B:72:0x0109, B:74:0x012a, B:75:0x0139, B:76:0x0149, B:78:0x014f, B:80:0x015f, B:90:0x017e, B:81:0x0164, B:83:0x016b, B:85:0x0171, B:38:0x0091, B:39:0x0097), top: B:100:0x0007 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final synchronized e d(String str, String str2, String str3, p pVar) {
        String lowerCase;
        e eVarB;
        c cVar;
        e eVar;
        b1 b1VarA;
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (!f3042f) {
                String lowerCase2 = str2;
                if (!lowerCase2.equals("IPC$")) {
                    HashMap mapC = c(pVar);
                    if (mapC != null) {
                        lowerCase = str.toLowerCase();
                        HashMap map = (HashMap) mapC.get(lowerCase);
                        if (map != null) {
                            lowerCase2 = str2.toLowerCase();
                            c cVar2 = (c) map.get(lowerCase2);
                            if (cVar2 != null && jCurrentTimeMillis > cVar2.f3027a) {
                                map.remove(lowerCase2);
                                cVar2 = null;
                            }
                            if (cVar2 == null) {
                                b1 b1VarA2 = a(lowerCase, pVar);
                                if (b1VarA2 == null) {
                                    return null;
                                }
                                eVarB = b(b1VarA2, lowerCase, lowerCase2, str3, pVar);
                                b1VarA = b1VarA2;
                                if (eVarB != null) {
                                    int length = lowerCase.length() + 2 + lowerCase2.length();
                                    c cVar3 = new c(0L);
                                    e eVar2 = eVarB;
                                    do {
                                        if (str3 == null) {
                                            eVar2.f3054k = cVar3.f3028b;
                                            eVar2.l = "\\";
                                        }
                                        eVar2.f3046c -= length;
                                        eVar2 = eVar2.f3053j;
                                    } while (eVar2 != eVarB);
                                    String str4 = eVarB.l;
                                    if (str4 != null) {
                                        cVar3.f3028b.put(str4, eVarB);
                                    }
                                    map.put(lowerCase2, cVar3);
                                    cVar2 = cVar3;
                                    b1VarA = b1VarA2;
                                } else if (str3 == null) {
                                    map.put(lowerCase2, f3043g);
                                    b1VarA = b1VarA2;
                                }
                            } else {
                                if (cVar2 == f3043g) {
                                    cVar2 = null;
                                    eVar = null;
                                } else {
                                    eVar = null;
                                }
                                eVarB = eVar;
                                b1VarA = eVar;
                            }
                            if (cVar2 != null) {
                                e eVar3 = (e) cVar2.f3028b.get("\\");
                                if (eVar3 == null || jCurrentTimeMillis <= eVar3.f3052i) {
                                    eVarB = eVar3;
                                } else {
                                    cVar2.f3028b.remove("\\");
                                    eVarB = null;
                                }
                                if (eVarB == null) {
                                    if (b1VarA == 0 && (b1VarA = a(lowerCase, pVar)) == 0) {
                                        return null;
                                    }
                                    eVarB = b(b1VarA, lowerCase, lowerCase2, str3, pVar);
                                    if (eVarB != null) {
                                        eVarB.f3046c -= (lowerCase.length() + 2) + lowerCase2.length();
                                        eVarB.f3050g = "\\";
                                        cVar2.f3028b.put("\\", eVarB);
                                    }
                                }
                            }
                        }
                        if (eVarB == null && str3 != null) {
                            cVar = this.f3045b;
                            if (cVar != null && jCurrentTimeMillis > cVar.f3027a) {
                                this.f3045b = null;
                            }
                            if (this.f3045b == null) {
                                this.f3045b = new c(0L);
                            }
                            String str5 = "\\" + lowerCase + "\\" + lowerCase2;
                            if (!str3.equals("\\")) {
                                str5 = str5 + str3;
                            }
                            String lowerCase3 = str5.toLowerCase();
                            for (String str6 : this.f3045b.f3028b.keySet()) {
                                int length2 = str6.length();
                                if (length2 == lowerCase3.length() ? str6.equals(lowerCase3) : length2 < lowerCase3.length() && str6.regionMatches(0, lowerCase3, 0, length2) && lowerCase3.charAt(length2) == '\\') {
                                    eVarB = (e) this.f3045b.f3028b.get(str6);
                                }
                            }
                        }
                        return eVarB;
                    }
                    lowerCase = str;
                    eVarB = null;
                    if (eVarB == null) {
                        cVar = this.f3045b;
                        if (cVar != null) {
                            this.f3045b = null;
                        }
                        if (this.f3045b == null) {
                        }
                        String str52 = "\\" + lowerCase + "\\" + lowerCase2;
                        if (!str3.equals("\\")) {
                        }
                        String lowerCase32 = str52.toLowerCase();
                        while (r2.hasNext()) {
                        }
                    }
                    return eVarB;
                }
            }
            return null;
        } finally {
        }
    }
}
