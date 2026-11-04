package ha;

import android.content.ClipData;
import android.content.ClipboardManager;
import org.bouncycastle.jcajce.util.AnnotatedPrivateKey;

/* loaded from: classes.dex */
public final class g implements wd {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7072a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ i f7073b;

    public /* synthetic */ g(i iVar, int i10) {
        this.f7072a = i10;
        this.f7073b = iVar;
    }

    @Override // ha.wd
    public final void D() {
        switch (this.f7072a) {
            case 0:
                StringBuffer stringBuffer = new StringBuffer();
                StringBuilder sb2 = new StringBuilder("adb shell pm grant ");
                i iVar = this.f7073b;
                sb2.append(iVar.f6724a.getPackageName());
                sb2.append(" android.permission.WRITE_SECURE_SETTINGS");
                stringBuffer.append(sb2.toString());
                ClipboardManager clipboardManager = (ClipboardManager) iVar.f6725b.getSystemService("clipboard");
                if (clipboardManager != null) {
                    clipboardManager.setPrimaryClip(ClipData.newPlainText(AnnotatedPrivateKey.LABEL, stringBuffer.toString()));
                    com.yunpan.appmanage.util.a0.w("已复制");
                    break;
                } else {
                    com.yunpan.appmanage.util.a0.y("无法复制：无法获取剪切板，可能您没给权限(剪切板)");
                    break;
                }
            default:
                i iVar2 = this.f7073b;
                iVar2.getClass();
                new mc.c(0, new g2.c(2)).d(rc.f.f13757b).a(fc.b.a()).b(new h(iVar2, 1));
                break;
        }
    }

    @Override // ha.wd
    public final void t() {
        int i10 = this.f7072a;
    }

    private final void a() {
    }

    private final void b() {
    }
}
