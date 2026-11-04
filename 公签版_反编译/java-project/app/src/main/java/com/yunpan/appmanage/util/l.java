package com.yunpan.appmanage.util;

import android.animation.ValueAnimator;
import android.os.Handler;
import android.view.View;
import android.widget.FrameLayout;
import com.yunpan.appmanage.bean.FileCopyBean;
import com.yunpan.appmanage.shizuku.FileParcelable;
import java.io.File;
import java.util.List;
import ua.i8;
import x0.r1;
import x0.v1;
import x9.w3;

/* loaded from: classes.dex */
public final class l implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4077a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f4078b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f4079c;

    /* renamed from: d, reason: collision with root package name */
    public final Object f4080d;

    public /* synthetic */ l(Object obj, Object obj2, Object obj3, int i10) {
        this.f4077a = i10;
        this.f4080d = obj;
        this.f4078b = obj2;
        this.f4079c = obj3;
    }

    private final void a() throws Exception {
        try {
            if (!((m) this.f4080d).f4085e.get()) {
                fa.b bVar = fa.a.f5646a;
                if (bVar.f5651b.file_canRead(((w3) this.f4078b).f18365b)) {
                    if (bVar.f5651b.file_exists(((FileCopyBean) this.f4079c).toDir + ((w3) this.f4078b).f18365b.substring(((FileCopyBean) this.f4079c).fromDir.length()))) {
                        if (!bVar.f5651b.file_canReadAndWrite(((FileCopyBean) this.f4079c).toDir + ((w3) this.f4078b).f18365b.substring(((FileCopyBean) this.f4079c).fromDir.length()))) {
                            throw new Exception();
                        }
                    }
                    try {
                        List<FileParcelable> listFile_listFiles = bVar.f5651b.file_listFiles(((w3) this.f4078b).f18365b);
                        if (listFile_listFiles.isEmpty()) {
                            synchronized (((FileCopyBean) this.f4079c)) {
                                ((FileCopyBean) this.f4079c).dirs.add((w3) this.f4078b);
                            }
                        } else {
                            boolean z = true;
                            for (FileParcelable fileParcelable : listFile_listFiles) {
                                w3 w3Var = new w3(fileParcelable);
                                if (w3Var.f18366c) {
                                    ((m) this.f4080d).f4083c.incrementAndGet();
                                    m mVar = (m) this.f4080d;
                                    mVar.f4082b.execute(new l(mVar, w3Var, (FileCopyBean) this.f4079c, 1));
                                    z = false;
                                } else {
                                    fa.b bVar2 = fa.a.f5646a;
                                    if (bVar2.f5651b.file_canRead(fileParcelable.path)) {
                                        if (bVar2.f5651b.file_exists(((FileCopyBean) this.f4079c).toDir + fileParcelable.path.substring(((FileCopyBean) this.f4079c).fromDir.length()))) {
                                            if (!bVar2.f5651b.file_canReadAndWrite(((FileCopyBean) this.f4079c).toDir + fileParcelable.path.substring(((FileCopyBean) this.f4079c).fromDir.length()))) {
                                                ((m) this.f4080d).f4085e.set(true);
                                            }
                                            w3Var.f18373j = "重复";
                                            ((FileCopyBean) this.f4079c).isHasRepeatFile.set(true);
                                        }
                                    } else {
                                        ((m) this.f4080d).f4085e.set(true);
                                    }
                                    synchronized (((FileCopyBean) this.f4079c)) {
                                        ((FileCopyBean) this.f4079c).files.add(w3Var);
                                    }
                                }
                                if (((m) this.f4080d).f4085e.get()) {
                                    ((m) this.f4080d).f4085e.set(true);
                                    ((m) this.f4080d).f4083c.decrementAndGet();
                                    return;
                                }
                            }
                            if (z) {
                                synchronized (((FileCopyBean) this.f4079c)) {
                                    ((FileCopyBean) this.f4079c).dirs.add((w3) this.f4078b);
                                }
                            }
                        }
                    } catch (Exception unused) {
                    }
                    ((m) this.f4080d).f4083c.decrementAndGet();
                    return;
                }
            }
            throw new Exception();
        } catch (Exception unused2) {
            ((m) this.f4080d).f4085e.set(true);
            ((m) this.f4080d).f4083c.decrementAndGet();
        }
    }

    @Override // java.lang.Runnable
    public final void run() throws Exception {
        Object objCall;
        switch (this.f4077a) {
            case 0:
                if (((m) this.f4080d).f4085e.get() || !a0.b(((w3) this.f4078b).f18365b)) {
                    ((m) this.f4080d).f4085e.set(true);
                    ((m) this.f4080d).f4083c.decrementAndGet();
                    return;
                }
                if (a0.g(((FileCopyBean) this.f4079c).toDir + ((w3) this.f4078b).f18365b.substring(((FileCopyBean) this.f4079c).fromDir.length()))) {
                    if (!a0.d(((FileCopyBean) this.f4079c).toDir + ((w3) this.f4078b).f18365b.substring(((FileCopyBean) this.f4079c).fromDir.length()))) {
                        ((m) this.f4080d).f4085e.set(true);
                        ((m) this.f4080d).f4083c.decrementAndGet();
                        return;
                    }
                }
                try {
                    File[] fileArrListFiles = new File(((w3) this.f4078b).f18365b).listFiles();
                    if (fileArrListFiles == null || fileArrListFiles.length == 0) {
                        synchronized (((FileCopyBean) this.f4079c)) {
                            ((FileCopyBean) this.f4079c).dirs.add((w3) this.f4078b);
                        }
                    } else {
                        boolean z = true;
                        for (File file : fileArrListFiles) {
                            w3 w3Var = new w3(file);
                            if (w3Var.f18366c) {
                                ((m) this.f4080d).f4083c.incrementAndGet();
                                m mVar = (m) this.f4080d;
                                mVar.f4082b.execute(new l(mVar, w3Var, (FileCopyBean) this.f4079c, 0));
                                z = false;
                            } else {
                                if (a0.b(file.getPath())) {
                                    if (a0.g(((FileCopyBean) this.f4079c).toDir + file.getPath().substring(((FileCopyBean) this.f4079c).fromDir.length()))) {
                                        if (!a0.d(((FileCopyBean) this.f4079c).toDir + file.getPath().substring(((FileCopyBean) this.f4079c).fromDir.length()))) {
                                            ((m) this.f4080d).f4085e.set(true);
                                        }
                                        w3Var.f18373j = "重复";
                                        ((FileCopyBean) this.f4079c).isHasRepeatFile.set(true);
                                    }
                                } else {
                                    ((m) this.f4080d).f4085e.set(true);
                                }
                                synchronized (((FileCopyBean) this.f4079c)) {
                                    ((FileCopyBean) this.f4079c).files.add(w3Var);
                                }
                            }
                            if (((m) this.f4080d).f4085e.get()) {
                                ((m) this.f4080d).f4085e.set(true);
                                ((m) this.f4080d).f4083c.decrementAndGet();
                                return;
                            }
                        }
                        if (z) {
                            synchronized (((FileCopyBean) this.f4079c)) {
                                ((FileCopyBean) this.f4079c).dirs.add((w3) this.f4078b);
                            }
                        }
                    }
                } catch (Exception unused) {
                }
                ((m) this.f4080d).f4083c.decrementAndGet();
                return;
            case 1:
                a();
                return;
            case 2:
                q.e.b(((q.e) this.f4080d).f12812e, (View) this.f4078b, (View) this.f4079c);
                return;
            case 3:
                ((t6.a) this.f4080d).h((View) this.f4078b, (FrameLayout) this.f4079c);
                return;
            case 4:
                try {
                    objCall = ((u0.c) this.f4078b).call();
                } catch (Exception unused2) {
                    objCall = null;
                }
                ((Handler) this.f4080d).post(new y7.b((u0.d) this.f4079c, 22, objCall));
                return;
            default:
                r1.h((View) this.f4078b, (i8) this.f4079c);
                ((ValueAnimator) this.f4080d).start();
                return;
        }
    }

    public l(View view, v1 v1Var, i8 i8Var, ValueAnimator valueAnimator) {
        this.f4077a = 5;
        this.f4078b = view;
        this.f4079c = i8Var;
        this.f4080d = valueAnimator;
    }
}
