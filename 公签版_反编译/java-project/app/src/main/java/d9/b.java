package d9;

import a1.i;
import android.graphics.Bitmap;
import android.text.TextUtils;
import androidx.fragment.app.b0;
import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import java.text.ParseException;
import java.util.Locale;
import java.util.StringTokenizer;
import okhttp3.Call;
import okhttp3.Headers;

/* loaded from: classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public final m9.e f4507a;

    /* renamed from: b, reason: collision with root package name */
    public volatile int f4508b = 0;

    /* renamed from: c, reason: collision with root package name */
    public boolean f4509c;

    /* renamed from: d, reason: collision with root package name */
    public Call f4510d;

    /* renamed from: e, reason: collision with root package name */
    public nh.b f4511e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ int f4512f;

    public b(m9.e eVar, int i10) {
        this.f4512f = i10;
        this.f4507a = eVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:66:0x00f0  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00f3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void a(b bVar, Headers headers, Object obj) throws NumberFormatException {
        long jCurrentTimeMillis;
        c9.a aVar;
        long jA;
        long jA2;
        long j10;
        m9.e eVar = bVar.f4507a;
        int i10 = eVar.f11014f;
        if (i10 == 2 || (obj instanceof Bitmap)) {
            return;
        }
        String str = eVar.f11015g;
        if (i10 == 1) {
            jCurrentTimeMillis = 0;
            try {
                jA = k9.a.a(headers.get("Date"));
            } catch (ParseException unused) {
                jA = 0;
            }
            try {
                jA2 = k9.a.a(headers.get(HttpHeaders.EXPIRES));
            } catch (ParseException unused2) {
                jA2 = -1;
            }
            String str2 = headers.get(HttpHeaders.CACHE_CONTROL);
            String str3 = headers.get("Pragma");
            if (str2 == null) {
                str2 = str3 != null ? str3 : null;
            }
            if (!TextUtils.isEmpty(str2) || jA2 > 0) {
                if (TextUtils.isEmpty(str2)) {
                    j10 = 0;
                } else {
                    StringTokenizer stringTokenizer = new StringTokenizer(str2, ",");
                    j10 = 0;
                    while (stringTokenizer.hasMoreTokens()) {
                        String lowerCase = stringTokenizer.nextToken().trim().toLowerCase(Locale.getDefault());
                        if (!lowerCase.equals("no-cache") && !lowerCase.equals("no-store")) {
                            if (lowerCase.startsWith("max-age=")) {
                                try {
                                    j10 = Long.parseLong(lowerCase.substring(8));
                                    if (j10 <= 0) {
                                    }
                                } catch (Exception e7) {
                                    e7.printStackTrace();
                                }
                            }
                        }
                    }
                }
                long jCurrentTimeMillis2 = System.currentTimeMillis();
                if (jA <= 0) {
                    jA = jCurrentTimeMillis2;
                }
                if (j10 > 0) {
                    jCurrentTimeMillis = (j10 * 1000) + jA;
                } else if (jA2 >= 0) {
                    jCurrentTimeMillis = jA2;
                }
            }
            aVar = null;
            if (aVar != null) {
                int i11 = g9.a.f6124a;
                throw null;
            }
            int i12 = g9.a.f6124a;
            throw null;
        }
        jCurrentTimeMillis = System.currentTimeMillis();
        k9.a aVar2 = new k9.a();
        for (String str4 : headers.names()) {
            aVar2.b(str4, headers.get(str4));
        }
        aVar = new c9.a();
        aVar.f2977a = str;
        aVar.f2980d = obj;
        aVar.f2978b = jCurrentTimeMillis;
        aVar.f2979c = aVar2;
        if (aVar != null) {
        }
    }

    public static void f(Runnable runnable) {
        b9.a.f2665a.f2666a.post(runnable);
    }

    public final void b(v3.f fVar) {
        switch (this.f4512f) {
            case 0:
                f(new a(this, fVar, 0));
                break;
            case 1:
                f(new c(this, fVar));
                break;
            case 2:
                f(new d(this, fVar));
                break;
            case 3:
                f(new e(this, fVar));
                break;
            default:
                f(new f(this, fVar));
                break;
        }
    }

    public final void c(v3.f fVar) {
        switch (this.f4512f) {
            case 0:
                f(new y7.b(6, this, fVar, false));
                break;
            case 1:
                f(new y7.b(7, this, fVar, false));
                break;
            case 2:
                f(new y7.b(8, this, fVar, false));
                break;
            case 3:
                f(new y7.b(9, this, fVar, false));
                break;
            default:
                f(new y7.b(10, this, fVar, false));
                break;
        }
    }

    public final synchronized void d() {
        if (this.f4509c) {
            throw new b0("Already executed!", 3);
        }
        this.f4509c = true;
        this.f4510d = this.f4507a.f();
    }

    public final void e() {
        this.f4510d.enqueue(new i(18, this));
    }
}
