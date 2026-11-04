package qa;

import com.yunpan.appmanage.bean.FtpCopyProgressBean;
import com.yunpan.appmanage.bean.WpPathBean;
import ta.q;

/* loaded from: classes.dex */
public final /* synthetic */ class c implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f13177a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ FtpCopyProgressBean f13178b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ WpPathBean f13179c;

    public /* synthetic */ c(FtpCopyProgressBean ftpCopyProgressBean, WpPathBean wpPathBean) {
        this.f13177a = 5;
        this.f13179c = wpPathBean;
        this.f13178b = ftpCopyProgressBean;
    }

    private final void a() throws Throwable {
        String strM;
        FtpCopyProgressBean ftpCopyProgressBean = this.f13178b;
        WpPathBean wpPathBean = this.f13179c;
        if (ftpCopyProgressBean.rootDirPath_form.length() == 1) {
            strM = ftpCopyProgressBean.rootDirPath_to + wpPathBean.path;
        } else {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(ftpCopyProgressBean.rootDirPath_to);
            strM = q.m(ftpCopyProgressBean.rootDirPath_form, wpPathBean.path, sb2);
        }
        String strQ = com.bumptech.glide.c.q(ftpCopyProgressBean, wpPathBean.path, strM);
        ftpCopyProgressBean.taskCount.decrementAndGet();
        ftpCopyProgressBean.file_success.addAndGet(1);
        if (strQ.isEmpty()) {
            return;
        }
        wpPathBean.errorStr = strQ;
        synchronized (ftpCopyProgressBean.failurePaths) {
            ftpCopyProgressBean.failurePaths.add(wpPathBean);
        }
    }

    private final void b() throws Throwable {
        String strM;
        FtpCopyProgressBean ftpCopyProgressBean = this.f13178b;
        WpPathBean wpPathBean = this.f13179c;
        if (ftpCopyProgressBean.rootDirPath_form.length() == 1) {
            strM = ftpCopyProgressBean.rootDirPath_to + wpPathBean.path;
        } else {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(ftpCopyProgressBean.rootDirPath_to);
            strM = q.m(ftpCopyProgressBean.rootDirPath_form, wpPathBean.path, sb2);
        }
        String strN = com.bumptech.glide.c.n(ftpCopyProgressBean, wpPathBean.path, strM);
        ftpCopyProgressBean.taskCount.decrementAndGet();
        ftpCopyProgressBean.file_success.addAndGet(1);
        if (strN.isEmpty()) {
            return;
        }
        wpPathBean.errorStr = strN;
        synchronized (ftpCopyProgressBean.failurePaths) {
            ftpCopyProgressBean.failurePaths.add(wpPathBean);
        }
    }

    private final void c() throws Throwable {
        String strM;
        FtpCopyProgressBean ftpCopyProgressBean = this.f13178b;
        WpPathBean wpPathBean = this.f13179c;
        if (ftpCopyProgressBean.rootDirPath_form.length() == 1) {
            strM = ftpCopyProgressBean.rootDirPath_to + wpPathBean.path;
        } else {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(ftpCopyProgressBean.rootDirPath_to);
            strM = q.m(ftpCopyProgressBean.rootDirPath_form, wpPathBean.path, sb2);
        }
        String strN = com.bumptech.glide.d.n(ftpCopyProgressBean, wpPathBean.path, strM);
        ftpCopyProgressBean.taskCount.decrementAndGet();
        ftpCopyProgressBean.file_success.addAndGet(1);
        if (strN.isEmpty()) {
            return;
        }
        wpPathBean.errorStr = strN;
        synchronized (ftpCopyProgressBean.failurePaths) {
            ftpCopyProgressBean.failurePaths.add(wpPathBean);
        }
    }

    private final void d() throws Throwable {
        String strM;
        FtpCopyProgressBean ftpCopyProgressBean = this.f13178b;
        WpPathBean wpPathBean = this.f13179c;
        if (ftpCopyProgressBean.rootDirPath_form.length() == 1) {
            strM = ftpCopyProgressBean.rootDirPath_to + wpPathBean.path;
        } else {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(ftpCopyProgressBean.rootDirPath_to);
            strM = q.m(ftpCopyProgressBean.rootDirPath_form, wpPathBean.path, sb2);
        }
        String strK = com.bumptech.glide.d.k(ftpCopyProgressBean, wpPathBean.path, strM);
        ftpCopyProgressBean.taskCount.decrementAndGet();
        ftpCopyProgressBean.file_success.addAndGet(1);
        if (strK.isEmpty()) {
            return;
        }
        wpPathBean.errorStr = strK;
        synchronized (ftpCopyProgressBean.failurePaths) {
            ftpCopyProgressBean.failurePaths.add(wpPathBean);
        }
    }

    private final void e() throws Throwable {
        FtpCopyProgressBean ftpCopyProgressBean = this.f13178b;
        WpPathBean wpPathBean = this.f13179c;
        String strC = f.c(ftpCopyProgressBean, wpPathBean.path, (ftpCopyProgressBean.rootDirPath_to + "/" + wpPathBean.path.substring(ftpCopyProgressBean.rootDirPath_form.length())).replace("//", "/"));
        ftpCopyProgressBean.taskCount.decrementAndGet();
        ftpCopyProgressBean.file_success.addAndGet(1);
        if (strC.isEmpty()) {
            return;
        }
        wpPathBean.errorStr = strC;
        synchronized (ftpCopyProgressBean.failurePaths) {
            ftpCopyProgressBean.failurePaths.add(wpPathBean);
        }
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        switch (this.f13177a) {
            case 0:
                a();
                return;
            case 1:
                b();
                return;
            case 2:
                c();
                return;
            case 3:
                d();
                return;
            case 4:
                e();
                return;
            default:
                WpPathBean wpPathBean = this.f13179c;
                FtpCopyProgressBean ftpCopyProgressBean = this.f13178b;
                String strC = g.c(ftpCopyProgressBean, wpPathBean.path, wpPathBean.path.replace(ftpCopyProgressBean.rootDirPath_form, ftpCopyProgressBean.rootDirPath_to));
                ftpCopyProgressBean.taskCount.decrementAndGet();
                ftpCopyProgressBean.file_success.addAndGet(1);
                if (strC.isEmpty()) {
                    return;
                }
                wpPathBean.errorStr = strC;
                synchronized (ftpCopyProgressBean.failurePaths) {
                    ftpCopyProgressBean.failurePaths.add(wpPathBean);
                }
                return;
        }
    }

    public /* synthetic */ c(FtpCopyProgressBean ftpCopyProgressBean, WpPathBean wpPathBean, int i10) {
        this.f13177a = i10;
        this.f13178b = ftpCopyProgressBean;
        this.f13179c = wpPathBean;
    }

    public /* synthetic */ c(FtpCopyProgressBean ftpCopyProgressBean, WpPathBean wpPathBean, mc.b bVar, int i10) {
        this.f13177a = i10;
        this.f13178b = ftpCopyProgressBean;
        this.f13179c = wpPathBean;
    }
}
