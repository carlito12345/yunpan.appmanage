package vd;

import j$.util.concurrent.ConcurrentHashMap;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* loaded from: classes.dex */
public final class d implements vc.h {

    /* renamed from: g, reason: collision with root package name */
    public static final bd.a f16812g = new bd.a();

    /* renamed from: h, reason: collision with root package name */
    public static final Logger f16813h = LoggerFactory.getLogger((Class<?>) d.class);

    /* renamed from: a, reason: collision with root package name */
    public b f16814a = null;

    /* renamed from: b, reason: collision with root package name */
    public final Object f16815b = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final HashMap f16816c = new HashMap();

    /* renamed from: d, reason: collision with root package name */
    public final Object f16817d = new Object();

    /* renamed from: e, reason: collision with root package name */
    public b f16818e = null;

    /* renamed from: f, reason: collision with root package name */
    public final Object f16819f = new Object();

    public static void a(ConcurrentHashMap concurrentHashMap) {
        for (Map.Entry entry : concurrentHashMap.entrySet()) {
            String str = "Domain " + ((String) entry.getKey());
            Logger logger = f16813h;
            logger.trace(str);
            for (Map.Entry entry2 : ((Map) entry.getValue()).entrySet()) {
                logger.trace("  Root " + ((String) entry2.getKey()));
                if (((b) entry2.getValue()).f16800b != null) {
                    for (Map.Entry entry3 : ((b) entry2.getValue()).f16800b.entrySet()) {
                        bd.b bVar = (bd.b) entry3.getValue();
                        bd.b bVar2 = bVar;
                        do {
                            logger.trace("    " + ((String) entry3.getKey()) + " => " + entry3.getValue());
                            bVar2 = ((bd.a) bVar2).f2774i;
                        } while (bVar2 != bVar);
                    }
                }
            }
        }
    }

    public static bd.a d(vc.b bVar, c0 c0Var, String str, String str2, String str3, String str4, String str5) throws IllegalAccessException, p, IllegalArgumentException, InvocationTargetException {
        Logger logger = f16813h;
        if (((wc.a) bVar.e()).M) {
            return null;
        }
        String strK = ta.q.k("\\", str, "\\", str4);
        if (str5 != null) {
            strK = g.b.j(strK, str5);
        }
        try {
            if (logger.isDebugEnabled()) {
                logger.debug("Fetching referral for " + strK);
            }
            bd.a aVarK0 = ((b0) c0Var).k0(bVar, strK, str3, str2, 0);
            if (aVarK0 != null) {
                if (logger.isDebugEnabled()) {
                    logger.debug("Referral for " + strK + ": " + aVarK0);
                }
                aVarK0.e();
                return aVarK0;
            }
        } catch (IOException e7) {
            if (logger.isDebugEnabled()) {
                logger.debug("Getting referral for " + strK + " failed", (Throwable) e7);
            }
            if (((wc.a) bVar.e()).O && (e7 instanceof p)) {
                throw ((p) e7);
            }
        }
        return null;
    }

    public static b0 e(vc.b bVar, bd.b bVar2) throws IOException {
        if (bVar2 != null) {
            bd.b bVar3 = bVar2;
            do {
                try {
                    String str = ((bd.a) bVar3).f2768c;
                    Logger logger = f16813h;
                    if (str == null || ((bd.a) bVar3).f2768c.isEmpty()) {
                        logger.debug("No server name in referral");
                        return null;
                    }
                    try {
                        b0 b0VarC = ((d0) bVar.b()).c(bVar, ((bd.a) bVar3).f2768c, 0, false, !((j) bVar.g()).d() && ((wc.a) bVar.e()).f17836g && ((wc.a) bVar.e()).f17840i);
                        b0VarC.y0(b0.class);
                        b0VarC.j0();
                        return b0VarC;
                    } catch (IOException e7) {
                        logger.debug("Connection failed " + ((bd.a) bVar3).f2768c, (Throwable) e7);
                        bVar3 = ((bd.a) bVar3).f2774i;
                    }
                } catch (IOException e10) {
                    if (((wc.a) bVar.e()).O && (e10 instanceof p)) {
                        throw ((p) e10);
                    }
                }
            } while (bVar3 != bVar2);
            throw e7;
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v23, types: [bd.b] */
    public final b0 b(vc.b bVar, String str) throws IOException {
        b bVar2;
        b bVar3;
        b0 b0Var;
        Throwable th2;
        vc.b bVar4;
        bd.a aVar = null;
        if (((wc.a) bVar.e()).M) {
            return null;
        }
        if (((wc.a) bVar.e()).M) {
            bVar4 = bVar;
        } else {
            String lowerCase = str.toLowerCase(Locale.ROOT);
            synchronized (this.f16817d) {
                try {
                    bVar2 = (b) this.f16816c.get(lowerCase);
                    if (bVar2 != null && System.currentTimeMillis() > bVar2.f16799a) {
                        bVar2 = null;
                    }
                } catch (IOException e7) {
                    Logger logger = f16813h;
                    if (logger.isDebugEnabled()) {
                        logger.debug("Getting domain controller for " + str + " failed", (Throwable) e7);
                    }
                    bVar3.f16800b.put("dc", f16812g);
                    if (((wc.a) bVar.e()).O && (e7 instanceof p)) {
                        throw ((p) e7);
                    }
                } finally {
                }
                if (bVar2 != null) {
                    ?? r02 = (bd.b) bVar2.f16800b.get("dc");
                    if (r02 != f16812g) {
                        bVar4 = bVar;
                        aVar = r02;
                    }
                } else {
                    bVar3 = new b(((wc.a) bVar.e()).N);
                    b0 b0VarC = ((d0) bVar.b()).c(bVar, str, 0, false, false);
                    b0VarC.y0(c0.class);
                    try {
                        try {
                            synchronized (b0VarC) {
                                try {
                                    bd.a aVarK0 = b0VarC.k0(bVar.d(), "\\" + lowerCase, str, lowerCase, 1);
                                    if (aVarK0 != null) {
                                        Logger logger2 = f16813h;
                                        if (logger2.isDebugEnabled()) {
                                            logger2.debug("Got DC referral " + aVarK0);
                                        }
                                        aVarK0.e();
                                        bVar3.f16800b.put("dc", aVarK0);
                                        this.f16816c.put(lowerCase, bVar3);
                                        b0VarC.Y();
                                        aVar = aVarK0;
                                    } else {
                                        b0VarC.Y();
                                        bVar3.f16800b.put("dc", f16812g);
                                        this.f16816c.put(lowerCase, bVar3);
                                    }
                                } catch (Throwable th3) {
                                    th = th3;
                                    b0Var = b0VarC;
                                    try {
                                        throw th;
                                    } catch (Throwable th4) {
                                        th = th4;
                                        th2 = th;
                                        try {
                                            b0Var.Y();
                                            throw th2;
                                        } catch (Throwable th5) {
                                            try {
                                                Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th2, th5);
                                                throw th2;
                                            } catch (Exception unused) {
                                                throw th2;
                                            }
                                        }
                                    }
                                }
                            }
                        } catch (Throwable th6) {
                            th = th6;
                        }
                    } catch (Throwable th7) {
                        th = th7;
                        b0Var = b0VarC;
                        th2 = th;
                        b0Var.Y();
                        throw th2;
                    }
                }
                bVar4 = bVar;
            }
        }
        b0 b0VarE = e(bVar4, aVar);
        if (b0VarE == null) {
            Logger logger3 = f16813h;
            if (logger3.isDebugEnabled()) {
                logger3.debug("Failed to connect to domain controller for " + str);
            }
        }
        return b0VarE;
    }

    /* JADX WARN: Removed duplicated region for block: B:181:0x0167 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:196:? A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final bd.b c(vc.b bVar, String str, String str2, String str3, long j10, Map map) throws Throwable {
        b bVar2;
        bd.b bVar3;
        bd.b bVar4;
        b0 b0Var;
        int i10;
        Throwable th2;
        b0 b0Var2;
        bd.a aVarD;
        String str4;
        Logger logger = f16813h;
        if (logger.isTraceEnabled()) {
            logger.trace("Is a domain referral for " + str);
        }
        if (logger.isTraceEnabled()) {
            logger.trace("Resolving root " + str2);
        }
        b bVar5 = (b) map.get(str2);
        if (bVar5 == null || j10 <= bVar5.f16799a) {
            bVar2 = bVar5;
        } else {
            if (logger.isDebugEnabled()) {
                logger.debug("Removing expired " + bVar5.f16800b);
            }
            map.remove(str2);
            bVar2 = null;
        }
        if (bVar2 == null) {
            logger.trace("Loadings roots");
            b0 b0VarB = b(bVar, str);
            if (b0VarB == null) {
                try {
                    if (logger.isDebugEnabled()) {
                        logger.debug("Failed to get domain controller for " + str);
                    }
                    if (b0VarB != null) {
                        b0VarB.Y();
                    }
                    aVarD = null;
                } catch (Throwable th3) {
                    th2 = th3;
                    b0Var2 = b0VarB;
                    if (b0Var2 != null) {
                        throw th2;
                    }
                    try {
                        b0Var2.Y();
                        throw th2;
                    } catch (Throwable th4) {
                        try {
                            Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th2, th4);
                            throw th2;
                        } catch (Exception unused) {
                            throw th2;
                        }
                    }
                }
            } else {
                try {
                    b0VarB.y0(c0.class);
                    try {
                        try {
                            synchronized (b0VarB) {
                                try {
                                    b0VarB.j0();
                                    str4 = b0VarB.f16811y;
                                } catch (IOException e7) {
                                    f16813h.warn("Failed to connect to domain controller", (Throwable) e7);
                                    str4 = str;
                                }
                                b0VarB = null;
                                aVarD = d(bVar, b0VarB, str, str, str4, str2, null);
                            }
                            b0VarB.Y();
                            Logger logger2 = f16813h;
                            if (logger2.isTraceEnabled()) {
                                logger2.trace("Have DC referral " + aVarD);
                            }
                            if (aVarD != null && str.equals(aVarD.f2768c) && str2.equals(aVarD.f2769d)) {
                                logger2.warn("Dropping self-referential referral " + aVarD);
                                aVarD = null;
                            }
                        } catch (Throwable th5) {
                            th = th5;
                            try {
                                throw th;
                            } catch (Throwable th6) {
                                th = th6;
                                th2 = th;
                                if (b0Var2 != null) {
                                }
                            }
                        }
                    } catch (Throwable th7) {
                        th = th7;
                        b0Var2 = b0VarB;
                        throw th;
                    }
                } catch (Throwable th8) {
                    th = th8;
                    b0Var2 = b0VarB;
                }
            }
            if (aVarD != null) {
                b bVar6 = new b(((wc.a) bVar.e()).N);
                bVar6.f16800b.put("\\", aVarD);
                bd.a aVar = aVarD;
                do {
                    aVar.f2775j = bVar6.f16800b;
                    aVar.f2776k = "\\";
                    aVar = aVar.f2774i;
                } while (aVar != aVarD);
                Logger logger3 = f16813h;
                if (logger3.isDebugEnabled()) {
                    logger3.debug("Have referral " + aVarD);
                }
                map.put(str2, bVar6);
                bVar2 = bVar6;
                bVar3 = aVarD;
            } else {
                map.put(str2, new c(((wc.a) bVar.e()).N));
                bVar3 = aVarD;
            }
        } else if (bVar2 instanceof c) {
            bVar3 = null;
            bVar2 = null;
        } else {
            bVar3 = (bd.b) bVar2.f16800b.get("\\");
        }
        if (bVar2 == null) {
            return bVar3;
        }
        String strSubstring = "\\";
        String strL = (str3 == null || str3.length() <= 1) ? "\\" : str3.charAt(str3.length() - 1) == '\\' ? android.support.v4.media.session.a.l(1, 0, str3) : str3;
        Logger logger4 = f16813h;
        if (logger4.isTraceEnabled()) {
            logger4.trace("Initial link is " + strL);
        }
        if (bVar3 == null || !strL.equals(((bd.a) bVar3).f2770e)) {
            while (true) {
                bVar4 = (bd.b) bVar2.f16800b.get(strL);
                if (bVar4 == null) {
                    int iLastIndexOf = strL.lastIndexOf(92);
                    if (iLastIndexOf > 0) {
                        strL = strL.substring(0, iLastIndexOf);
                    } else if (logger4.isTraceEnabled()) {
                        logger4.trace("Not found ".concat(strL));
                    }
                } else if (logger4.isTraceEnabled()) {
                    logger4.trace("Found at " + strL);
                }
            }
        } else {
            bVar4 = bVar3;
        }
        String str5 = strL;
        if (bVar4 != null && j10 > ((bd.a) bVar4).f2772g) {
            if (logger4.isTraceEnabled()) {
                logger4.trace("Expiring links " + str5);
            }
            bVar2.f16800b.remove(str5);
            bVar4 = null;
        }
        if (bVar4 != null) {
            if (logger4.isTraceEnabled()) {
                logger4.trace("Have cached referral for " + ((bd.a) bVar4).f2770e + " " + bVar4);
            }
            return bVar4;
        }
        if (((wc.a) bVar.e()).P) {
            ((bd.a) bVar3).b(str);
        }
        b0 b0VarE = e(bVar, bVar3);
        if (b0VarE == null) {
            if (b0VarE == null) {
                return null;
            }
            b0VarE.Y();
            return null;
        }
        try {
            b0Var = b0VarE;
            try {
                bd.a aVarD2 = d(bVar, b0VarE, str, str, b0VarE.f16811y, str2, str3);
                if (aVarD2 != null) {
                    if (((wc.a) bVar.e()).P) {
                        aVarD2.b(str);
                    }
                    int length = str.length() + 2 + str2.length();
                    int i11 = aVarD2.f2766a;
                    if (length > i11) {
                        throw new IllegalArgumentException("Stripping more than consumed");
                    }
                    int i12 = i11 - length;
                    aVarD2.f2766a = i12;
                    if (i12 > (str3 != null ? str3.length() : 0)) {
                        logger4.error("Consumed more than we provided");
                    }
                    if (str3 != null && (i10 = aVarD2.f2766a) > 0) {
                        strSubstring = str3.substring(0, i10);
                    }
                    aVarD2.f2770e = strSubstring;
                    if (logger4.isTraceEnabled()) {
                        logger4.trace("Have referral " + aVarD2);
                    }
                    bVar2.f16800b.put(strSubstring, aVarD2);
                } else {
                    logger4.debug("No referral found for " + str5);
                }
                b0Var.Y();
                return aVarD2;
            } catch (Throwable th9) {
                th = th9;
                Throwable th10 = th;
                try {
                    b0Var.Y();
                    throw th10;
                } catch (Throwable th11) {
                    try {
                        Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th10, th11);
                        throw th10;
                    } catch (Exception unused2) {
                        throw th10;
                    }
                }
            }
        } catch (Throwable th12) {
            th = th12;
            b0Var = b0VarE;
        }
    }

    public final bd.b f(String str, String str2, String str3, long j10) {
        b bVar;
        boolean zStartsWith;
        Logger logger = f16813h;
        if (logger.isTraceEnabled()) {
            logger.trace("No match for domain based root, checking standalone " + str);
        }
        synchronized (this.f16819f) {
            try {
                bVar = this.f16818e;
                if (bVar == null || j10 > bVar.f16799a) {
                    bVar = new b(0L);
                }
                this.f16818e = bVar;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        String strK = ta.q.k("\\", str, "\\", str2);
        if (!str3.equals("\\")) {
            strK = g.b.j(strK, str3);
        }
        String lowerCase = strK.toLowerCase(Locale.ROOT);
        int length = lowerCase.length();
        for (String str4 : bVar.f16800b.keySet()) {
            int length2 = str4.length();
            if (length2 == length) {
                zStartsWith = str4.equals(lowerCase);
            } else if (length2 < length) {
                zStartsWith = lowerCase.startsWith(str4);
            } else {
                Logger logger2 = f16813h;
                if (logger2.isTraceEnabled()) {
                    logger2.trace(lowerCase + " vs. " + str4);
                }
                zStartsWith = false;
            }
            if (zStartsWith) {
                Logger logger3 = f16813h;
                if (logger3.isDebugEnabled()) {
                    logger3.debug("Matched ".concat(str4));
                }
                return (bd.b) bVar.f16800b.get(str4);
            }
        }
        Logger logger4 = f16813h;
        if (!logger4.isTraceEnabled()) {
            return null;
        }
        logger4.trace("No match for ".concat(lowerCase));
        return null;
    }

    public final ConcurrentHashMap g(vc.b bVar) throws IllegalAccessException, NoSuchMethodException, p, SecurityException, IllegalArgumentException, InvocationTargetException {
        String str;
        b0 b0Var;
        ConcurrentHashMap concurrentHashMap;
        bd.a aVarK0;
        Logger logger = f16813h;
        if (((wc.a) bVar.e()).M || ((j) bVar.g()).f16875b == null || ((j) bVar.g()).f16875b.isEmpty()) {
            return null;
        }
        if (this.f16814a != null && System.currentTimeMillis() > this.f16814a.f16799a) {
            this.f16814a = null;
        }
        b bVar2 = this.f16814a;
        if (bVar2 != null) {
            return bVar2.f16800b;
        }
        try {
            str = ((j) bVar.g()).f16875b;
        } catch (IOException e7) {
            e = e7;
        }
        try {
            b0 b0VarB = b(bVar, str);
            try {
                b bVar3 = new b(((wc.a) bVar.e()).N * 10);
                ConcurrentHashMap concurrentHashMap2 = bVar3.f16800b;
                if (b0VarB != null) {
                    b0VarB.y0(c0.class);
                    b0Var = b0VarB;
                } else {
                    b0Var = null;
                }
                if (b0Var != null) {
                    concurrentHashMap = concurrentHashMap2;
                    aVarK0 = b0Var.k0(bVar.d(), "", b0Var.f16811y, str, 0);
                } else {
                    concurrentHashMap = concurrentHashMap2;
                    aVarK0 = null;
                }
                if (aVarK0 == null) {
                    if (b0VarB != null) {
                        b0VarB.Y();
                    }
                    return null;
                }
                aVarK0.e();
                bd.a aVar = aVarK0;
                do {
                    String lowerCase = aVar.f2768c.toLowerCase();
                    concurrentHashMap.put(lowerCase, new HashMap());
                    if (logger.isTraceEnabled()) {
                        logger.trace("Inserting cache entry for domain " + lowerCase + ": " + aVar);
                    }
                    aVar = aVar.f2774i;
                } while (aVar != aVarK0);
                this.f16814a = bVar3;
                if (b0VarB != null) {
                    b0VarB.Y();
                }
                return concurrentHashMap;
            } finally {
            }
        } catch (IOException e10) {
            e = e10;
            if (logger.isDebugEnabled()) {
                logger.debug("getting trusted domains failed: " + ((j) bVar.g()).f16875b, (Throwable) e);
            }
            this.f16814a = new b(((wc.a) bVar.e()).N * 10);
            if (((wc.a) bVar.e()).O && (e instanceof p)) {
                throw ((p) e);
            }
            return this.f16814a.f16800b;
        }
    }

    public final bd.b h(vc.b bVar, String str, String str2, String str3, int i10) {
        String str4;
        bd.b bVarF;
        bd.a aVar;
        String str5;
        bd.a aVarA = null;
        if (((wc.a) bVar.e()).M || str2 == null || str2.equals("IPC$") || i10 <= 0) {
            return null;
        }
        if (str == null) {
            return null;
        }
        String lowerCase = str.toLowerCase();
        Logger logger = f16813h;
        if (logger.isTraceEnabled()) {
            logger.trace(ta.q.l("Resolving \\", lowerCase, "\\", str2, str3 != null ? str3 : ""));
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        synchronized (this.f16815b) {
            try {
                ConcurrentHashMap concurrentHashMapG = g(bVar);
                if (concurrentHashMapG != null) {
                    if (logger.isTraceEnabled()) {
                        a(concurrentHashMapG);
                    }
                    String lowerCase2 = str2.toLowerCase();
                    Map map = (Map) concurrentHashMapG.get(lowerCase);
                    bVarF = map != null ? c(bVar, lowerCase, lowerCase2, str3, jCurrentTimeMillis, map) : null;
                    if (((wc.a) bVar.e()).P && (bVarF instanceof bd.a)) {
                        ((bd.a) bVarF).b(lowerCase);
                    }
                    str4 = lowerCase2;
                } else {
                    str4 = str2;
                    bVarF = null;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (bVarF == null && str3 != null) {
            bVarF = f(lowerCase, str4, str3, jCurrentTimeMillis);
        }
        if (bVarF == null) {
            return bVarF;
        }
        bd.a aVar2 = (bd.a) bVarF;
        if (!aVar2.f2777m) {
            return bVarF;
        }
        do {
            aVar = aVar2.f2774i;
            if (aVar2.f2771f != null) {
                str5 = "\\" + aVar2.f2771f;
            } else {
                str5 = "";
            }
            StringBuilder sbM = g.b.m(str5);
            sbM.append(str3 != null ? str3.substring(aVar.f2766a) : "");
            String string = sbM.toString();
            Logger logger2 = f16813h;
            if (logger2.isDebugEnabled()) {
                String str6 = aVar.f2768c;
                String str7 = aVar.f2769d;
                String str8 = aVar.f2771f;
                StringBuilder sb2 = new StringBuilder("Intermediate referral, server ");
                sb2.append(str6);
                sb2.append(" share ");
                sb2.append(str7);
                sb2.append(" refPath ");
                android.support.v4.media.session.a.C(sb2, str8, " origPath ", str3, " nextPath ");
                sb2.append(string);
                logger2.debug(sb2.toString());
            }
            bd.b bVarH = h(bVar, aVar.f2768c, aVar.f2769d, string, i10 - 1);
            if (bVarH != null) {
                if (logger2.isDebugEnabled()) {
                    logger2.debug("Next referral is " + bVarH);
                }
                if (aVarA == null) {
                    aVarA = aVar.a(bVarH);
                } else {
                    bd.a aVarA2 = aVar.a(bVarH);
                    aVarA2.f2774i = aVarA.f2774i;
                    aVarA.f2774i = aVarA2;
                }
            }
        } while (aVar != bVarF);
        return aVarA != null ? aVarA : bVarF;
    }
}
