package androidx.emoji2.text;

import a2.e0;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.net.ConnectivityManager;
import java.io.File;
import java.io.InputStream;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class n implements k, a6.j, j5.d, l5.r {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1122a;

    /* renamed from: b, reason: collision with root package name */
    public final Context f1123b;

    public /* synthetic */ n(Context context, int i10) {
        this.f1122a = i10;
        this.f1123b = context;
    }

    @Override // androidx.emoji2.text.k
    public void a(a9.o oVar) {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 1, 15L, TimeUnit.SECONDS, new LinkedBlockingDeque(), new a("EmojiCompatInitializer", 0));
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        threadPoolExecutor.execute(new e0(this, oVar, threadPoolExecutor, 2));
    }

    @Override // j5.d
    public File b() {
        File cacheDir = this.f1123b.getCacheDir();
        if (cacheDir == null) {
            return null;
        }
        return new File(cacheDir, "image_manager_disk_cache");
    }

    @Override // a6.j
    public Object get() {
        return (ConnectivityManager) this.f1123b.getSystemService("connectivity");
    }

    @Override // l5.r
    public l5.q l(l5.w wVar) {
        switch (this.f1122a) {
            case 3:
                return new l5.b(this.f1123b, this);
            case 4:
                return new l5.b(this.f1123b, this);
            case 5:
                return new l5.b(this.f1123b, this);
            case 6:
                return new l5.m(this.f1123b, 0);
            case 7:
                return new l5.b(this.f1123b, wVar.c(Integer.class, AssetFileDescriptor.class));
            case 8:
                return new l5.b(this.f1123b, wVar.c(Integer.class, InputStream.class));
            case 9:
                return new l5.m(this.f1123b, 1);
            default:
                return new l5.m(this.f1123b, 2);
        }
    }

    public n(Context context) {
        this.f1122a = 0;
        this.f1123b = context.getApplicationContext();
    }
}
