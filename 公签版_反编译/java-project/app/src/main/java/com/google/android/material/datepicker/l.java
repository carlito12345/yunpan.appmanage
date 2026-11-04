package com.google.android.material.datepicker;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.view.View;
import android.widget.EditText;
import android.widget.Spinner;
import com.hjq.toast.Toaster;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.WpPathBean;
import com.yunpan.appmanage.ui.ActivityCodeEditor;
import com.yunpan.appmanage.util.a0;
import ha.a4;
import ha.a9;
import ha.d2;
import ha.d8;
import ha.f7;
import ha.h1;
import ha.j0;
import ha.j5;
import ha.j6;
import ha.j7;
import ha.m5;
import ha.m6;
import ha.o1;
import ha.o2;
import ha.o6;
import ha.p0;
import ha.p6;
import ha.q2;
import ha.r0;
import ha.r5;
import ha.r7;
import ha.s5;
import ha.t2;
import ha.t8;
import ha.u1;
import ha.v8;
import ha.w3;
import ha.x3;
import ha.x7;
import ha.y3;
import ha.y5;
import ha.y6;
import ha.z1;
import ha.z6;
import ha.ze;
import io.github.rosemoe.sora.widget.CodeEditor;
import java.util.ArrayList;
import org.bouncycastle.jcajce.util.AnnotatedPrivateKey;
import ua.d1;
import ua.i9;
import x9.n5;

/* loaded from: classes.dex */
public final /* synthetic */ class l implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3575a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ View.OnCreateContextMenuListener f3576b;

    public /* synthetic */ l(View.OnCreateContextMenuListener onCreateContextMenuListener, int i10) {
        this.f3575a = i10;
        this.f3576b = onCreateContextMenuListener;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.f3575a) {
            case 0:
                ((n) this.f3576b).i();
                throw null;
            case 1:
                ha.s sVar = (ha.s) this.f3576b;
                boolean z = sVar.f7719q;
                sVar.f7719q = !z;
                sVar.f7714j.setImageResource(!z ? R.drawable.tp_check1 : R.drawable.tp_check2);
                return;
            case 2:
                j0 j0Var = (j0) this.f3576b;
                j0Var.f7232i.e(j0Var.f7233j);
                j0Var.dismiss();
                return;
            case 3:
                r0 r0Var = (r0) this.f3576b;
                r0Var.f7654j = null;
                r0Var.dismiss();
                return;
            case 4:
                h1 h1Var = (h1) this.f3576b;
                h1Var.f7134h.e(h1Var.f7135i.getProgress());
                h1Var.dismiss();
                return;
            case 5:
                z1 z1Var = (z1) this.f3576b;
                boolean z4 = z1Var.f8128p;
                z1Var.f8128p = !z4;
                z1Var.f8124j.setImageResource(!z4 ? R.drawable.tp_check1 : R.drawable.tp_check2);
                return;
            case 6:
                d2 d2Var = (d2) this.f3576b;
                ((u1) d2Var.f6882i).a(((EditText) d2Var.f6883j).getText().toString().trim().toLowerCase());
                d2Var.dismiss();
                return;
            case 7:
                o2 o2Var = (o2) this.f3576b;
                ((ClipboardManager) o2Var.f6724a.getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText(AnnotatedPrivateKey.LABEL, o2Var.f7503h.pack));
                Toaster.show((CharSequence) ("已复制包名：" + o2Var.f7503h.pack));
                return;
            case 8:
                q2 q2Var = (q2) this.f3576b;
                q2Var.f7604j = null;
                q2Var.dismiss();
                return;
            case 9:
                t2 t2Var = (t2) this.f3576b;
                t2Var.f7785j = null;
                t2Var.dismiss();
                return;
            case 10:
                y3 y3Var = (y3) this.f3576b;
                y3Var.f8081j.setText(y3Var.f8078g.isEmpty() ? "导出中" : "导入中");
                new mc.c(0, new w3(y3Var, 2)).d(rc.f.f13757b).a(fc.b.a()).b(new x3(y3Var, 0));
                return;
            case 11:
                a4 a4Var = (a4) this.f3576b;
                if (a4Var.f6727d) {
                    a4Var.dismiss();
                    return;
                }
                return;
            case 12:
                ((j5) this.f3576b).dismiss();
                return;
            case 13:
                ((m5) this.f3576b).dismiss();
                return;
            case 14:
                ((r5) this.f3576b).dismiss();
                return;
            case 15:
                s5 s5Var = (s5) this.f3576b;
                ((ja.b) s5Var.r).l = true;
                s5Var.dismiss();
                return;
            case 16:
                y5.a((y5) this.f3576b);
                return;
            case 17:
                s5 s5Var2 = (s5) this.f3576b;
                s5Var2.getClass();
                com.bumptech.glide.c.i(666, view);
                if (s5Var2.f7734h.getText().toString().equals("连接中")) {
                    return;
                }
                s5Var2.f7734h.setText("连接中");
                String strF = g.b.f((EditText) s5Var2.f7737k);
                n5 n5Var = (n5) s5Var2.f7735i;
                n5Var.f18292c = strF;
                n5Var.f18293d = Integer.parseInt(((EditText) s5Var2.l).getText().toString().trim());
                n5Var.f18294e = g.b.f((EditText) s5Var2.f7738m);
                n5Var.f18295f = ((EditText) s5Var2.f7739n).getText().toString();
                n5Var.f18312y = ((Spinner) s5Var2.f7740p).getSelectedItem().toString();
                int i10 = n5Var.f18290a;
                mc.g gVarA = i10 == 4 ? new mc.c(0, new ba.f(8, n5Var)).d(rc.f.f13757b).a(fc.b.a()) : i10 == 5 ? new mc.c(0, new ba.f(9, n5Var)).d(rc.f.f13757b).a(fc.b.a()) : null;
                if (gVarA == null) {
                    a0.v("出错：observable==null", true);
                    s5Var2.f7734h.setText("连接");
                }
                gVarA.b(new p0(10, s5Var2));
                return;
            case 18:
                j6 j6Var = (j6) this.f3576b;
                if (j6Var.f7268j.getText().equals("开始监听按键")) {
                    j6Var.l.E(new ArrayList());
                    ta.m.b(j6Var.f6725b, true);
                    j6Var.f7270m = 5;
                    j6Var.f7268j.setText("监听按键中(" + j6Var.f7270m + "s)");
                    a0.v("请在" + j6Var.f7270m + "秒内点击您的按键", false);
                    j6Var.f7265g.postDelayed(new a2.h(26, j6Var), 1000L);
                    return;
                }
                return;
            case 19:
                p6 p6Var = (p6) this.f3576b;
                boolean zEquals = p6Var.f7572h.getText().equals("开始监听按键");
                o6 o6Var = p6Var.l;
                if (!zEquals) {
                    try {
                        p6Var.f7575k.unregisterHmiCallback(o6Var);
                    } catch (Exception e7) {
                        e7.printStackTrace();
                    }
                    p6Var.f7572h.setText("开始监听按键");
                    return;
                }
                p6Var.f7572h.setText("停止监听按键");
                p6Var.f7574j.E(new ArrayList());
                try {
                    p6Var.f7575k.registerHmiCallback(o6Var);
                    return;
                } catch (Exception e10) {
                    e10.printStackTrace();
                    return;
                }
            case 20:
                z6 z6Var = (z6) this.f3576b;
                z6Var.getClass();
                com.bumptech.glide.c.j(view);
                z6Var.dismiss();
                ((y6) z6Var.f8156m).n("", false);
                return;
            case 21:
                f7 f7Var = (f7) this.f3576b;
                f7Var.dismiss();
                com.hjq.permissions.b bVar = (com.hjq.permissions.b) f7Var.f7030k;
                String string = f7Var.f7027h.getText().toString();
                switch (bVar.f3750a) {
                    case 16:
                        ((i9) bVar.f3751b).getClass();
                        new mc.c(0, new ba.e((n5) bVar.f3752c, (WpPathBean) bVar.f3753d, string, 9)).d(rc.f.f13757b).a(fc.b.a()).b(new m6(25));
                        return;
                    default:
                        ((ze) bVar.f3751b).getClass();
                        new mc.c(0, new ba.e((n5) bVar.f3752c, (WpPathBean) bVar.f3753d, string, 2)).d(rc.f.f13757b).a(fc.b.a()).b(new m6(24));
                        return;
                }
            case 22:
                f7 f7Var2 = (f7) this.f3576b;
                if (f7Var2.f7027h.getText().toString().isEmpty()) {
                    a0.u("请输入要替换的文本");
                    return;
                }
                f7Var2.dismiss();
                d1 d1Var = (d1) f7Var2.f7030k;
                String string2 = f7Var2.f7027h.getText().toString();
                String string3 = ((EditText) f7Var2.f7029j).getText().toString();
                ActivityCodeEditor activityCodeEditor = d1Var.f15631b;
                if (activityCodeEditor.S) {
                    CodeEditor codeEditor = activityCodeEditor.C;
                    codeEditor.setText(codeEditor.getText().toString().replaceAll(string2, string3));
                    return;
                } else {
                    EditText editText = activityCodeEditor.D;
                    editText.setText(editText.getText().toString().replaceAll(string2, string3));
                    return;
                }
            case 23:
                o1 o1Var = (o1) this.f3576b;
                o1Var.dismiss();
                new j7(o1Var.f6724a, o1Var.f6725b, new h5.m(9, o1Var)).show();
                return;
            case 24:
                r7 r7Var = (r7) this.f3576b;
                if (r7Var.f7689j.getText().toString().equals("搜寻")) {
                    r7Var.f7689j.setText("搜寻中");
                    com.yunpan.appmanage.util.h hVar = r7Var.f7690k;
                    if (hVar.f4030f) {
                        return;
                    }
                    hVar.f4030f = true;
                    hVar.f4027c.set(false);
                    new Thread(new com.yunpan.appmanage.util.g(hVar, 0)).start();
                    return;
                }
                return;
            case 25:
                x7 x7Var = (x7) this.f3576b;
                boolean z10 = x7Var.f8052s;
                x7Var.f8052s = !z10;
                x7Var.f8045i.setImageResource(!z10 ? R.drawable.tp_check1 : R.drawable.tp_check2);
                return;
            case 26:
                d8 d8Var = (d8) this.f3576b;
                boolean z11 = d8Var.f6896g;
                d8Var.f6896g = !z11;
                d8Var.f6899j.setImageResource(!z11 ? R.drawable.tp_check1 : R.drawable.tp_check2);
                return;
            case 27:
                t8 t8Var = (t8) this.f3576b;
                z7.s sVar2 = t8Var.I;
                boolean zB = sVar2.o("isOpen").b();
                t8Var.f7807i.setImageResource(!zB ? R.drawable.tp_check1 : R.drawable.tp_check2);
                sVar2.k("isOpen", Boolean.valueOf(!zB));
                return;
            case 28:
                v8 v8Var = (v8) this.f3576b;
                z7.s sVar3 = v8Var.r;
                boolean zB2 = sVar3.o("isOpen").b();
                v8Var.f7921h.setImageResource(!zB2 ? R.drawable.tp_check1 : R.drawable.tp_check2);
                sVar3.k("isOpen", Boolean.valueOf(!zB2));
                return;
            default:
                a9 a9Var = (a9) this.f3576b;
                z7.s sVar4 = a9Var.f6745s;
                boolean zB3 = sVar4.o("isOpen").b();
                a9Var.f6738i.setImageResource(!zB3 ? R.drawable.tp_check1 : R.drawable.tp_check2);
                sVar4.k("isOpen", Boolean.valueOf(!zB3));
                return;
        }
    }
}
