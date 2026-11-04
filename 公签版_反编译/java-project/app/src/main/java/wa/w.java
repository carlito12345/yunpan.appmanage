package wa;

import android.os.Environment;
import com.alibaba.sdk.android.oss.signer.SignParameters;
import com.yunpan.appmanage.base.AppStart;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* loaded from: classes.dex */
public abstract class w {

    /* renamed from: a, reason: collision with root package name */
    public static final ExecutorService f17760a = Executors.newSingleThreadExecutor();

    /* renamed from: b, reason: collision with root package name */
    public static final SimpleDateFormat f17761b = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS", Locale.getDefault());

    /* renamed from: c, reason: collision with root package name */
    public static File f17762c;

    /* renamed from: d, reason: collision with root package name */
    public static File f17763d;

    public static void a() {
        File filesDir;
        try {
            if (Environment.getExternalStorageState().contains("mounted")) {
                filesDir = Environment.getExternalStorageDirectory();
                filesDir.getParentFile();
            } else {
                filesDir = AppStart.f3772h.getFilesDir();
            }
        } catch (Exception unused) {
            filesDir = AppStart.f3772h.getFilesDir();
        }
        f17762c = new File(filesDir, "log-开机日志.txt");
        new File(filesDir, "log-日志映射.txt");
        f17763d = new File(filesDir, "log-adb.txt");
    }

    public static void b(String str) {
        f17760a.execute(new com.yunpan.appmanage.db.a(f17761b.format(new Date()) + "： " + str + SignParameters.NEW_LINE, 3));
    }

    public static void c(String str) {
        f17760a.execute(new com.yunpan.appmanage.db.a(f17761b.format(new Date()) + "： " + str + SignParameters.NEW_LINE, 2));
    }

    public static void d(String str) {
        f17760a.execute(new com.yunpan.appmanage.db.a("\n\n" + f17761b.format(new Date()) + "： " + str + SignParameters.NEW_LINE, 4));
    }
}
