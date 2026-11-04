package ha;

import android.app.Activity;
import android.content.ClipboardManager;
import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import android.text.Selection;
import android.view.KeyEvent;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.hjq.toast.Toaster;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7LinearLayoutManager;
import com.yunpan.appmanage.R;
import java.io.File;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class ba extends a4 {

    /* renamed from: g, reason: collision with root package name */
    public TextView f6809g;

    /* renamed from: h, reason: collision with root package name */
    public TvRecyclerView f6810h;

    /* renamed from: i, reason: collision with root package name */
    public x9.t0 f6811i;

    /* renamed from: j, reason: collision with root package name */
    public g0.e f6812j;

    /* renamed from: k, reason: collision with root package name */
    public TextView f6813k;
    public ConstraintLayout l;

    /* renamed from: m, reason: collision with root package name */
    public EditText f6814m;

    /* renamed from: n, reason: collision with root package name */
    public final ArrayList f6815n;

    /* renamed from: p, reason: collision with root package name */
    public final HashMap f6816p;

    /* renamed from: q, reason: collision with root package name */
    public final com.yunpan.appmanage.carsdk.u f6817q;

    public ba(Activity activity, Context context) {
        super(activity, context, R.layout.dialog_logcat);
        this.f6815n = new ArrayList();
        this.f6816p = new HashMap();
        this.f6817q = new com.yunpan.appmanage.carsdk.u(this, Looper.getMainLooper(), 8);
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f6812j.k();
        v8.b.c("LogcatDialog");
        this.f6809g.setText("开始监听");
        super.dismiss();
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        new mc.c(0, new x9(this)).d(rc.f.f13757b).a(fc.b.a()).b(new l2(28));
        this.f6812j = new g0.e();
        this.f6813k = (TextView) findViewById(R.id.v_count);
        ConstraintLayout constraintLayout = (ConstraintLayout) findViewById(R.id.v_lay_search);
        this.l = constraintLayout;
        constraintLayout.setVisibility(8);
        final int i10 = 0;
        findViewById(R.id.v_btn_save).setOnClickListener(new View.OnClickListener(this) { // from class: ha.w9

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ba f8007b;

            {
                this.f8007b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                File file;
                int i11 = 18;
                int i12 = 15;
                int iC = 0;
                ba baVar = this.f8007b;
                switch (i10) {
                    case 0:
                        if (baVar.f6811i.b() == 0) {
                            com.yunpan.appmanage.util.a0.u("请先监听日志");
                            break;
                        } else {
                            fa.h0 h0Var = fa.g0.f5682a;
                            if (h0Var.d().isEmpty()) {
                                DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                                if (com.yunpan.appmanage.util.j.f4033a.f4073v.isEmpty()) {
                                    com.yunpan.appmanage.util.a0.u("没有内部存储，无法保存");
                                    break;
                                }
                            }
                            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd日HH时mm分ss秒");
                            if (h0Var.d().isEmpty()) {
                                file = null;
                            } else {
                                file = new File(g.b.g(h0Var, new StringBuilder(), "/Download"), "日志_" + simpleDateFormat.format(new Date()) + ".log");
                            }
                            if (file == null) {
                                DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
                                com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
                                if (!kVar.f4073v.isEmpty()) {
                                    file = new File(g.b.l((String) kVar.f4073v.iterator().next(), "/Download", new StringBuilder()), "日志_" + simpleDateFormat.format(new Date()) + ".log");
                                }
                            }
                            if (file == null) {
                                com.yunpan.appmanage.util.a0.u("没有内部存储，无法保存");
                                break;
                            } else {
                                try {
                                    file.getParentFile().mkdir();
                                    new z6(baVar.f6724a, baVar.f6725b, "保存文件名", file.getName(), "请输入文件名", "确定", "取消", new y9(baVar, file)).show();
                                    break;
                                } catch (Exception unused) {
                                    com.yunpan.appmanage.util.a0.u("保存失败");
                                    return;
                                }
                            }
                        }
                    case 1:
                        ArrayList arrayList = baVar.f6815n;
                        arrayList.clear();
                        baVar.f6811i.E(arrayList);
                        baVar.f6813k.setText("0");
                        break;
                    case 2:
                        baVar.dismiss();
                        break;
                    case 3:
                        if (baVar.l.getVisibility() != 0) {
                            if (!baVar.f6809g.getText().equals("开始监听")) {
                                Toaster.show((CharSequence) "请先停止监听日志");
                                break;
                            } else {
                                baVar.l.setVisibility(0);
                                baVar.f6813k.setVisibility(8);
                                break;
                            }
                        } else {
                            baVar.l.setVisibility(8);
                            baVar.f6813k.setVisibility(0);
                            break;
                        }
                    case 4:
                        baVar.getClass();
                        String[] strArr = {"KeyCode", "keyCode", "event", "InputCode", "ACTION_", "keyEvent", "function", "functionId", "action", "Door", "door", "downTime", "CarServer", "gear", "Gear", "lamp", "Lamp", "ign", "IGN"};
                        ArrayList arrayList2 = new ArrayList(19);
                        while (iC < 19) {
                            String str = strArr[iC];
                            iC = g.b.c(str, arrayList2, str, iC, 1);
                        }
                        new fa(baVar.f6724a, baVar.f6725b, null, Collections.unmodifiableList(arrayList2), new d2.w(baVar, i11, strArr)).show();
                        break;
                    default:
                        Context context = baVar.f6725b;
                        if (!baVar.f6809g.getText().equals("开始监听")) {
                            baVar.f6812j.k();
                            baVar.f6809g.setText("开始监听");
                            break;
                        } else {
                            try {
                                if (context.getPackageManager().checkPermission("android.permission.READ_LOGS", context.getPackageName()) != 0) {
                                    new z6(baVar.f6724a, context, "请授予" + context.getResources().getString(R.string.app_name) + "【读取系统日志】权限", "").show();
                                    break;
                                }
                            } catch (Exception unused2) {
                            }
                            baVar.f6809g.setText("停止监听");
                            baVar.l.setVisibility(8);
                            baVar.f6813k.setVisibility(0);
                            ArrayList arrayList3 = baVar.f6815n;
                            arrayList3.clear();
                            baVar.f6811i.E(arrayList3);
                            baVar.f6813k.setText("0");
                            g0.e eVar = baVar.f6812j;
                            HashMap map = baVar.f6816p;
                            eVar.getClass();
                            new mc.c(0, new ma.b(eVar, 4, map)).d(rc.f.f13757b).a(fc.b.a()).b(new p0(i12, baVar));
                            break;
                        }
                }
            }
        });
        final int i11 = 1;
        findViewById(R.id.v_btn_delete).setOnClickListener(new View.OnClickListener(this) { // from class: ha.w9

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ba f8007b;

            {
                this.f8007b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                File file;
                int i112 = 18;
                int i12 = 15;
                int iC = 0;
                ba baVar = this.f8007b;
                switch (i11) {
                    case 0:
                        if (baVar.f6811i.b() == 0) {
                            com.yunpan.appmanage.util.a0.u("请先监听日志");
                            break;
                        } else {
                            fa.h0 h0Var = fa.g0.f5682a;
                            if (h0Var.d().isEmpty()) {
                                DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                                if (com.yunpan.appmanage.util.j.f4033a.f4073v.isEmpty()) {
                                    com.yunpan.appmanage.util.a0.u("没有内部存储，无法保存");
                                    break;
                                }
                            }
                            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd日HH时mm分ss秒");
                            if (h0Var.d().isEmpty()) {
                                file = null;
                            } else {
                                file = new File(g.b.g(h0Var, new StringBuilder(), "/Download"), "日志_" + simpleDateFormat.format(new Date()) + ".log");
                            }
                            if (file == null) {
                                DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
                                com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
                                if (!kVar.f4073v.isEmpty()) {
                                    file = new File(g.b.l((String) kVar.f4073v.iterator().next(), "/Download", new StringBuilder()), "日志_" + simpleDateFormat.format(new Date()) + ".log");
                                }
                            }
                            if (file == null) {
                                com.yunpan.appmanage.util.a0.u("没有内部存储，无法保存");
                                break;
                            } else {
                                try {
                                    file.getParentFile().mkdir();
                                    new z6(baVar.f6724a, baVar.f6725b, "保存文件名", file.getName(), "请输入文件名", "确定", "取消", new y9(baVar, file)).show();
                                    break;
                                } catch (Exception unused) {
                                    com.yunpan.appmanage.util.a0.u("保存失败");
                                    return;
                                }
                            }
                        }
                    case 1:
                        ArrayList arrayList = baVar.f6815n;
                        arrayList.clear();
                        baVar.f6811i.E(arrayList);
                        baVar.f6813k.setText("0");
                        break;
                    case 2:
                        baVar.dismiss();
                        break;
                    case 3:
                        if (baVar.l.getVisibility() != 0) {
                            if (!baVar.f6809g.getText().equals("开始监听")) {
                                Toaster.show((CharSequence) "请先停止监听日志");
                                break;
                            } else {
                                baVar.l.setVisibility(0);
                                baVar.f6813k.setVisibility(8);
                                break;
                            }
                        } else {
                            baVar.l.setVisibility(8);
                            baVar.f6813k.setVisibility(0);
                            break;
                        }
                    case 4:
                        baVar.getClass();
                        String[] strArr = {"KeyCode", "keyCode", "event", "InputCode", "ACTION_", "keyEvent", "function", "functionId", "action", "Door", "door", "downTime", "CarServer", "gear", "Gear", "lamp", "Lamp", "ign", "IGN"};
                        ArrayList arrayList2 = new ArrayList(19);
                        while (iC < 19) {
                            String str = strArr[iC];
                            iC = g.b.c(str, arrayList2, str, iC, 1);
                        }
                        new fa(baVar.f6724a, baVar.f6725b, null, Collections.unmodifiableList(arrayList2), new d2.w(baVar, i112, strArr)).show();
                        break;
                    default:
                        Context context = baVar.f6725b;
                        if (!baVar.f6809g.getText().equals("开始监听")) {
                            baVar.f6812j.k();
                            baVar.f6809g.setText("开始监听");
                            break;
                        } else {
                            try {
                                if (context.getPackageManager().checkPermission("android.permission.READ_LOGS", context.getPackageName()) != 0) {
                                    new z6(baVar.f6724a, context, "请授予" + context.getResources().getString(R.string.app_name) + "【读取系统日志】权限", "").show();
                                    break;
                                }
                            } catch (Exception unused2) {
                            }
                            baVar.f6809g.setText("停止监听");
                            baVar.l.setVisibility(8);
                            baVar.f6813k.setVisibility(0);
                            ArrayList arrayList3 = baVar.f6815n;
                            arrayList3.clear();
                            baVar.f6811i.E(arrayList3);
                            baVar.f6813k.setText("0");
                            g0.e eVar = baVar.f6812j;
                            HashMap map = baVar.f6816p;
                            eVar.getClass();
                            new mc.c(0, new ma.b(eVar, 4, map)).d(rc.f.f13757b).a(fc.b.a()).b(new p0(i12, baVar));
                            break;
                        }
                }
            }
        });
        final int i12 = 2;
        findViewById(R.id.v_btn_close).setOnClickListener(new View.OnClickListener(this) { // from class: ha.w9

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ba f8007b;

            {
                this.f8007b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                File file;
                int i112 = 18;
                int i122 = 15;
                int iC = 0;
                ba baVar = this.f8007b;
                switch (i12) {
                    case 0:
                        if (baVar.f6811i.b() == 0) {
                            com.yunpan.appmanage.util.a0.u("请先监听日志");
                            break;
                        } else {
                            fa.h0 h0Var = fa.g0.f5682a;
                            if (h0Var.d().isEmpty()) {
                                DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                                if (com.yunpan.appmanage.util.j.f4033a.f4073v.isEmpty()) {
                                    com.yunpan.appmanage.util.a0.u("没有内部存储，无法保存");
                                    break;
                                }
                            }
                            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd日HH时mm分ss秒");
                            if (h0Var.d().isEmpty()) {
                                file = null;
                            } else {
                                file = new File(g.b.g(h0Var, new StringBuilder(), "/Download"), "日志_" + simpleDateFormat.format(new Date()) + ".log");
                            }
                            if (file == null) {
                                DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
                                com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
                                if (!kVar.f4073v.isEmpty()) {
                                    file = new File(g.b.l((String) kVar.f4073v.iterator().next(), "/Download", new StringBuilder()), "日志_" + simpleDateFormat.format(new Date()) + ".log");
                                }
                            }
                            if (file == null) {
                                com.yunpan.appmanage.util.a0.u("没有内部存储，无法保存");
                                break;
                            } else {
                                try {
                                    file.getParentFile().mkdir();
                                    new z6(baVar.f6724a, baVar.f6725b, "保存文件名", file.getName(), "请输入文件名", "确定", "取消", new y9(baVar, file)).show();
                                    break;
                                } catch (Exception unused) {
                                    com.yunpan.appmanage.util.a0.u("保存失败");
                                    return;
                                }
                            }
                        }
                    case 1:
                        ArrayList arrayList = baVar.f6815n;
                        arrayList.clear();
                        baVar.f6811i.E(arrayList);
                        baVar.f6813k.setText("0");
                        break;
                    case 2:
                        baVar.dismiss();
                        break;
                    case 3:
                        if (baVar.l.getVisibility() != 0) {
                            if (!baVar.f6809g.getText().equals("开始监听")) {
                                Toaster.show((CharSequence) "请先停止监听日志");
                                break;
                            } else {
                                baVar.l.setVisibility(0);
                                baVar.f6813k.setVisibility(8);
                                break;
                            }
                        } else {
                            baVar.l.setVisibility(8);
                            baVar.f6813k.setVisibility(0);
                            break;
                        }
                    case 4:
                        baVar.getClass();
                        String[] strArr = {"KeyCode", "keyCode", "event", "InputCode", "ACTION_", "keyEvent", "function", "functionId", "action", "Door", "door", "downTime", "CarServer", "gear", "Gear", "lamp", "Lamp", "ign", "IGN"};
                        ArrayList arrayList2 = new ArrayList(19);
                        while (iC < 19) {
                            String str = strArr[iC];
                            iC = g.b.c(str, arrayList2, str, iC, 1);
                        }
                        new fa(baVar.f6724a, baVar.f6725b, null, Collections.unmodifiableList(arrayList2), new d2.w(baVar, i112, strArr)).show();
                        break;
                    default:
                        Context context = baVar.f6725b;
                        if (!baVar.f6809g.getText().equals("开始监听")) {
                            baVar.f6812j.k();
                            baVar.f6809g.setText("开始监听");
                            break;
                        } else {
                            try {
                                if (context.getPackageManager().checkPermission("android.permission.READ_LOGS", context.getPackageName()) != 0) {
                                    new z6(baVar.f6724a, context, "请授予" + context.getResources().getString(R.string.app_name) + "【读取系统日志】权限", "").show();
                                    break;
                                }
                            } catch (Exception unused2) {
                            }
                            baVar.f6809g.setText("停止监听");
                            baVar.l.setVisibility(8);
                            baVar.f6813k.setVisibility(0);
                            ArrayList arrayList3 = baVar.f6815n;
                            arrayList3.clear();
                            baVar.f6811i.E(arrayList3);
                            baVar.f6813k.setText("0");
                            g0.e eVar = baVar.f6812j;
                            HashMap map = baVar.f6816p;
                            eVar.getClass();
                            new mc.c(0, new ma.b(eVar, 4, map)).d(rc.f.f13757b).a(fc.b.a()).b(new p0(i122, baVar));
                            break;
                        }
                }
            }
        });
        final TextView textView = (TextView) findViewById(R.id.v_btn_search);
        final int i13 = 3;
        textView.setOnClickListener(new View.OnClickListener(this) { // from class: ha.w9

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ba f8007b;

            {
                this.f8007b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                File file;
                int i112 = 18;
                int i122 = 15;
                int iC = 0;
                ba baVar = this.f8007b;
                switch (i13) {
                    case 0:
                        if (baVar.f6811i.b() == 0) {
                            com.yunpan.appmanage.util.a0.u("请先监听日志");
                            break;
                        } else {
                            fa.h0 h0Var = fa.g0.f5682a;
                            if (h0Var.d().isEmpty()) {
                                DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                                if (com.yunpan.appmanage.util.j.f4033a.f4073v.isEmpty()) {
                                    com.yunpan.appmanage.util.a0.u("没有内部存储，无法保存");
                                    break;
                                }
                            }
                            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd日HH时mm分ss秒");
                            if (h0Var.d().isEmpty()) {
                                file = null;
                            } else {
                                file = new File(g.b.g(h0Var, new StringBuilder(), "/Download"), "日志_" + simpleDateFormat.format(new Date()) + ".log");
                            }
                            if (file == null) {
                                DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
                                com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
                                if (!kVar.f4073v.isEmpty()) {
                                    file = new File(g.b.l((String) kVar.f4073v.iterator().next(), "/Download", new StringBuilder()), "日志_" + simpleDateFormat.format(new Date()) + ".log");
                                }
                            }
                            if (file == null) {
                                com.yunpan.appmanage.util.a0.u("没有内部存储，无法保存");
                                break;
                            } else {
                                try {
                                    file.getParentFile().mkdir();
                                    new z6(baVar.f6724a, baVar.f6725b, "保存文件名", file.getName(), "请输入文件名", "确定", "取消", new y9(baVar, file)).show();
                                    break;
                                } catch (Exception unused) {
                                    com.yunpan.appmanage.util.a0.u("保存失败");
                                    return;
                                }
                            }
                        }
                    case 1:
                        ArrayList arrayList = baVar.f6815n;
                        arrayList.clear();
                        baVar.f6811i.E(arrayList);
                        baVar.f6813k.setText("0");
                        break;
                    case 2:
                        baVar.dismiss();
                        break;
                    case 3:
                        if (baVar.l.getVisibility() != 0) {
                            if (!baVar.f6809g.getText().equals("开始监听")) {
                                Toaster.show((CharSequence) "请先停止监听日志");
                                break;
                            } else {
                                baVar.l.setVisibility(0);
                                baVar.f6813k.setVisibility(8);
                                break;
                            }
                        } else {
                            baVar.l.setVisibility(8);
                            baVar.f6813k.setVisibility(0);
                            break;
                        }
                    case 4:
                        baVar.getClass();
                        String[] strArr = {"KeyCode", "keyCode", "event", "InputCode", "ACTION_", "keyEvent", "function", "functionId", "action", "Door", "door", "downTime", "CarServer", "gear", "Gear", "lamp", "Lamp", "ign", "IGN"};
                        ArrayList arrayList2 = new ArrayList(19);
                        while (iC < 19) {
                            String str = strArr[iC];
                            iC = g.b.c(str, arrayList2, str, iC, 1);
                        }
                        new fa(baVar.f6724a, baVar.f6725b, null, Collections.unmodifiableList(arrayList2), new d2.w(baVar, i112, strArr)).show();
                        break;
                    default:
                        Context context = baVar.f6725b;
                        if (!baVar.f6809g.getText().equals("开始监听")) {
                            baVar.f6812j.k();
                            baVar.f6809g.setText("开始监听");
                            break;
                        } else {
                            try {
                                if (context.getPackageManager().checkPermission("android.permission.READ_LOGS", context.getPackageName()) != 0) {
                                    new z6(baVar.f6724a, context, "请授予" + context.getResources().getString(R.string.app_name) + "【读取系统日志】权限", "").show();
                                    break;
                                }
                            } catch (Exception unused2) {
                            }
                            baVar.f6809g.setText("停止监听");
                            baVar.l.setVisibility(8);
                            baVar.f6813k.setVisibility(0);
                            ArrayList arrayList3 = baVar.f6815n;
                            arrayList3.clear();
                            baVar.f6811i.E(arrayList3);
                            baVar.f6813k.setText("0");
                            g0.e eVar = baVar.f6812j;
                            HashMap map = baVar.f6816p;
                            eVar.getClass();
                            new mc.c(0, new ma.b(eVar, 4, map)).d(rc.f.f13757b).a(fc.b.a()).b(new p0(i122, baVar));
                            break;
                        }
                }
            }
        });
        this.f6814m = (EditText) findViewById(R.id.v_edit_search_key);
        final TextView textView2 = (TextView) findViewById(R.id.v_btn_select_key);
        this.f6814m.setOnKeyListener(new View.OnKeyListener() { // from class: ha.z9
            @Override // android.view.View.OnKeyListener
            public final boolean onKey(View view, int i14, KeyEvent keyEvent) {
                ba baVar = this.f8163a;
                baVar.getClass();
                if (i14 == 20) {
                    if (keyEvent.getAction() == 0 && baVar.f6811i.b() > 0) {
                        baVar.f6810h.requestFocus();
                        baVar.f6810h.setSelection(0);
                        baVar.l.setVisibility(8);
                    }
                } else if (i14 == 21) {
                    if (keyEvent.getAction() != 0 || Selection.getSelectionStart(baVar.f6814m.getText()) != 0 || Selection.getSelectionEnd(baVar.f6814m.getText()) != 0) {
                        return false;
                    }
                    textView.requestFocus();
                    baVar.l.setVisibility(8);
                } else {
                    if (i14 != 22 || keyEvent.getAction() != 0 || Selection.getSelectionStart(baVar.f6814m.getText()) != baVar.f6814m.getText().length() || Selection.getSelectionEnd(baVar.f6814m.getText()) != baVar.f6814m.getText().length()) {
                        return false;
                    }
                    textView2.requestFocus();
                }
                return true;
            }
        });
        this.f6814m.addTextChangedListener(new aa(this, 0));
        final int i14 = 4;
        textView2.setOnClickListener(new View.OnClickListener(this) { // from class: ha.w9

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ba f8007b;

            {
                this.f8007b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                File file;
                int i112 = 18;
                int i122 = 15;
                int iC = 0;
                ba baVar = this.f8007b;
                switch (i14) {
                    case 0:
                        if (baVar.f6811i.b() == 0) {
                            com.yunpan.appmanage.util.a0.u("请先监听日志");
                            break;
                        } else {
                            fa.h0 h0Var = fa.g0.f5682a;
                            if (h0Var.d().isEmpty()) {
                                DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                                if (com.yunpan.appmanage.util.j.f4033a.f4073v.isEmpty()) {
                                    com.yunpan.appmanage.util.a0.u("没有内部存储，无法保存");
                                    break;
                                }
                            }
                            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd日HH时mm分ss秒");
                            if (h0Var.d().isEmpty()) {
                                file = null;
                            } else {
                                file = new File(g.b.g(h0Var, new StringBuilder(), "/Download"), "日志_" + simpleDateFormat.format(new Date()) + ".log");
                            }
                            if (file == null) {
                                DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
                                com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
                                if (!kVar.f4073v.isEmpty()) {
                                    file = new File(g.b.l((String) kVar.f4073v.iterator().next(), "/Download", new StringBuilder()), "日志_" + simpleDateFormat.format(new Date()) + ".log");
                                }
                            }
                            if (file == null) {
                                com.yunpan.appmanage.util.a0.u("没有内部存储，无法保存");
                                break;
                            } else {
                                try {
                                    file.getParentFile().mkdir();
                                    new z6(baVar.f6724a, baVar.f6725b, "保存文件名", file.getName(), "请输入文件名", "确定", "取消", new y9(baVar, file)).show();
                                    break;
                                } catch (Exception unused) {
                                    com.yunpan.appmanage.util.a0.u("保存失败");
                                    return;
                                }
                            }
                        }
                    case 1:
                        ArrayList arrayList = baVar.f6815n;
                        arrayList.clear();
                        baVar.f6811i.E(arrayList);
                        baVar.f6813k.setText("0");
                        break;
                    case 2:
                        baVar.dismiss();
                        break;
                    case 3:
                        if (baVar.l.getVisibility() != 0) {
                            if (!baVar.f6809g.getText().equals("开始监听")) {
                                Toaster.show((CharSequence) "请先停止监听日志");
                                break;
                            } else {
                                baVar.l.setVisibility(0);
                                baVar.f6813k.setVisibility(8);
                                break;
                            }
                        } else {
                            baVar.l.setVisibility(8);
                            baVar.f6813k.setVisibility(0);
                            break;
                        }
                    case 4:
                        baVar.getClass();
                        String[] strArr = {"KeyCode", "keyCode", "event", "InputCode", "ACTION_", "keyEvent", "function", "functionId", "action", "Door", "door", "downTime", "CarServer", "gear", "Gear", "lamp", "Lamp", "ign", "IGN"};
                        ArrayList arrayList2 = new ArrayList(19);
                        while (iC < 19) {
                            String str = strArr[iC];
                            iC = g.b.c(str, arrayList2, str, iC, 1);
                        }
                        new fa(baVar.f6724a, baVar.f6725b, null, Collections.unmodifiableList(arrayList2), new d2.w(baVar, i112, strArr)).show();
                        break;
                    default:
                        Context context = baVar.f6725b;
                        if (!baVar.f6809g.getText().equals("开始监听")) {
                            baVar.f6812j.k();
                            baVar.f6809g.setText("开始监听");
                            break;
                        } else {
                            try {
                                if (context.getPackageManager().checkPermission("android.permission.READ_LOGS", context.getPackageName()) != 0) {
                                    new z6(baVar.f6724a, context, "请授予" + context.getResources().getString(R.string.app_name) + "【读取系统日志】权限", "").show();
                                    break;
                                }
                            } catch (Exception unused2) {
                            }
                            baVar.f6809g.setText("停止监听");
                            baVar.l.setVisibility(8);
                            baVar.f6813k.setVisibility(0);
                            ArrayList arrayList3 = baVar.f6815n;
                            arrayList3.clear();
                            baVar.f6811i.E(arrayList3);
                            baVar.f6813k.setText("0");
                            g0.e eVar = baVar.f6812j;
                            HashMap map = baVar.f6816p;
                            eVar.getClass();
                            new mc.c(0, new ma.b(eVar, 4, map)).d(rc.f.f13757b).a(fc.b.a()).b(new p0(i122, baVar));
                            break;
                        }
                }
            }
        });
        this.f6809g = (TextView) findViewById(R.id.v_btn_start);
        TextView textView3 = (TextView) findViewById(R.id.v_btn_xfc);
        textView3.setOnClickListener(new c6.c(this, 18, textView3));
        final int i15 = 5;
        this.f6809g.setOnClickListener(new View.OnClickListener(this) { // from class: ha.w9

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ba f8007b;

            {
                this.f8007b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                File file;
                int i112 = 18;
                int i122 = 15;
                int iC = 0;
                ba baVar = this.f8007b;
                switch (i15) {
                    case 0:
                        if (baVar.f6811i.b() == 0) {
                            com.yunpan.appmanage.util.a0.u("请先监听日志");
                            break;
                        } else {
                            fa.h0 h0Var = fa.g0.f5682a;
                            if (h0Var.d().isEmpty()) {
                                DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                                if (com.yunpan.appmanage.util.j.f4033a.f4073v.isEmpty()) {
                                    com.yunpan.appmanage.util.a0.u("没有内部存储，无法保存");
                                    break;
                                }
                            }
                            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd日HH时mm分ss秒");
                            if (h0Var.d().isEmpty()) {
                                file = null;
                            } else {
                                file = new File(g.b.g(h0Var, new StringBuilder(), "/Download"), "日志_" + simpleDateFormat.format(new Date()) + ".log");
                            }
                            if (file == null) {
                                DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
                                com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
                                if (!kVar.f4073v.isEmpty()) {
                                    file = new File(g.b.l((String) kVar.f4073v.iterator().next(), "/Download", new StringBuilder()), "日志_" + simpleDateFormat.format(new Date()) + ".log");
                                }
                            }
                            if (file == null) {
                                com.yunpan.appmanage.util.a0.u("没有内部存储，无法保存");
                                break;
                            } else {
                                try {
                                    file.getParentFile().mkdir();
                                    new z6(baVar.f6724a, baVar.f6725b, "保存文件名", file.getName(), "请输入文件名", "确定", "取消", new y9(baVar, file)).show();
                                    break;
                                } catch (Exception unused) {
                                    com.yunpan.appmanage.util.a0.u("保存失败");
                                    return;
                                }
                            }
                        }
                    case 1:
                        ArrayList arrayList = baVar.f6815n;
                        arrayList.clear();
                        baVar.f6811i.E(arrayList);
                        baVar.f6813k.setText("0");
                        break;
                    case 2:
                        baVar.dismiss();
                        break;
                    case 3:
                        if (baVar.l.getVisibility() != 0) {
                            if (!baVar.f6809g.getText().equals("开始监听")) {
                                Toaster.show((CharSequence) "请先停止监听日志");
                                break;
                            } else {
                                baVar.l.setVisibility(0);
                                baVar.f6813k.setVisibility(8);
                                break;
                            }
                        } else {
                            baVar.l.setVisibility(8);
                            baVar.f6813k.setVisibility(0);
                            break;
                        }
                    case 4:
                        baVar.getClass();
                        String[] strArr = {"KeyCode", "keyCode", "event", "InputCode", "ACTION_", "keyEvent", "function", "functionId", "action", "Door", "door", "downTime", "CarServer", "gear", "Gear", "lamp", "Lamp", "ign", "IGN"};
                        ArrayList arrayList2 = new ArrayList(19);
                        while (iC < 19) {
                            String str = strArr[iC];
                            iC = g.b.c(str, arrayList2, str, iC, 1);
                        }
                        new fa(baVar.f6724a, baVar.f6725b, null, Collections.unmodifiableList(arrayList2), new d2.w(baVar, i112, strArr)).show();
                        break;
                    default:
                        Context context = baVar.f6725b;
                        if (!baVar.f6809g.getText().equals("开始监听")) {
                            baVar.f6812j.k();
                            baVar.f6809g.setText("开始监听");
                            break;
                        } else {
                            try {
                                if (context.getPackageManager().checkPermission("android.permission.READ_LOGS", context.getPackageName()) != 0) {
                                    new z6(baVar.f6724a, context, "请授予" + context.getResources().getString(R.string.app_name) + "【读取系统日志】权限", "").show();
                                    break;
                                }
                            } catch (Exception unused2) {
                            }
                            baVar.f6809g.setText("停止监听");
                            baVar.l.setVisibility(8);
                            baVar.f6813k.setVisibility(0);
                            ArrayList arrayList3 = baVar.f6815n;
                            arrayList3.clear();
                            baVar.f6811i.E(arrayList3);
                            baVar.f6813k.setText("0");
                            g0.e eVar = baVar.f6812j;
                            HashMap map = baVar.f6816p;
                            eVar.getClass();
                            new mc.c(0, new ma.b(eVar, 4, map)).d(rc.f.f13757b).a(fc.b.a()).b(new p0(i122, baVar));
                            break;
                        }
                }
            }
        });
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_list);
        this.f6810h = tvRecyclerView;
        Context context = this.f6725b;
        tvRecyclerView.setLayoutManager(new V7LinearLayoutManager(context, 1, false));
        x9.t0 t0Var = new x9.t0(4);
        this.f6811i = t0Var;
        this.f6810h.setAdapter(t0Var);
        ArrayList arrayList = new ArrayList();
        arrayList.add("复制整条");
        arrayList.add("复制标签");
        arrayList.add("复制内容");
        ClipboardManager clipboardManager = (ClipboardManager) context.getSystemService("clipboard");
        this.f6811i.f2882f = new com.hjq.permissions.b(this, arrayList, clipboardManager, 5);
    }
}
