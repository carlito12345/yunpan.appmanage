package ha;

import android.view.View;
import android.widget.EditText;
import com.hsae.autosdk.core.NoConst;
import io.github.muntashirakon.adb.android.AdbMdns;
import java.net.InetAddress;

/* loaded from: classes.dex */
public final /* synthetic */ class ld implements c6.e, AdbMdns.OnAdbDaemonDiscoveredListener, ec.d {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ md f7374a;

    public /* synthetic */ ld(md mdVar) {
        this.f7374a = mdVar;
    }

    @Override // ec.d
    public void g(mc.b bVar) throws NumberFormatException {
        int i10;
        md mdVar = this.f7374a;
        String string = mdVar.f7447h.getText().toString();
        if (string.contains(":")) {
            String[] strArrSplit = string.split(":");
            String strTrim = strArrSplit[0].trim();
            i10 = Integer.parseInt(strArrSplit[1].trim());
            string = strTrim;
        } else {
            i10 = 23;
        }
        try {
            gh.a aVar = new gh.a();
            aVar.f3251a = NoConst.MIN_HEARTBEAT_INTERVAL;
            aVar.c(string, i10);
            bVar.f(aVar);
            mdVar.f7450k = false;
            bVar.b();
        } catch (Exception e7) {
            g.b.s(e7, new StringBuilder("连接失败："));
            mdVar.f7450k = false;
            bVar.d(e7);
        }
    }

    @Override // io.github.muntashirakon.adb.android.AdbMdns.OnAdbDaemonDiscoveredListener
    public void onPortChanged(InetAddress inetAddress, int i10, String str) {
        md mdVar = this.f7374a;
        mdVar.getClass();
        if (inetAddress == null) {
            return;
        }
        mdVar.l.q(new com.yunpan.appmanage.util.d(0L, inetAddress.getHostName(), inetAddress.getHostAddress(), i10));
    }

    @Override // c6.e
    public void x(c6.g gVar, View view, int i10) {
        md mdVar = this.f7374a;
        EditText editText = mdVar.f7447h;
        StringBuilder sb2 = new StringBuilder();
        x9.r2 r2Var = mdVar.l;
        sb2.append(((com.yunpan.appmanage.util.d) r2Var.t(i10)).f4004b);
        sb2.append(":");
        sb2.append(((com.yunpan.appmanage.util.d) r2Var.t(i10)).f4005c);
        editText.setText(sb2.toString());
    }
}
