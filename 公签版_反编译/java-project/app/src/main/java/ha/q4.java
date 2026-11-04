package ha;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.Context;
import android.os.Bundle;
import android.widget.TextView;
import com.yunpan.appmanage.R;
import java.util.HashSet;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final class q4 extends a4 {

    /* renamed from: k, reason: collision with root package name */
    public static final /* synthetic */ int f7607k = 0;

    /* renamed from: g, reason: collision with root package name */
    public TextView f7608g;

    /* renamed from: h, reason: collision with root package name */
    public TextView f7609h;

    /* renamed from: i, reason: collision with root package name */
    public final int f7610i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f7611j;

    public q4(Activity activity, Context context, int i10) {
        super(activity, context, R.layout.dialog_load);
        Pattern.compile("([0-9]{1,}).*?:(.*?)\\(pid([0-9]{1,})");
        this.f7611j = false;
        this.f7610i = i10;
    }

    public static HashSet b(Context context) {
        HashSet hashSet = new HashSet();
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        for (ActivityManager.RunningServiceInfo runningServiceInfo : activityManager.getRunningServices(Integer.MAX_VALUE)) {
            if (runningServiceInfo.pid >= 1) {
                String packageName = runningServiceInfo.service.getPackageName();
                if (!e(packageName)) {
                    hashSet.add(packageName);
                }
            }
        }
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : activityManager.getRunningAppProcesses()) {
            if (runningAppProcessInfo.pid >= 1) {
                String str = runningAppProcessInfo.processName;
                if (str.contains(":")) {
                    str = str.split(":")[0];
                }
                if (str.contains("@")) {
                    str = str.split("@")[0];
                }
                if (!e(str)) {
                    hashSet.add(str);
                }
            }
        }
        if (hashSet.size() >= 5) {
            return hashSet;
        }
        throw new Exception("获取失败");
    }

    public static HashSet c() {
        String strTrim;
        int iIndexOf;
        HashSet hashSet = new HashSet();
        fa.b0.f5652a.getClass();
        fa.a0 a0VarQ = a2.w0.q(30000L, "dumpsys -t 30000 meminfo");
        if (a0VarQ.f5649b.size() < 10) {
            a0VarQ = a2.w0.q(25000L, "dumpsys meminfo");
        }
        if (a0VarQ.f5649b.size() < 10) {
            throw new Exception("获取失败");
        }
        for (String str : a0VarQ.f5649b) {
            int iIndexOf2 = str.indexOf(":");
            if (iIndexOf2 != -1 && (iIndexOf = (strTrim = str.substring(iIndexOf2 + 1).trim()).indexOf("(")) != -1) {
                String strTrim2 = strTrim.substring(0, iIndexOf).trim();
                int iLastIndexOf = strTrim2.lastIndexOf("@");
                if (iLastIndexOf != -1) {
                    strTrim2 = strTrim2.substring(0, iLastIndexOf);
                }
                if (strTrim2.contains(".")) {
                    String strTrim3 = strTrim2.trim();
                    if (!strTrim3.isEmpty() && !e(strTrim3)) {
                        hashSet.add(strTrim3);
                    }
                }
            }
        }
        return hashSet;
    }

    public static HashSet d() {
        HashSet hashSet = new HashSet();
        fa.b0.f5652a.getClass();
        fa.a0 a0VarQ = a2.w0.q(10000L, "ps -A");
        if (a0VarQ.f5649b.size() < 20) {
            a0VarQ = a2.w0.q(10000L, "ps");
        }
        if (a0VarQ.f5649b.size() < 20) {
            throw new Exception("获取失败");
        }
        for (String str : a0VarQ.f5649b) {
            if (!str.endsWith("]") && (str.startsWith("u") || str.startsWith("system"))) {
                int iLastIndexOf = str.lastIndexOf(" ");
                if (iLastIndexOf != -1) {
                    String strSubstring = str.substring(iLastIndexOf + 1);
                    int iLastIndexOf2 = strSubstring.lastIndexOf(":");
                    if (iLastIndexOf2 != -1) {
                        strSubstring = strSubstring.substring(0, iLastIndexOf2);
                    }
                    int iLastIndexOf3 = strSubstring.lastIndexOf("@");
                    if (iLastIndexOf3 != -1) {
                        strSubstring = strSubstring.substring(0, iLastIndexOf3);
                    }
                    if (strSubstring.contains(".")) {
                        String strTrim = strSubstring.trim();
                        if (!e(strTrim)) {
                            hashSet.add(strTrim);
                        }
                    }
                }
            }
        }
        return hashSet;
    }

    public static boolean e(String str) {
        return str.startsWith("android.process.") || str.startsWith("android.hardware.") || str.startsWith("android.hidl.") || str.startsWith("media.") || str.startsWith("com.google.android") || str.startsWith("com.android.packageinstaller") || str.startsWith("com.android.providers") || str.startsWith("com.android.keychain") || str.startsWith("com.android.externalstorage") || str.startsWith("com.android.documentsui");
    }

    public final void a() {
        this.f7611j = true;
        super.dismiss();
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        TextView textView = (TextView) findViewById(R.id.v_title);
        this.f7608g = textView;
        textView.setOnKeyListener(new o4(0));
        this.f7609h = (TextView) findViewById(R.id.v_content);
        new mc.c(0, new n4(this, 1)).d(rc.f.f13757b).a(fc.b.a()).b(new p4(this, 0));
    }

    @Override // ha.a4, android.app.Dialog
    public final void show() {
        super.show();
        this.f7608g.setText("清理中");
        this.f7609h.setText("");
        new mc.c(0, new n4(this, 0)).d(rc.f.f13757b).a(fc.b.a()).b(new p4(this, 1));
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
    }
}
