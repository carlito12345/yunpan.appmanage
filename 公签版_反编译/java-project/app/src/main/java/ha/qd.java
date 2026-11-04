package ha;

import android.app.Activity;
import android.content.Context;
import android.graphics.Typeface;
import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import com.yunpan.appmanage.R;
import io.github.rosemoe.sora.widget.CodeEditor;
import j$.nio.charset.StandardCharsets;
import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.net.SocketTimeoutException;
import java.nio.charset.Charset;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final class qd extends a4 {

    /* renamed from: g, reason: collision with root package name */
    public gh.a f7637g;

    /* renamed from: h, reason: collision with root package name */
    public TextView f7638h;

    /* renamed from: i, reason: collision with root package name */
    public TextView f7639i;

    /* renamed from: j, reason: collision with root package name */
    public TextView f7640j;

    /* renamed from: k, reason: collision with root package name */
    public TextView f7641k;
    public EditText l;

    /* renamed from: m, reason: collision with root package name */
    public CodeEditor f7642m;

    /* renamed from: n, reason: collision with root package name */
    public BufferedInputStream f7643n;

    /* renamed from: p, reason: collision with root package name */
    public gh.c f7644p;

    /* renamed from: q, reason: collision with root package name */
    public final AtomicBoolean f7645q;
    public final Pattern r;

    /* renamed from: s, reason: collision with root package name */
    public u9 f7646s;

    public qd(Activity activity, Context context, gh.a aVar) {
        super(activity, context, R.layout.dialog_telnet_shell);
        this.f7645q = new AtomicBoolean(false);
        this.r = Pattern.compile("\u001b\\[[\\x30-\\x3F]*[\\x20-\\x2F]*[\\x40-\\x7E]");
        this.f7637g = aVar;
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        try {
            this.f7637g.d();
        } catch (Exception unused) {
        }
        this.f7643n = null;
        this.f7644p = null;
        this.f7637g = null;
        super.dismiss();
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        gh.a aVar = this.f7637g;
        if (aVar == null || !aVar.f()) {
            com.yunpan.appmanage.util.a0.t("连接已断开");
            dismiss();
            return;
        }
        com.yunpan.appmanage.util.a0.w("连接成功");
        gh.a aVar2 = this.f7637g;
        this.f7643n = aVar2.r;
        this.f7644p = aVar2.f6177s;
        this.f7641k = (TextView) findViewById(R.id.v_btn_install);
        this.f7638h = (TextView) findViewById(R.id.v_btn_select);
        this.f7639i = (TextView) findViewById(R.id.v_btn_exec);
        this.l = (EditText) findViewById(R.id.v_edit_shell);
        this.f7642m = (CodeEditor) findViewById(R.id.v_edit);
        this.f7640j = (TextView) findViewById(R.id.v_btn_close);
        this.f7638h.setOnClickListener(new z3(1));
        final int i10 = 0;
        this.f7641k.setOnClickListener(new View.OnClickListener(this) { // from class: ha.nd

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ qd f7491b;

            {
                this.f7491b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i10) {
                    case 0:
                        qd qdVar = this.f7491b;
                        if (!qdVar.f7645q.get()) {
                            com.yunpan.appmanage.util.a0.u("请稍后再试");
                            break;
                        } else {
                            d.b.k0(1).b(new pd(qdVar, 0));
                            break;
                        }
                    case 1:
                        this.f7491b.dismiss();
                        break;
                    default:
                        qd qdVar2 = this.f7491b;
                        String strF = g.b.f(qdVar2.l);
                        if (!strF.isEmpty()) {
                            new fg.b(new a2.c0(qdVar2, 23, strF), 1).start();
                            break;
                        } else {
                            com.yunpan.appmanage.util.a0.t("请输入命令");
                            break;
                        }
                }
            }
        });
        final int i11 = 1;
        this.f7640j.setOnClickListener(new View.OnClickListener(this) { // from class: ha.nd

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ qd f7491b;

            {
                this.f7491b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i11) {
                    case 0:
                        qd qdVar = this.f7491b;
                        if (!qdVar.f7645q.get()) {
                            com.yunpan.appmanage.util.a0.u("请稍后再试");
                            break;
                        } else {
                            d.b.k0(1).b(new pd(qdVar, 0));
                            break;
                        }
                    case 1:
                        this.f7491b.dismiss();
                        break;
                    default:
                        qd qdVar2 = this.f7491b;
                        String strF = g.b.f(qdVar2.l);
                        if (!strF.isEmpty()) {
                            new fg.b(new a2.c0(qdVar2, 23, strF), 1).start();
                            break;
                        } else {
                            com.yunpan.appmanage.util.a0.t("请输入命令");
                            break;
                        }
                }
            }
        });
        final int i12 = 2;
        this.f7639i.setOnClickListener(new View.OnClickListener(this) { // from class: ha.nd

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ qd f7491b;

            {
                this.f7491b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i12) {
                    case 0:
                        qd qdVar = this.f7491b;
                        if (!qdVar.f7645q.get()) {
                            com.yunpan.appmanage.util.a0.u("请稍后再试");
                            break;
                        } else {
                            d.b.k0(1).b(new pd(qdVar, 0));
                            break;
                        }
                    case 1:
                        this.f7491b.dismiss();
                        break;
                    default:
                        qd qdVar2 = this.f7491b;
                        String strF = g.b.f(qdVar2.l);
                        if (!strF.isEmpty()) {
                            new fg.b(new a2.c0(qdVar2, 23, strF), 1).start();
                            break;
                        } else {
                            com.yunpan.appmanage.util.a0.t("请输入命令");
                            break;
                        }
                }
            }
        });
        CodeEditor codeEditor = this.f7642m;
        Context context = this.f6725b;
        codeEditor.setCursorWidth(context.getResources().getDimensionPixelSize(R.dimen.dp_4));
        CodeEditor codeEditor2 = this.f7642m;
        Typeface typeface = Typeface.MONOSPACE;
        codeEditor2.setTypefaceText(typeface);
        this.f7642m.setTypefaceText(typeface);
        CodeEditor codeEditor3 = this.f7642m;
        codeEditor3.B = 2.0f;
        codeEditor3.A = 1.1f;
        codeEditor3.setWordwrap(false);
        this.f7642m.setLineNumberEnabled(true);
        this.f7642m.setScalable(true);
        final int i13 = 0;
        mc.c cVar = new mc.c(0, new ec.d(this) { // from class: ha.od

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ qd f7543b;

            {
                this.f7543b = this;
            }

            @Override // ec.d
            public final void g(mc.b bVar) throws InterruptedException, IOException {
                gh.a aVar3;
                int i14;
                switch (i13) {
                    case 0:
                        ic.a aVar4 = ic.a.f8651a;
                        qd qdVar = this.f7543b;
                        qdVar.getClass();
                        try {
                            BufferedInputStream bufferedInputStream = qdVar.f7643n;
                            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                            byte[] bArr = new byte[1024];
                            while (true) {
                                if (!(((gc.b) bVar.get()) == aVar4) && (aVar3 = qdVar.f7637g) != null && aVar3.f() && bufferedInputStream != null) {
                                    if (bufferedInputStream.available() > 0) {
                                        try {
                                            i14 = bufferedInputStream.read(bArr);
                                        } catch (SocketTimeoutException unused) {
                                            i14 = 0;
                                        }
                                        if (i14 > 0) {
                                            byteArrayOutputStream.write(bArr, 0, i14);
                                            String strReplaceAll = qdVar.r.matcher(new String(byteArrayOutputStream.toByteArray(), StandardCharsets.UTF_8)).replaceAll("");
                                            byteArrayOutputStream.reset();
                                            System.out.getClass();
                                            if (qdVar.f7645q.get()) {
                                                bVar.f(strReplaceAll);
                                            }
                                        }
                                    } else {
                                        Thread.sleep(50L);
                                    }
                                }
                            }
                        } catch (Exception e7) {
                            e7.printStackTrace();
                            com.yunpan.appmanage.util.a0.t("连接已断开");
                            if (((gc.b) bVar.get()) == aVar4) {
                                return;
                            }
                            bVar.d(e7);
                            return;
                        }
                        break;
                    default:
                        qd qdVar2 = this.f7543b;
                        qdVar2.getClass();
                        try {
                            synchronized (qdVar2.f7644p) {
                                gh.c cVar2 = qdVar2.f7644p;
                                Charset charset = StandardCharsets.UTF_8;
                                cVar2.write("strprop persist.service.adb.button.visible ON\n".getBytes(charset));
                                qdVar2.f7644p.flush();
                                Thread.sleep(250L);
                                qdVar2.f7644p.write("strprop service.adb.tcp.port 5555\n".getBytes(charset));
                                qdVar2.f7644p.flush();
                                Thread.sleep(250L);
                                qdVar2.f7644p.write("strprop ctl.restart adbd\n".getBytes(charset));
                                qdVar2.f7644p.flush();
                                Thread.sleep(2000L);
                                qdVar2.f7645q.set(true);
                            }
                            break;
                        } catch (Exception unused2) {
                            return;
                        }
                }
            }
        });
        ec.j jVar = rc.f.f13757b;
        cVar.d(jVar).a(fc.b.a()).b(new pd(this, 1));
        final int i14 = 1;
        new mc.c(0, new ec.d(this) { // from class: ha.od

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ qd f7543b;

            {
                this.f7543b = this;
            }

            @Override // ec.d
            public final void g(mc.b bVar) throws InterruptedException, IOException {
                gh.a aVar3;
                int i142;
                switch (i14) {
                    case 0:
                        ic.a aVar4 = ic.a.f8651a;
                        qd qdVar = this.f7543b;
                        qdVar.getClass();
                        try {
                            BufferedInputStream bufferedInputStream = qdVar.f7643n;
                            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                            byte[] bArr = new byte[1024];
                            while (true) {
                                if (!(((gc.b) bVar.get()) == aVar4) && (aVar3 = qdVar.f7637g) != null && aVar3.f() && bufferedInputStream != null) {
                                    if (bufferedInputStream.available() > 0) {
                                        try {
                                            i142 = bufferedInputStream.read(bArr);
                                        } catch (SocketTimeoutException unused) {
                                            i142 = 0;
                                        }
                                        if (i142 > 0) {
                                            byteArrayOutputStream.write(bArr, 0, i142);
                                            String strReplaceAll = qdVar.r.matcher(new String(byteArrayOutputStream.toByteArray(), StandardCharsets.UTF_8)).replaceAll("");
                                            byteArrayOutputStream.reset();
                                            System.out.getClass();
                                            if (qdVar.f7645q.get()) {
                                                bVar.f(strReplaceAll);
                                            }
                                        }
                                    } else {
                                        Thread.sleep(50L);
                                    }
                                }
                            }
                        } catch (Exception e7) {
                            e7.printStackTrace();
                            com.yunpan.appmanage.util.a0.t("连接已断开");
                            if (((gc.b) bVar.get()) == aVar4) {
                                return;
                            }
                            bVar.d(e7);
                            return;
                        }
                        break;
                    default:
                        qd qdVar2 = this.f7543b;
                        qdVar2.getClass();
                        try {
                            synchronized (qdVar2.f7644p) {
                                gh.c cVar2 = qdVar2.f7644p;
                                Charset charset = StandardCharsets.UTF_8;
                                cVar2.write("strprop persist.service.adb.button.visible ON\n".getBytes(charset));
                                qdVar2.f7644p.flush();
                                Thread.sleep(250L);
                                qdVar2.f7644p.write("strprop service.adb.tcp.port 5555\n".getBytes(charset));
                                qdVar2.f7644p.flush();
                                Thread.sleep(250L);
                                qdVar2.f7644p.write("strprop ctl.restart adbd\n".getBytes(charset));
                                qdVar2.f7644p.flush();
                                Thread.sleep(2000L);
                                qdVar2.f7645q.set(true);
                            }
                            break;
                        } catch (Exception unused2) {
                            return;
                        }
                }
            }
        }).d(jVar).a(fc.b.a()).b(new l2(28));
        this.f7646s = new u9(this.f6724a, context);
    }
}
