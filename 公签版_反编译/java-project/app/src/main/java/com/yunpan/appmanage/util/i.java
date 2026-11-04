package com.yunpan.appmanage.util;

import a2.w0;
import android.content.ComponentName;
import android.content.Context;
import android.os.Build;
import android.provider.Settings;
import com.yunpan.appmanage.service.StartService;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final /* synthetic */ class i implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4031a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Context f4032b;

    public /* synthetic */ i(Context context, int i10) {
        this.f4031a = i10;
        this.f4032b = context;
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x009d  */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void run() throws IOException {
        t0.j jVar;
        Object systemService;
        Context context;
        switch (this.f4031a) {
            case 0:
                Context context2 = this.f4032b;
                String string = Settings.Secure.getString(context2.getContentResolver(), "enabled_notification_listeners");
                if (string == null || string.equals("null")) {
                    string = "";
                }
                StringBuilder sb2 = new StringBuilder();
                k kVar = j.f4033a;
                if (!android.support.v4.media.session.a.D(sb2, kVar.f4041d, "/", string)) {
                    StringBuilder sbB = d0.f.b(string, ":");
                    sbB.append(kVar.f4041d);
                    sbB.append("/");
                    sbB.append(StartService.class.getName());
                    String strReplace = sbB.toString().replace("::", "");
                    if (strReplace.startsWith(":")) {
                        strReplace = strReplace.substring(1);
                    }
                    if (strReplace.endsWith(":")) {
                        strReplace = android.support.v4.media.session.a.l(1, 0, strReplace);
                    }
                    Settings.Secure.putString(context2.getContentResolver(), "enabled_notification_listeners", strReplace);
                    Settings.Secure.putInt(context2.getContentResolver(), "notification_enabled", 1);
                    w0 w0Var = fa.b0.f5652a;
                    String str = "cmd notification allow_listener " + kVar.f4041d + "/" + StartService.class.getName();
                    w0Var.getClass();
                    w0.h(str);
                    break;
                }
                break;
            case 1:
                if (Build.VERSION.SDK_INT >= 33) {
                    Context context3 = this.f4032b;
                    ComponentName componentName = new ComponentName(context3, "androidx.appcompat.app.AppLocalesMetadataHolderService");
                    if (context3.getPackageManager().getComponentEnabledSetting(componentName) != 1) {
                        if (t0.b.a()) {
                            a0.f fVar = q.m.f12861g;
                            fVar.getClass();
                            a0.a aVar = new a0.a(fVar);
                            while (true) {
                                if (aVar.hasNext()) {
                                    q.m mVar = (q.m) ((WeakReference) aVar.next()).get();
                                    if (mVar != null && (context = ((q.a0) mVar).f12767k) != null) {
                                        systemService = context.getSystemService("locale");
                                    }
                                } else {
                                    systemService = null;
                                }
                            }
                            jVar = systemService != null ? new t0.j(new t0.m(q.l.a(systemService))) : t0.j.f14635b;
                            if (jVar.f14636a.isEmpty()) {
                                String strA0 = a9.o.a0(context3);
                                Object systemService2 = context3.getSystemService("locale");
                                if (systemService2 != null) {
                                    q.l.b(systemService2, q.k.a(strA0));
                                }
                            }
                            context3.getPackageManager().setComponentEnabledSetting(componentName, 1, 1);
                        } else {
                            jVar = q.m.f12857c;
                            if (jVar == null) {
                            }
                            if (jVar.f14636a.isEmpty()) {
                            }
                            context3.getPackageManager().setComponentEnabledSetting(componentName, 1, 1);
                        }
                    }
                }
                q.m.f12860f = true;
                break;
            case 2:
                new ThreadPoolExecutor(0, 1, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue()).execute(new i(this.f4032b, 3));
                break;
            default:
                y3.c.s(this.f4032b, new androidx.media3.exoplayer.video.a(3), y3.c.f18902a, false);
                break;
        }
    }
}
