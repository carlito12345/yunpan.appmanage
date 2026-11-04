package ce;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.LinkedList;
import java.util.Properties;
import java.util.TimeZone;

/* loaded from: classes.dex */
public interface q0 {

    /* renamed from: a0, reason: collision with root package name */
    public static final InetAddress f3133a0;

    /* renamed from: b0, reason: collision with root package name */
    public static final int f3134b0;

    /* renamed from: c0, reason: collision with root package name */
    public static final int f3135c0;

    /* renamed from: d0, reason: collision with root package name */
    public static final int f3136d0;

    /* renamed from: e0, reason: collision with root package name */
    public static final int f3137e0;

    /* renamed from: f0, reason: collision with root package name */
    public static final boolean f3138f0;

    /* renamed from: g0, reason: collision with root package name */
    public static final boolean f3139g0;

    /* renamed from: i0, reason: collision with root package name */
    public static final boolean f3140i0;

    /* renamed from: j0, reason: collision with root package name */
    public static final int f3141j0;

    /* renamed from: k0, reason: collision with root package name */
    public static final int f3142k0;

    /* renamed from: l0, reason: collision with root package name */
    public static final boolean f3143l0;

    /* renamed from: m0, reason: collision with root package name */
    public static final String f3144m0;

    /* renamed from: n0, reason: collision with root package name */
    public static final int f3145n0;

    /* renamed from: o0, reason: collision with root package name */
    public static final int f3146o0;

    /* renamed from: p0, reason: collision with root package name */
    public static final int f3147p0;

    /* renamed from: q0, reason: collision with root package name */
    public static final int f3148q0;

    /* renamed from: r0, reason: collision with root package name */
    public static final LinkedList f3149r0;
    public static final int s0;

    /* renamed from: u0, reason: collision with root package name */
    public static final int f3150u0;

    /* renamed from: v0, reason: collision with root package name */
    public static final int f3151v0;

    /* renamed from: w0, reason: collision with root package name */
    public static final String f3152w0;

    /* renamed from: x0, reason: collision with root package name */
    public static final String f3153x0;

    static {
        InetAddress byName;
        String property = wd.a.f17870a.getProperty("jcifs.smb1.smb.client.laddr");
        if (property != null) {
            try {
                byName = InetAddress.getByName(property);
            } catch (UnknownHostException e7) {
                if (de.d.f4630b > 0) {
                    de.d dVar = wd.a.f17871b;
                    dVar.getClass();
                    e7.printStackTrace(dVar);
                }
            }
        } else {
            byName = null;
        }
        f3133a0 = byName;
        f3134b0 = wd.a.c(0, "jcifs.smb1.smb.client.lport");
        f3135c0 = wd.a.c(10, "jcifs.smb1.smb.client.maxMpxCount");
        f3136d0 = wd.a.c(16644, "jcifs.smb1.smb.client.snd_buf_size");
        f3137e0 = wd.a.c(60416, "jcifs.smb1.smb.client.rcv_buf_size");
        boolean zA = wd.a.a("jcifs.smb1.smb.client.useUnicode", true);
        f3138f0 = zA;
        f3139g0 = wd.a.a("jcifs.smb1.smb.client.useUnicode", false);
        boolean zA2 = wd.a.a("jcifs.smb1.smb.client.useNtStatus", true);
        boolean zA3 = wd.a.a("jcifs.smb1.smb.client.signingPreferred", false);
        f3140i0 = zA3;
        boolean zA4 = wd.a.a("jcifs.smb1.smb.client.useNTSmbs", true);
        boolean zA5 = wd.a.a("jcifs.smb1.smb.client.useExtendedSecurity", true);
        wd.a.d("jcifs.smb1.netbios.hostname");
        f3141j0 = wd.a.c(3, "jcifs.smb1.smb.lmCompatibility");
        f3142k0 = (int) (Math.random() * 65536.0d);
        TimeZone.getDefault();
        f3143l0 = wd.a.a("jcifs.smb1.smb.client.useBatching", true);
        String str = wd.a.f17872c;
        Properties properties = wd.a.f17870a;
        f3144m0 = properties.getProperty("jcifs.smb1.encoding", str);
        int i10 = (zA5 ? 2048 : 0) | 3 | (zA3 ? 4 : 0) | (zA2 ? 16384 : 0) | (zA ? 32768 : 0);
        f3145n0 = i10;
        int i11 = (zA2 ? 64 : 0) | (zA4 ? 16 : 0);
        int i12 = zA ? 4 : 0;
        f3146o0 = wd.a.c(i10, "jcifs.smb1.smb.client.flags2");
        f3147p0 = wd.a.c(i11 | i12 | 4096, "jcifs.smb1.smb.client.capabilities");
        wd.a.a("jcifs.smb1.smb.client.tcpNoDelay", false);
        f3148q0 = wd.a.c(30000, "jcifs.smb1.smb.client.responseTimeout");
        f3149r0 = new LinkedList();
        s0 = wd.a.c(250, "jcifs.smb1.smb.client.ssnLimit");
        f3150u0 = wd.a.c(35000, "jcifs.smb1.smb.client.soTimeout");
        f3151v0 = wd.a.c(35000, "jcifs.smb1.smb.client.connTimeout");
        f3152w0 = properties.getProperty("jcifs.smb1.smb.client.nativeOs", System.getProperty("os.name"));
        f3153x0 = properties.getProperty("jcifs.smb1.smb.client.nativeLanMan", "jCIFS");
        new b1(null, 0, null, 0);
    }
}
