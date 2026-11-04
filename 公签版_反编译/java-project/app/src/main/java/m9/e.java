package m9;

import android.os.Build;
import android.text.TextUtils;
import d0.f;
import java.io.Serializable;
import java.util.Locale;
import okhttp3.Call;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;

/* loaded from: classes.dex */
public abstract class e implements Serializable {

    /* renamed from: a, reason: collision with root package name */
    public String f11009a;

    /* renamed from: b, reason: collision with root package name */
    public final String f11010b;

    /* renamed from: c, reason: collision with root package name */
    public transient OkHttpClient f11011c;

    /* renamed from: d, reason: collision with root package name */
    public transient Object f11012d;

    /* renamed from: e, reason: collision with root package name */
    public final int f11013e;

    /* renamed from: f, reason: collision with root package name */
    public int f11014f;

    /* renamed from: g, reason: collision with root package name */
    public String f11015g;

    /* renamed from: h, reason: collision with root package name */
    public final k9.c f11016h = new k9.c();

    /* renamed from: i, reason: collision with root package name */
    public final k9.a f11017i = new k9.a();

    /* renamed from: j, reason: collision with root package name */
    public transient Request f11018j;

    /* renamed from: k, reason: collision with root package name */
    public transient nh.b f11019k;
    public transient nh.b l;

    public e(String str) {
        String string;
        String str2;
        this.f11009a = str;
        this.f11010b = str;
        b9.b bVar = b9.a.f2665a;
        if (TextUtils.isEmpty(k9.a.f10203c)) {
            Locale locale = Locale.getDefault();
            String language = locale.getLanguage();
            String country = locale.getCountry();
            StringBuilder sb2 = new StringBuilder(language);
            if (!TextUtils.isEmpty(country)) {
                sb2.append('-');
                sb2.append(country);
                sb2.append(',');
                sb2.append(language);
                sb2.append(";q=0.8");
            }
            string = sb2.toString();
            k9.a.f10203c = string;
        } else {
            string = k9.a.f10203c;
        }
        if (!TextUtils.isEmpty(string)) {
            g("Accept-Language", string);
        }
        if (TextUtils.isEmpty(k9.a.f10204d)) {
            try {
                bVar.getClass();
                n9.a.b(null, "please call OkGo.getInstance().init() first in application!");
                throw null;
            } catch (Exception unused) {
                String str3 = TextUtils.isEmpty(null) ? "okhttp-okgo/jeasonlzy" : null;
                Locale locale2 = Locale.getDefault();
                StringBuffer stringBuffer = new StringBuffer();
                String str4 = Build.VERSION.RELEASE;
                if (str4.length() > 0) {
                    stringBuffer.append(str4);
                } else {
                    stringBuffer.append("1.0");
                }
                stringBuffer.append("; ");
                String language2 = locale2.getLanguage();
                if (language2 != null) {
                    stringBuffer.append(language2.toLowerCase(locale2));
                    String country2 = locale2.getCountry();
                    if (!TextUtils.isEmpty(country2)) {
                        stringBuffer.append("-");
                        stringBuffer.append(country2.toLowerCase(locale2));
                    }
                } else {
                    stringBuffer.append("en");
                }
                if ("REL".equals(Build.VERSION.CODENAME)) {
                    String str5 = Build.MODEL;
                    if (str5.length() > 0) {
                        stringBuffer.append("; ");
                        stringBuffer.append(str5);
                    }
                }
                String str6 = Build.ID;
                if (str6.length() > 0) {
                    stringBuffer.append(" Build/");
                    stringBuffer.append(str6);
                }
                str2 = String.format(str3, stringBuffer, "Mobile ");
                k9.a.f10204d = str2;
            }
        } else {
            str2 = k9.a.f10204d;
        }
        if (!TextUtils.isEmpty(str2)) {
            g("User-Agent", str2);
        }
        bVar.getClass();
        this.f11013e = bVar.f2668c;
        this.f11014f = bVar.f2669d;
    }

    public final Response a() {
        return f().execute();
    }

    public final void b(nh.b bVar) {
        this.f11019k = bVar;
        int iC = f.c(this.f11014f);
        d9.b bVar2 = iC != 0 ? iC != 1 ? iC != 2 ? iC != 3 ? iC != 4 ? null : new d9.b(this, 1) : new d9.b(this, 3) : new d9.b(this, 4) : new d9.b(this, 2) : new d9.b(this, 0);
        n9.a.b(bVar2, "policy == null");
        e eVar = bVar2.f4507a;
        if (eVar.f11015g == null) {
            String strC = n9.a.c(eVar.f11010b, eVar.f11016h.f10212a);
            n9.a.b(strC, "cacheKey == null");
            eVar.f11015g = strC;
        }
        if (eVar.f11014f == 0) {
            eVar.f11014f = 2;
        }
        if (eVar.f11014f != 2) {
            int i10 = g9.a.f6124a;
            throw null;
        }
        switch (bVar2.f4512f) {
            case 0:
                bVar2.f4511e = bVar;
                d9.b.f(new d9.a(bVar2));
                return;
            case 1:
                bVar2.f4511e = bVar;
                d9.b.f(new d9.c(bVar2));
                return;
            case 2:
                bVar2.f4511e = bVar;
                d9.b.f(new d9.d(bVar2));
                return;
            case 3:
                bVar2.f4511e = bVar;
                d9.b.f(new d9.e(bVar2));
                return;
            default:
                bVar2.f4511e = bVar;
                d9.b.f(new d9.f(bVar2));
                return;
        }
    }

    public abstract Request c(d dVar);

    public abstract RequestBody d();

    public final Call f() {
        RequestBody requestBodyD = d();
        if (requestBodyD != null) {
            this.f11018j = c(new d(requestBodyD, this.f11019k));
        } else {
            this.f11018j = c(null);
        }
        if (this.f11011c == null) {
            b9.b bVar = b9.a.f2665a;
            n9.a.b(bVar.f2667b, "please call OkGo.getInstance().setOkHttpClient() first in application!");
            this.f11011c = bVar.f2667b;
        }
        return this.f11011c.newCall(this.f11018j);
    }

    public final void g(String str, String str2) {
        this.f11017i.b(str, str2);
    }

    public final void h(String str, String str2, boolean... zArr) {
        k9.c cVar = this.f11016h;
        cVar.getClass();
        if (zArr.length > 0) {
            cVar.a(str, str2, zArr[0]);
        } else {
            cVar.a(str, str2, true);
        }
    }
}
