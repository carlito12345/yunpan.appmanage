package androidx.emoji2.text;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* loaded from: classes.dex */
public final class l {

    /* renamed from: i, reason: collision with root package name */
    public static final Object f1110i = new Object();

    /* renamed from: j, reason: collision with root package name */
    public static volatile l f1111j;

    /* renamed from: a, reason: collision with root package name */
    public final ReentrantReadWriteLock f1112a;

    /* renamed from: b, reason: collision with root package name */
    public final a0.f f1113b;

    /* renamed from: c, reason: collision with root package name */
    public volatile int f1114c;

    /* renamed from: d, reason: collision with root package name */
    public final Handler f1115d;

    /* renamed from: e, reason: collision with root package name */
    public final a1.i f1116e;

    /* renamed from: f, reason: collision with root package name */
    public final k f1117f;

    /* renamed from: g, reason: collision with root package name */
    public final int f1118g;

    /* renamed from: h, reason: collision with root package name */
    public final f f1119h;

    public l(s sVar) {
        ReentrantReadWriteLock reentrantReadWriteLock = new ReentrantReadWriteLock();
        this.f1112a = reentrantReadWriteLock;
        this.f1114c = 3;
        this.f1117f = sVar.f1144a;
        int i10 = sVar.f1145b;
        this.f1118g = i10;
        this.f1119h = sVar.f1146c;
        this.f1115d = new Handler(Looper.getMainLooper());
        this.f1113b = new a0.f(0);
        a1.i iVar = Build.VERSION.SDK_INT < 19 ? new a1.i(4, this) : new h(this);
        this.f1116e = iVar;
        reentrantReadWriteLock.writeLock().lock();
        if (i10 == 0) {
            try {
                this.f1114c = 0;
            } catch (Throwable th2) {
                this.f1112a.writeLock().unlock();
                throw th2;
            }
        }
        reentrantReadWriteLock.writeLock().unlock();
        if (b() == 0) {
            iVar.x();
        }
    }

    public static l a() {
        l lVar;
        synchronized (f1110i) {
            try {
                lVar = f1111j;
                if (!(lVar != null)) {
                    throw new IllegalStateException("EmojiCompat is not initialized.\n\nYou must initialize EmojiCompat prior to referencing the EmojiCompat instance.\n\nThe most likely cause of this error is disabling the EmojiCompatInitializer\neither explicitly in AndroidManifest.xml, or by including\nandroidx.emoji2:emoji2-bundled.\n\nAutomatic initialization is typically performed by EmojiCompatInitializer. If\nyou are not expecting to initialize EmojiCompat manually in your application,\nplease check to ensure it has not been removed from your APK's manifest. You can\ndo this in Android Studio using Build > Analyze APK.\n\nIn the APK Analyzer, ensure that the startup entry for\nEmojiCompatInitializer and InitializationProvider is present in\n AndroidManifest.xml. If it is missing or contains tools:node=\"remove\", and you\nintend to use automatic configuration, verify:\n\n  1. Your application does not include emoji2-bundled\n  2. All modules do not contain an exclusion manifest rule for\n     EmojiCompatInitializer or InitializationProvider. For more information\n     about manifest exclusions see the documentation for the androidx startup\n     library.\n\nIf you intend to use emoji2-bundled, please call EmojiCompat.init. You can\nlearn more in the documentation for BundledEmojiCompatConfig.\n\nIf you intended to perform manual configuration, it is recommended that you call\nEmojiCompat.init immediately on application startup.\n\nIf you still cannot resolve this issue, please open a bug with your specific\nconfiguration to help improve error message.");
                }
            } finally {
            }
        }
        return lVar;
    }

    public final int b() {
        this.f1112a.readLock().lock();
        try {
            return this.f1114c;
        } finally {
            this.f1112a.readLock().unlock();
        }
    }

    public final void c() {
        if (!(this.f1118g == 1)) {
            throw new IllegalStateException("Set metadataLoadStrategy to LOAD_STRATEGY_MANUAL to execute manual loading");
        }
        if (b() == 1) {
            return;
        }
        this.f1112a.writeLock().lock();
        try {
            if (this.f1114c == 0) {
                return;
            }
            this.f1114c = 0;
            this.f1112a.writeLock().unlock();
            this.f1116e.x();
        } finally {
            this.f1112a.writeLock().unlock();
        }
    }

    public final void d(Throwable th2) {
        ArrayList arrayList = new ArrayList();
        this.f1112a.writeLock().lock();
        try {
            this.f1114c = 2;
            arrayList.addAll(this.f1113b);
            this.f1113b.clear();
            this.f1112a.writeLock().unlock();
            this.f1115d.post(new j(arrayList, this.f1114c, th2));
        } catch (Throwable th3) {
            this.f1112a.writeLock().unlock();
            throw th3;
        }
    }

    public final void e() {
        ArrayList arrayList = new ArrayList();
        this.f1112a.writeLock().lock();
        try {
            this.f1114c = 1;
            arrayList.addAll(this.f1113b);
            this.f1113b.clear();
            this.f1112a.writeLock().unlock();
            this.f1115d.post(new j(arrayList, this.f1114c, (Throwable) null));
        } catch (Throwable th2) {
            this.f1112a.writeLock().unlock();
            throw th2;
        }
    }

    public final CharSequence f(int i10, int i11, CharSequence charSequence) {
        if (!(b() == 1)) {
            throw new IllegalStateException("Not initialized yet");
        }
        if (i10 < 0) {
            throw new IllegalArgumentException("start cannot be negative");
        }
        if (i11 < 0) {
            throw new IllegalArgumentException("end cannot be negative");
        }
        s1.g.j("start should be <= than end", i10 <= i11);
        if (charSequence == null) {
            return null;
        }
        s1.g.j("start should be < than charSequence length", i10 <= charSequence.length());
        s1.g.j("end should be < than charSequence length", i11 <= charSequence.length());
        return (charSequence.length() == 0 || i10 == i11) ? charSequence : this.f1116e.z(charSequence, i10, i11, false);
    }

    public final void g(i iVar) {
        s1.g.l(iVar, "initCallback cannot be null");
        this.f1112a.writeLock().lock();
        try {
            if (this.f1114c == 1 || this.f1114c == 2) {
                this.f1115d.post(new j(Arrays.asList(iVar), this.f1114c, (Throwable) null));
            } else {
                this.f1113b.add(iVar);
            }
            this.f1112a.writeLock().unlock();
        } catch (Throwable th2) {
            this.f1112a.writeLock().unlock();
            throw th2;
        }
    }
}
