package bd;

import j$.util.Objects;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.Locale;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import ta.q;

/* loaded from: classes.dex */
public final class a implements b {

    /* renamed from: n, reason: collision with root package name */
    public static final Logger f2765n = LoggerFactory.getLogger((Class<?>) a.class);

    /* renamed from: a, reason: collision with root package name */
    public int f2766a;

    /* renamed from: b, reason: collision with root package name */
    public long f2767b;

    /* renamed from: c, reason: collision with root package name */
    public String f2768c;

    /* renamed from: d, reason: collision with root package name */
    public String f2769d;

    /* renamed from: e, reason: collision with root package name */
    public String f2770e;

    /* renamed from: f, reason: collision with root package name */
    public String f2771f;

    /* renamed from: g, reason: collision with root package name */
    public long f2772g;

    /* renamed from: h, reason: collision with root package name */
    public int f2773h;

    /* renamed from: i, reason: collision with root package name */
    public a f2774i = this;

    /* renamed from: j, reason: collision with root package name */
    public ConcurrentHashMap f2775j;

    /* renamed from: k, reason: collision with root package name */
    public String f2776k;
    public String l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f2777m;

    public static a d(e eVar, String str, long j10, int i10) {
        a aVar = new a();
        String[] strArr = new String[4];
        aVar.f2767b = eVar.f2790g;
        int i11 = eVar.f2788e;
        aVar.f2773h = i11;
        aVar.f2772g = j10;
        int i12 = i11 & 2;
        Logger logger = f2765n;
        if (i12 == 2) {
            String[] strArr2 = (String[]) eVar.l;
            if (strArr2.length > 0) {
                aVar.f2768c = strArr2[0].substring(1).toLowerCase();
            } else {
                aVar.f2768c = ((String) eVar.f2794k).substring(1).toLowerCase();
            }
            if (logger.isDebugEnabled()) {
                StringBuilder sb2 = new StringBuilder("Server ");
                android.support.v4.media.session.a.C(sb2, aVar.f2768c, " path ", str, " remain ");
                sb2.append(str.substring(i10));
                sb2.append(" path consumed ");
                sb2.append(i10);
                logger.debug(sb2.toString());
            }
            aVar.f2766a = i10;
        } else {
            if (logger.isDebugEnabled()) {
                StringBuilder sb3 = new StringBuilder("Node ");
                android.support.v4.media.session.a.C(sb3, (String) eVar.f2793j, " path ", str, " remain ");
                sb3.append(str.substring(i10));
                sb3.append(" path consumed ");
                sb3.append(i10);
                logger.debug(sb3.toString());
            }
            String str2 = (String) eVar.f2793j;
            int length = str2.length();
            int i13 = 0;
            int i14 = 0;
            int i15 = 0;
            while (true) {
                if (i13 == 3) {
                    strArr[3] = str2.substring(i15);
                    strArr[3] = str2.substring(i15);
                    break;
                }
                if (i14 == length || str2.charAt(i14) == '\\') {
                    strArr[i13] = str2.substring(i15, i14);
                    i15 = i14 + 1;
                    i13++;
                }
                int i16 = i14 + 1;
                if (i14 >= length) {
                    while (i13 < 4) {
                        strArr[i13] = "";
                        i13++;
                    }
                } else {
                    i14 = i16;
                }
            }
            aVar.f2768c = strArr[1];
            aVar.f2769d = strArr[2];
            aVar.f2771f = strArr[3];
            aVar.f2766a = i10;
            if (str.charAt(i10 - 1) == '\\') {
                if (logger.isDebugEnabled()) {
                    logger.debug("Server consumed trailing slash of request path, adjusting");
                }
                aVar.f2766a--;
            }
            if (logger.isDebugEnabled()) {
                String strSubstring = str.substring(0, i10);
                StringBuilder sbD = da.b.d("Request ", str, " ref path ");
                sbD.append(aVar.f2771f);
                sbD.append(" consumed ");
                sbD.append(aVar.f2766a);
                sbD.append(": ");
                sbD.append(strSubstring);
                logger.debug(sbD.toString());
            }
        }
        return aVar;
    }

    public final a a(b bVar) {
        a aVar = new a();
        a aVar2 = (a) bVar;
        aVar.f2768c = aVar2.f2768c;
        aVar.f2769d = aVar2.f2769d;
        aVar.f2772g = aVar2.f2772g;
        aVar.f2771f = aVar2.f2771f;
        int i10 = this.f2766a + aVar2.f2766a;
        aVar.f2766a = i10;
        String str = this.f2771f;
        if (str != null) {
            aVar.f2766a = i10 - (str.length() + 1);
        }
        aVar.l = aVar2.l;
        return aVar;
    }

    public final void b(String str) {
        String str2 = this.f2768c;
        if (str2.indexOf(46) >= 0 || !str2.toUpperCase(Locale.ROOT).equals(str2)) {
            return;
        }
        String strK = g.b.k(str2, ".", str);
        Logger logger = f2765n;
        if (logger.isDebugEnabled()) {
            logger.debug(q.l("Applying DFS netbios name hack ", str2, " -> ", strK, " "));
        }
        this.f2768c = strK;
    }

    public final void c(String str) {
        String str2 = this.f2768c;
        if (str2.indexOf(46) < 0) {
            Locale locale = Locale.ROOT;
            if (str2.toUpperCase(locale).equals(str2)) {
                boolean zStartsWith = str.startsWith(str2.toLowerCase(locale) + ".");
                Logger logger = f2765n;
                if (!zStartsWith) {
                    logger.warn("Have unmappable netbios name ".concat(str2));
                    return;
                }
                if (logger.isDebugEnabled()) {
                    logger.debug("Adjusting server name " + str2 + " to " + str);
                }
                this.f2768c = str;
            }
        }
    }

    public final a e() {
        if (b.class.isAssignableFrom(a.class)) {
            return this;
        }
        throw new ClassCastException();
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        if (!Objects.equals(this.f2768c, ((a) bVar).f2768c)) {
            return false;
        }
        a aVar = (a) bVar;
        return Objects.equals(this.f2769d, aVar.f2769d) && Objects.equals(this.f2771f, aVar.f2771f) && Integer.valueOf(this.f2766a).equals(Integer.valueOf(aVar.f2766a));
    }

    public final int hashCode() {
        return Objects.hash(this.f2768c, this.f2769d, this.f2771f, Integer.valueOf(this.f2766a));
    }

    public final String toString() {
        return "DfsReferralData[pathConsumed=" + this.f2766a + ",server=" + this.f2768c + ",share=" + this.f2769d + ",link=" + this.f2770e + ",path=" + this.f2771f + ",ttl=" + this.f2767b + ",expiration=" + this.f2772g + ",remain=" + (this.f2772g - System.currentTimeMillis()) + "]";
    }
}
