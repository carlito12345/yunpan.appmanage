package x9;

import com.burgstaller.okhttp.digest.fromhttpclient.HTTP;

/* loaded from: classes.dex */
public final class n5 {
    public dh.j A;
    public boolean B;
    public final int C;
    public String D;

    /* renamed from: a, reason: collision with root package name */
    public final int f18290a;

    /* renamed from: b, reason: collision with root package name */
    public String f18291b;

    /* renamed from: c, reason: collision with root package name */
    public String f18292c;

    /* renamed from: d, reason: collision with root package name */
    public int f18293d;

    /* renamed from: e, reason: collision with root package name */
    public String f18294e;

    /* renamed from: f, reason: collision with root package name */
    public String f18295f;

    /* renamed from: g, reason: collision with root package name */
    public String f18296g;

    /* renamed from: h, reason: collision with root package name */
    public String f18297h;

    /* renamed from: i, reason: collision with root package name */
    public String f18298i;

    /* renamed from: j, reason: collision with root package name */
    public String f18299j;

    /* renamed from: k, reason: collision with root package name */
    public String f18300k;
    public String l;

    /* renamed from: m, reason: collision with root package name */
    public String f18301m;

    /* renamed from: n, reason: collision with root package name */
    public String f18302n;

    /* renamed from: o, reason: collision with root package name */
    public String f18303o;

    /* renamed from: p, reason: collision with root package name */
    public String f18304p;

    /* renamed from: q, reason: collision with root package name */
    public String f18305q;
    public String r;

    /* renamed from: s, reason: collision with root package name */
    public String f18306s;

    /* renamed from: t, reason: collision with root package name */
    public String f18307t;

    /* renamed from: u, reason: collision with root package name */
    public boolean f18308u;

    /* renamed from: v, reason: collision with root package name */
    public String f18309v;

    /* renamed from: w, reason: collision with root package name */
    public String f18310w;

    /* renamed from: x, reason: collision with root package name */
    public dh.e f18311x;

    /* renamed from: y, reason: collision with root package name */
    public String f18312y;
    public boolean z;

    public n5() {
        this.f18296g = "";
        this.f18297h = "";
        this.f18298i = "";
        this.f18299j = "";
        this.f18300k = "";
        this.l = "";
        this.f18301m = "";
        this.f18302n = "";
        this.f18303o = "";
        this.f18304p = "";
        this.f18305q = "";
        this.r = "";
        this.f18306s = "";
        this.f18307t = "";
        this.f18308u = false;
        this.f18309v = "";
        this.f18310w = "";
        this.f18312y = HTTP.UTF_8;
        this.z = true;
        this.B = true;
        this.C = 0;
        this.D = "";
        this.f18290a = 0;
        this.f18291b = "添加";
        this.f18292c = "";
        this.f18293d = 0;
        this.f18294e = "";
        this.f18295f = "";
    }

    public static String a(z7.s sVar, String str) {
        try {
            return sVar.o(str).i();
        } catch (Exception unused) {
            return "";
        }
    }

    public final String b() {
        StringBuffer stringBuffer = new StringBuffer();
        int i10 = this.f18290a;
        if (i10 < 3) {
            stringBuffer.append(i10 + "://");
        } else if (i10 == 3) {
            stringBuffer.append("smb://");
            if (!this.f18309v.isEmpty()) {
                stringBuffer.append(this.f18309v + "\\");
            }
            if (!this.f18294e.isEmpty()) {
                stringBuffer.append(this.f18294e + ":" + this.f18295f + "@");
            }
            stringBuffer.append(this.f18292c + ":" + this.f18293d);
        } else if (i10 == 4) {
            stringBuffer.append("ftp://");
            if (!this.f18294e.isEmpty()) {
                stringBuffer.append(this.f18294e + ":" + this.f18295f + "@");
            }
            stringBuffer.append(this.f18292c + ":" + this.f18293d);
        } else if (i10 == 5) {
            stringBuffer.append("ftps://");
            if (!this.f18294e.isEmpty()) {
                stringBuffer.append(this.f18294e + ":" + this.f18295f + "@");
            }
            stringBuffer.append(this.f18292c + ":" + this.f18293d);
        } else if (i10 == 6) {
            stringBuffer.append("sftp://");
            if (!this.f18294e.isEmpty()) {
                stringBuffer.append(this.f18294e + ":" + this.f18295f + "@");
            }
            stringBuffer.append(this.f18292c + ":" + this.f18293d);
        } else if (i10 == 7) {
            int iIndexOf = this.f18292c.indexOf("//") + 2;
            stringBuffer.append(this.f18292c.substring(0, iIndexOf));
            if (!this.f18294e.isEmpty()) {
                stringBuffer.append(this.f18294e + ":" + this.f18295f + "@");
            }
            String str = this.f18292c;
            stringBuffer.append(str.substring(iIndexOf, str.indexOf("/", 10)));
        }
        return stringBuffer.toString();
    }

    public final z7.s c() {
        z7.s sVar = new z7.s();
        int i10 = this.f18290a;
        sVar.l("type", Integer.valueOf(i10));
        sVar.m("ip", this.f18292c);
        sVar.m("name", this.f18291b);
        sVar.m("user", this.f18294e);
        sVar.m("password", this.f18295f);
        if (this.f18296g.isEmpty()) {
            this.f18296g = p000if.a.p0(b());
        }
        sVar.m("tag", this.f18296g);
        if (i10 == 1) {
            sVar.m("lzy_uid", this.f18297h);
            sVar.m("lzy_cookies", this.f18298i);
        } else if (i10 == 2) {
            sVar.m("token", this.f18300k);
            sVar.m("uuid", this.l);
        } else if (i10 == 20) {
            sVar.m("token", this.f18300k);
            sVar.m("uuid", this.l);
            sVar.m("userId", this.f18302n);
        } else if (i10 == 21) {
            sVar.m("device_code", this.f18304p);
            sVar.m("user_code", this.f18305q);
            sVar.m("access_token", this.r);
            sVar.m("refresh_token", this.f18306s);
            sVar.m("sub", this.f18307t);
        } else if (i10 == 3) {
            sVar.l("port", Integer.valueOf(this.f18293d));
            sVar.m("domain", this.f18309v);
            sVar.m("rootShare", this.f18310w);
        } else if (i10 == 4 || i10 == 5) {
            sVar.l("port", Integer.valueOf(this.f18293d));
            sVar.m("ftp_encoding", this.f18312y);
            sVar.k("passiveMode", Boolean.valueOf(this.z));
            if (i10 == 5) {
                sVar.k("securityMode", Boolean.valueOf(this.B));
            }
        } else if (i10 == 6) {
            sVar.l("sftpMode", Integer.valueOf(this.C));
            sVar.l("port", Integer.valueOf(this.f18293d));
            sVar.m("keyPath", this.D);
        }
        return sVar;
    }

    public n5(int i10, String str) {
        this.f18292c = "";
        this.f18294e = "";
        this.f18295f = "";
        this.f18296g = "";
        this.f18297h = "";
        this.f18298i = "";
        this.f18299j = "";
        this.f18300k = "";
        this.l = "";
        this.f18301m = "";
        this.f18302n = "";
        this.f18303o = "";
        this.f18304p = "";
        this.f18305q = "";
        this.r = "";
        this.f18306s = "";
        this.f18307t = "";
        this.f18308u = false;
        this.f18309v = "";
        this.f18310w = "";
        this.f18312y = HTTP.UTF_8;
        this.z = true;
        this.B = true;
        this.C = 0;
        this.D = "";
        this.f18290a = i10;
        this.f18291b = str;
    }

    public n5(int i10, String str, int i11) {
        this.f18292c = "";
        this.f18294e = "";
        this.f18295f = "";
        this.f18296g = "";
        this.f18297h = "";
        this.f18298i = "";
        this.f18299j = "";
        this.f18300k = "";
        this.l = "";
        this.f18301m = "";
        this.f18302n = "";
        this.f18303o = "";
        this.f18304p = "";
        this.f18305q = "";
        this.r = "";
        this.f18306s = "";
        this.f18307t = "";
        this.f18308u = false;
        this.f18309v = "";
        this.f18310w = "";
        this.f18312y = HTTP.UTF_8;
        this.z = true;
        this.B = true;
        this.C = 0;
        this.D = "";
        this.f18290a = i10;
        this.f18291b = str;
        this.f18293d = i11;
    }

    public n5(z7.s sVar) {
        this.f18291b = "";
        this.f18292c = "";
        this.f18294e = "";
        this.f18295f = "";
        this.f18296g = "";
        this.f18297h = "";
        this.f18298i = "";
        this.f18299j = "";
        this.f18300k = "";
        this.l = "";
        this.f18301m = "";
        this.f18302n = "";
        this.f18303o = "";
        this.f18304p = "";
        this.f18305q = "";
        this.r = "";
        this.f18306s = "";
        this.f18307t = "";
        this.f18308u = false;
        this.f18309v = "";
        this.f18310w = "";
        this.f18312y = HTTP.UTF_8;
        this.z = true;
        this.B = true;
        this.C = 0;
        this.D = "";
        int iE = sVar.o("type").e();
        this.f18290a = iE;
        this.f18291b = sVar.o("name").i();
        this.f18294e = sVar.o("user").i();
        this.f18295f = sVar.o("password").i();
        this.f18292c = sVar.o("ip").i();
        if (iE == 1) {
            this.f18297h = a(sVar, "lzy_uid");
            this.f18298i = a(sVar, "lzy_cookies");
        } else if (iE == 2) {
            this.f18300k = a(sVar, "token");
            this.l = a(sVar, "uuid");
        } else if (iE == 20) {
            this.f18300k = a(sVar, "token");
            this.l = a(sVar, "uuid");
            this.f18302n = a(sVar, "userId");
        } else if (iE == 21) {
            this.f18304p = a(sVar, "device_code");
            this.f18305q = a(sVar, "user_code");
            this.r = a(sVar, "access_token");
            this.f18306s = a(sVar, "refresh_token");
            this.f18307t = a(sVar, "sub");
        } else if (iE == 3) {
            this.f18293d = sVar.o("port").e();
            this.f18309v = sVar.o("domain").i();
            this.f18310w = sVar.o("rootShare").i();
        } else if (iE == 4 || iE == 5) {
            this.f18293d = sVar.o("port").e();
            this.f18312y = sVar.o("ftp_encoding").i();
            this.z = sVar.o("passiveMode").b();
            if (iE == 5) {
                this.B = sVar.o("securityMode").b();
            }
        } else if (iE == 6) {
            this.C = sVar.o("sftpMode").e();
            this.f18293d = sVar.o("port").e();
            this.D = sVar.o("keyPath").i();
        }
        String strA = a(sVar, "tag");
        this.f18296g = strA;
        if (strA.isEmpty()) {
            this.f18296g = p000if.a.p0(b());
        }
    }
}
