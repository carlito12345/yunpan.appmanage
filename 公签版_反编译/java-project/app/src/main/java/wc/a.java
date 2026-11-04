package wc;

import com.hsae.autosdk.popup.constant.PopupConst;
import da.b;
import java.io.UnsupportedEncodingException;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Properties;
import java.util.StringTokenizer;
import java.util.TimeZone;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import vc.c;
import vc.e;
import vc.f;
import vc.i;
import vc.m;

/* loaded from: classes.dex */
public final class a implements f {

    /* renamed from: y0, reason: collision with root package name */
    public static final Logger f17822y0 = LoggerFactory.getLogger((Class<?>) a.class);

    /* renamed from: z0, reason: collision with root package name */
    public static final HashMap f17823z0;
    public final int A;
    public final int B;
    public final int C;
    public final int D;
    public final InetAddress E;
    public final int F;
    public final int G;
    public final int H;
    public final int I;
    public final String J;
    public final String K;
    public final int L;
    public final boolean M;
    public final long N;
    public final boolean O;
    public final boolean P;
    public final String Q;
    public final String R;
    public final String S;
    public final String T;
    public final int U;
    public final int V;
    public final int W;
    public final int X;
    public final int Y;
    public final int Z;

    /* renamed from: a0, reason: collision with root package name */
    public final String f17825a0;

    /* renamed from: b, reason: collision with root package name */
    public final int f17826b;

    /* renamed from: b0, reason: collision with root package name */
    public final int f17827b0;

    /* renamed from: c, reason: collision with root package name */
    public final SecureRandom f17828c;

    /* renamed from: c0, reason: collision with root package name */
    public final InetAddress f17829c0;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f17830d;

    /* renamed from: d0, reason: collision with root package name */
    public final String f17831d0;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f17832e;

    /* renamed from: e0, reason: collision with root package name */
    public final InetAddress[] f17833e0;

    /* renamed from: f, reason: collision with root package name */
    public final boolean f17834f;

    /* renamed from: f0, reason: collision with root package name */
    public final InetAddress f17835f0;

    /* renamed from: g, reason: collision with root package name */
    public final boolean f17836g;

    /* renamed from: g0, reason: collision with root package name */
    public ArrayList f17837g0;

    /* renamed from: h, reason: collision with root package name */
    public final boolean f17838h;

    /* renamed from: i, reason: collision with root package name */
    public final boolean f17840i;

    /* renamed from: i0, reason: collision with root package name */
    public final int f17841i0;

    /* renamed from: j, reason: collision with root package name */
    public final boolean f17842j;

    /* renamed from: j0, reason: collision with root package name */
    public final int f17843j0;

    /* renamed from: k, reason: collision with root package name */
    public final boolean f17844k;

    /* renamed from: k0, reason: collision with root package name */
    public final int f17845k0;
    public final boolean l;

    /* renamed from: l0, reason: collision with root package name */
    public final long f17846l0;

    /* renamed from: m, reason: collision with root package name */
    public final boolean f17847m;

    /* renamed from: m0, reason: collision with root package name */
    public final int f17848m0;

    /* renamed from: n, reason: collision with root package name */
    public final boolean f17849n;

    /* renamed from: n0, reason: collision with root package name */
    public final boolean f17850n0;

    /* renamed from: o, reason: collision with root package name */
    public final boolean f17851o;

    /* renamed from: o0, reason: collision with root package name */
    public final boolean f17852o0;

    /* renamed from: p, reason: collision with root package name */
    public final boolean f17853p;

    /* renamed from: p0, reason: collision with root package name */
    public final HashSet f17854p0;

    /* renamed from: q, reason: collision with root package name */
    public final boolean f17855q;

    /* renamed from: q0, reason: collision with root package name */
    public i f17856q0;
    public final int r;

    /* renamed from: r0, reason: collision with root package name */
    public i f17857r0;

    /* renamed from: s, reason: collision with root package name */
    public final boolean f17858s;
    public final boolean s0;

    /* renamed from: t, reason: collision with root package name */
    public final boolean f17859t;

    /* renamed from: t0, reason: collision with root package name */
    public final boolean f17860t0;

    /* renamed from: u, reason: collision with root package name */
    public final boolean f17861u;

    /* renamed from: u0, reason: collision with root package name */
    public final byte[] f17862u0;

    /* renamed from: v, reason: collision with root package name */
    public final boolean f17863v;

    /* renamed from: v0, reason: collision with root package name */
    public final String f17864v0;

    /* renamed from: w, reason: collision with root package name */
    public final String f17865w;

    /* renamed from: w0, reason: collision with root package name */
    public final String f17866w0;

    /* renamed from: x, reason: collision with root package name */
    public final int f17867x;

    /* renamed from: x0, reason: collision with root package name */
    public final boolean f17868x0;

    /* renamed from: y, reason: collision with root package name */
    public final int f17869y;
    public final int z;

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f17824a = new HashMap();

    /* renamed from: h0, reason: collision with root package name */
    public final int f17839h0 = 65536;

    static {
        HashMap map = new HashMap();
        f17823z0 = map;
        map.put("TreeConnectAndX.QueryInformation", 0);
    }

    public a(Properties properties) throws c, NumberFormatException, UnsupportedEncodingException, UnknownHostException {
        InetAddress byName;
        String str;
        long j10;
        InetAddress byName2;
        long j11;
        InetAddress byName3;
        this.f17826b = -1;
        this.f17830d = false;
        this.f17832e = true;
        this.f17834f = false;
        this.f17836g = false;
        this.f17838h = false;
        this.f17840i = true;
        this.f17842j = false;
        this.f17844k = true;
        this.l = true;
        this.f17847m = false;
        this.f17849n = false;
        this.f17851o = false;
        this.f17853p = true;
        this.f17855q = true;
        this.r = 3;
        this.f17858s = false;
        this.f17859t = false;
        this.f17861u = true;
        this.f17863v = true;
        this.f17865w = "Cp850";
        this.f17867x = 0;
        this.f17869y = 0;
        this.z = 250;
        this.A = 30000;
        this.B = 35000;
        this.C = 35000;
        this.D = 35000;
        this.F = 0;
        this.G = 10;
        this.H = 65535;
        this.I = 65535;
        this.K = "jCIFS";
        this.L = 1;
        this.M = false;
        this.N = 300L;
        this.O = false;
        this.U = 36000;
        this.V = 5000;
        this.W = 576;
        this.X = 576;
        this.Y = 2;
        this.Z = 3000;
        this.f17827b0 = 0;
        this.f17833e0 = new InetAddress[0];
        this.f17841i0 = 65023;
        this.f17843j0 = 16;
        this.f17845k0 = 65435;
        this.f17846l0 = PopupConst.DURATION_POPUP;
        this.f17848m0 = 2;
        this.s0 = true;
        this.f17860t0 = true;
        this.f17864v0 = "GUEST";
        this.f17866w0 = "";
        this.f17868x0 = false;
        this.f17830d = e.a(properties, "jcifs.smb.client.useBatching", false);
        this.f17832e = e.a(properties, "jcifs.smb.client.useUnicode", true);
        this.f17855q = e.a(properties, "jcifs.smb.client.useLargeReadWrite", true);
        this.f17834f = e.a(properties, "jcifs.smb.client.forceUnicode", false);
        this.f17836g = e.a(properties, "jcifs.smb.client.signingPreferred", false);
        this.f17838h = e.a(properties, "jcifs.smb.client.signingEnforced", false);
        this.f17840i = e.a(properties, "jcifs.smb.client.ipcSigningEnforced", true);
        this.f17842j = e.a(properties, "jcifs.smb.client.encryptionEnabled", false);
        this.s0 = e.a(properties, "jcifs.smb.client.requireSecureNegotiate", true);
        this.f17860t0 = e.a(properties, "jcifs.smb.client.SendNTLMTargetName", true);
        this.r = e.b(properties, "jcifs.smb.lmCompatibility", 3);
        e.a(properties, "jcifs.smb.allowNTLMFallback", true);
        this.f17858s = e.a(properties, "jcifs.smb.useRawNTLM", false);
        this.f17859t = e.a(properties, "jcifs.smb.client.disableSpnegoIntegrity", false);
        this.f17861u = e.a(properties, "jcifs.smb.client.enforceSpnegoIntegrity", false);
        this.f17863v = e.a(properties, "jcifs.smb.client.disablePlainTextPasswords", true);
        this.f17865w = properties.getProperty("jcifs.encoding", "Cp850");
        this.f17844k = e.a(properties, "jcifs.smb.client.useNtStatus", true);
        this.l = e.a(properties, "jcifs.smb.client.useExtendedSecurity", true);
        this.f17847m = e.a(properties, "jcifs.smb.client.forceExtendedSecurity", false);
        this.f17849n = e.a(properties, "jcifs.smb.client.useSMB2Negotiation", false);
        this.f17851o = e.a(properties, "jcifs.smb.client.port139.enabled", false);
        this.f17853p = e.a(properties, "jcifs.smb.client.useNTSmbs", true);
        this.f17867x = e.b(properties, "jcifs.smb.client.flags2", 0);
        this.f17869y = e.b(properties, "jcifs.smb.client.capabilities", 0);
        this.z = e.b(properties, "jcifs.smb.client.ssnLimit", 250);
        this.f17848m0 = e.b(properties, "jcifs.smb.client.maxRequestRetries", 2);
        e.a(properties, "jcifs.smb.client.tcpNoDelay", false);
        this.A = e.b(properties, "jcifs.smb.client.responseTimeout", 30000);
        this.B = e.b(properties, "jcifs.smb.client.soTimeout", 35000);
        this.C = e.b(properties, "jcifs.smb.client.connTimeout", 35000);
        this.D = e.b(properties, "jcifs.smb.client.sessionTimeout", 35000);
        e.a(properties, "jcifs.smb.client.disableIdleTimeout", false);
        String property = properties.getProperty("jcifs.smb.client.laddr");
        if (property != null) {
            try {
                byName = InetAddress.getByName(property);
            } catch (UnknownHostException e7) {
                e.f16785a.error("Ignoring jcifs.smb.client.laddr address: ".concat(property), (Throwable) e7);
            }
        } else {
            byName = null;
        }
        this.E = byName;
        this.F = e.b(properties, "jcifs.smb.client.lport", 0);
        this.G = e.b(properties, "jcifs.smb.client.maxMpxCount", 10);
        this.H = e.b(properties, "jcifs.smb.client.snd_buf_size", 65535);
        this.I = e.b(properties, "jcifs.smb.client.rcv_buf_size", 65535);
        e.b(properties, "jcifs.smb.client.notify_buf_size", 1024);
        this.J = properties.getProperty("jcifs.smb.client.nativeOs", System.getProperty("os.name"));
        this.K = properties.getProperty("jcifs.smb.client.nativeLanMan", "jCIFS");
        this.L = 1;
        this.M = e.a(properties, "jcifs.smb.client.dfs.disabled", false);
        String property2 = properties.getProperty("jcifs.smb.client.dfs.ttl");
        if (property2 != null) {
            try {
                str = "Cp850";
                j10 = Long.parseLong(property2);
            } catch (NumberFormatException e10) {
                e.f16785a.error("Not a number", (Throwable) e10);
            }
        } else {
            str = "Cp850";
            j10 = 300;
        }
        this.N = j10;
        this.O = e.a(properties, "jcifs.smb.client.dfs.strictView", false);
        this.P = e.a(properties, "jcifs.smb.client.dfs.convertToFQDN", false);
        properties.getProperty("jcifs.smb.client.logonShare", null);
        this.Q = properties.getProperty("jcifs.smb.client.domain", null);
        this.R = properties.getProperty("jcifs.smb.client.username", null);
        this.S = properties.getProperty("jcifs.smb.client.password", null);
        this.T = properties.getProperty("jcifs.netbios.hostname", null);
        this.U = e.b(properties, "jcifs.netbios.cachePolicy", 600) * 60;
        this.V = e.b(properties, "jcifs.netbios.soTimeout", 5000);
        this.W = e.b(properties, "jcifs.netbios.snd_buf_size", 576);
        this.X = e.b(properties, "jcifs.netbios.rcv_buf_size", 576);
        this.Y = e.b(properties, "jcifs.netbios.retryCount", 2);
        this.Z = e.b(properties, "jcifs.netbios.retryTimeout", 3000);
        this.f17825a0 = properties.getProperty("jcifs.netbios.scope");
        this.f17827b0 = e.b(properties, "jcifs.netbios.lport", 0);
        String property3 = properties.getProperty("jcifs.netbios.laddr");
        if (property3 != null) {
            try {
                byName2 = InetAddress.getByName(property3);
            } catch (UnknownHostException e11) {
                e.f16785a.error("Unknown host ".concat(property3), (Throwable) e11);
            }
        } else {
            byName2 = null;
        }
        this.f17829c0 = byName2;
        this.f17831d0 = properties.getProperty("jcifs.netbios.lmhosts");
        InetAddress[] inetAddressArr = new InetAddress[0];
        String property4 = properties.getProperty("jcifs.netbios.wins");
        if (property4 != null) {
            StringTokenizer stringTokenizer = new StringTokenizer(property4, ",");
            int iCountTokens = stringTokenizer.countTokens();
            InetAddress[] inetAddressArr2 = new InetAddress[iCountTokens];
            for (int i10 = 0; i10 < iCountTokens; i10++) {
                String strNextToken = stringTokenizer.nextToken();
                try {
                    inetAddressArr2[i10] = InetAddress.getByName(strNextToken);
                } catch (UnknownHostException e12) {
                    e.f16785a.error(b.c("Unknown host ", strNextToken), (Throwable) e12);
                }
            }
            inetAddressArr = inetAddressArr2;
        }
        this.f17833e0 = inetAddressArr;
        this.f17841i0 = e.b(properties, "jcifs.smb.client.transaction_buf_size", 65535) - 512;
        this.f17843j0 = e.b(properties, "jcifs.smb.maxBuffers", 16);
        this.f17845k0 = e.b(properties, "jcifs.smb.client.listSize", 65435);
        e.b(properties, "jcifs.smb.client.listCount", 200);
        String property5 = properties.getProperty("jcifs.smb.client.attrExpirationPeriod");
        if (property5 != null) {
            try {
                j11 = Long.parseLong(property5);
            } catch (NumberFormatException e13) {
                e.f16785a.error("Not a number", (Throwable) e13);
            }
        } else {
            j11 = PopupConst.DURATION_POPUP;
        }
        this.f17846l0 = j11;
        e.a(properties, "jcifs.smb.client.ignoreCopyToException", false);
        String property6 = properties.getProperty("jcifs.netbios.baddr");
        if (property6 != null) {
            try {
                byName3 = InetAddress.getByName(property6);
            } catch (UnknownHostException e14) {
                e.f16785a.error("Unknown host ".concat(property6), (Throwable) e14);
            }
        } else {
            byName3 = null;
        }
        this.f17835f0 = byName3;
        this.f17850n0 = e.a(properties, "jcifs.traceResources", false);
        this.f17852o0 = e.a(properties, "jcifs.smb.client.strictResourceLifecycle", false);
        this.f17868x0 = e.a(properties, "jcifs.smb.client.allowGuestFallback", false);
        this.f17864v0 = properties.getProperty("jcifs.smb.client.guestUsername", "JCIFSGUEST");
        this.f17866w0 = properties.getProperty("jcifs.smb.client.guestPassword", "");
        String property7 = properties.getProperty("jcifs.smb.client.minVersion");
        String property8 = properties.getProperty("jcifs.smb.client.maxVersion");
        if (property7 == null && property8 == null) {
            b(e.a(properties, "jcifs.smb.client.disableSMB1", false) ? i.f16787d : null, !e.a(properties, "jcifs.smb.client.enableSMB2", true) ? i.f16786c : null);
        } else {
            b((property7 == null || property7.isEmpty()) ? null : i.valueOf(property7), (property8 == null || property8.isEmpty()) ? null : i.valueOf(property8));
        }
        c(properties.getProperty("jcifs.resolveOrder"));
        String property9 = properties.getProperty("jcifs.smb.client.disallowCompound");
        if (property9 != null) {
            HashSet hashSet = new HashSet();
            StringTokenizer stringTokenizer2 = new StringTokenizer(property9, ",");
            while (stringTokenizer2.hasMoreTokens()) {
                hashSet.add(stringTokenizer2.nextToken().trim());
            }
            this.f17854p0 = hashSet;
        }
        try {
            "".getBytes(str);
            this.f17826b = (int) (Math.random() * 65536.0d);
            TimeZone.getDefault();
            SecureRandom secureRandom = new SecureRandom();
            this.f17828c = secureRandom;
            if (this.f17862u0 == null) {
                byte[] bArr = new byte[32];
                secureRandom.nextBytes(bArr);
                this.f17862u0 = bArr;
            }
            if (this.J == null) {
                this.J = System.getProperty("os.name");
            }
            int i11 = this.f17867x;
            boolean z = this.f17832e;
            boolean z4 = this.f17844k;
            boolean z10 = this.l;
            if (i11 == 0) {
                this.f17867x = (z10 ? 2048 : 0) | 3 | (this.f17836g ? 4 : 0) | (z4 ? 16384 : 0) | ((z || this.f17834f) ? 32768 : 0);
            }
            if (this.f17869y == 0) {
                int i12 = (this.f17853p ? 16 : 0) | (z4 ? 64 : 0) | (z10 ? Integer.MIN_VALUE : 0);
                boolean z11 = this.f17855q;
                this.f17869y = i12 | (z11 ? 16384 : 0) | (z11 ? 32768 : 0) | (z ? 4 : 0);
            }
            if (this.f17835f0 == null) {
                try {
                    this.f17835f0 = InetAddress.getByName("255.255.255.255");
                } catch (UnknownHostException e15) {
                    f17822y0.debug("Failed to get broadcast address", (Throwable) e15);
                }
            }
            if (this.f17837g0 == null) {
                c(null);
            }
            if (this.f17856q0 == null || this.f17857r0 == null) {
                b(null, null);
            }
            if (this.f17854p0 == null) {
                this.f17854p0 = new HashSet(Arrays.asList("Smb2SessionSetupRequest", "Smb2TreeConnectRequest"));
            }
        } catch (UnsupportedEncodingException unused) {
            throw new c("The default OEM encoding Cp850 does not appear to be supported by this JRE.");
        }
    }

    public final int a(String str) {
        Integer num = (Integer) this.f17824a.get(str);
        if (num != null) {
            return num.intValue();
        }
        Integer num2 = (Integer) f17823z0.get(str);
        if (num2 != null) {
            return num2.intValue();
        }
        return 1;
    }

    public final void b(i iVar, i iVar2) {
        if (iVar == null) {
            iVar = i.f16786c;
        }
        this.f17856q0 = iVar;
        if (iVar2 == null) {
            iVar2 = i.f16788e;
        }
        this.f17857r0 = iVar2;
        if (iVar.a(iVar2)) {
            this.f17857r0 = this.f17856q0;
        }
    }

    public final void c(String str) {
        this.f17837g0 = new ArrayList();
        m mVar = m.RESOLVER_WINS;
        InetAddress[] inetAddressArr = this.f17833e0;
        m mVar2 = m.RESOLVER_DNS;
        m mVar3 = m.RESOLVER_BCAST;
        m mVar4 = m.RESOLVER_LMHOSTS;
        if (str == null || str.length() == 0) {
            if (inetAddressArr.length == 0) {
                this.f17837g0.add(mVar4);
                this.f17837g0.add(mVar2);
                this.f17837g0.add(mVar3);
                return;
            } else {
                this.f17837g0.add(mVar4);
                this.f17837g0.add(mVar2);
                this.f17837g0.add(mVar);
                this.f17837g0.add(mVar3);
                return;
            }
        }
        StringTokenizer stringTokenizer = new StringTokenizer(str, ",");
        while (stringTokenizer.hasMoreTokens()) {
            String strTrim = stringTokenizer.nextToken().trim();
            if (strTrim.equalsIgnoreCase("LMHOSTS")) {
                this.f17837g0.add(mVar4);
            } else {
                boolean zEqualsIgnoreCase = strTrim.equalsIgnoreCase("WINS");
                Logger logger = f17822y0;
                if (zEqualsIgnoreCase) {
                    if (inetAddressArr.length == 0) {
                        logger.error("UniAddress resolveOrder specifies WINS however  WINS server has not been configured");
                    } else {
                        this.f17837g0.add(mVar);
                    }
                } else if (strTrim.equalsIgnoreCase("BCAST")) {
                    this.f17837g0.add(mVar3);
                } else if (strTrim.equalsIgnoreCase("DNS")) {
                    this.f17837g0.add(mVar2);
                } else {
                    logger.error("unknown resolver method: ".concat(strTrim));
                }
            }
        }
    }
}
