package ha;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.sdk.android.oss.signer.SignParameters;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7GridLayoutManager;
import com.owen.tvrecyclerview.widget.V7LinearLayoutManager;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.StrIntBoolBean;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final class w1 extends a4 implements View.OnClickListener {
    public String A;
    public z7.o B;

    /* renamed from: g, reason: collision with root package name */
    public final z7.s f7979g;

    /* renamed from: h, reason: collision with root package name */
    public TextView f7980h;

    /* renamed from: i, reason: collision with root package name */
    public TextView f7981i;

    /* renamed from: j, reason: collision with root package name */
    public ImageView f7982j;

    /* renamed from: k, reason: collision with root package name */
    public EditText f7983k;
    public RecyclerView l;

    /* renamed from: m, reason: collision with root package name */
    public TvRecyclerView f7984m;

    /* renamed from: n, reason: collision with root package name */
    public TvRecyclerView f7985n;

    /* renamed from: p, reason: collision with root package name */
    public n6 f7986p;

    /* renamed from: q, reason: collision with root package name */
    public x9.w0 f7987q;
    public x9.i4 r;

    /* renamed from: s, reason: collision with root package name */
    public x9.s2 f7988s;

    /* renamed from: t, reason: collision with root package name */
    public boolean f7989t;

    /* renamed from: v, reason: collision with root package name */
    public String f7990v;

    /* renamed from: w, reason: collision with root package name */
    public int f7991w;

    /* renamed from: x, reason: collision with root package name */
    public int f7992x;

    /* renamed from: y, reason: collision with root package name */
    public String f7993y;
    public String z;

    public w1(Activity activity, da.g gVar, z7.s sVar) {
        super(activity, gVar, R.layout.dialog_add_voice_log);
        this.f7989t = false;
        this.f7990v = "";
        this.f7991w = 0;
        this.f7992x = 0;
        this.f7993y = "";
        this.z = "";
        this.A = "";
        this.B = null;
        this.f7979g = sVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (view.getId() == R.id.v_btn_select) {
            n6 n6Var = this.f7986p;
            n6Var.f7465g = new u1(this, 3);
            n6Var.show();
            return;
        }
        if (view.getId() == R.id.v_btn_return) {
            dismiss();
            return;
        }
        if (view.getId() == R.id.v_newline) {
            this.f7983k.getText().insert(this.f7983k.getSelectionStart(), "\n\n");
            return;
        }
        if (view.getId() == R.id.v_select_open) {
            boolean z = this.f7989t;
            this.f7989t = !z;
            this.f7982j.setImageResource(!z ? R.drawable.tp_check1 : R.drawable.tp_check2);
            return;
        }
        int id2 = view.getId();
        Activity activity = this.f6724a;
        Context context = this.f6725b;
        if (id2 == R.id.v_btn_select_app) {
            new q2(activity, context, 3, new u1(this, 4)).show();
            return;
        }
        if (view.getId() == R.id.v_btn_add) {
            z7.s sVar = new z7.s();
            sVar.k("isOpen", Boolean.TRUE);
            sVar.m("name", "");
            sVar.j("maps", new z7.o());
            new z1(activity, context, sVar, new d2.w(this, 9, sVar)).show();
            return;
        }
        if (view.getId() == R.id.v_set) {
            new d2(activity, context, this.A, new u1(this, 5)).show();
            return;
        }
        if (view.getId() == R.id.v_btn_yes) {
            String strF = g.b.f(this.f7983k);
            if (this.f7989t) {
                if (this.f7990v.isEmpty() || strF.isEmpty()) {
                    com.yunpan.appmanage.util.a0.u("请选择日志");
                    return;
                }
                if (this.f7988s.b() == 0 && !((StrIntBoolBean) this.f7987q.t(0)).boolValue && !((StrIntBoolBean) this.f7987q.t(1)).boolValue) {
                    com.yunpan.appmanage.util.a0.u("请添加至少一个映射");
                    return;
                }
                int i10 = this.f7991w;
                if (i10 == 0) {
                    if (!this.f7983k.getText().toString().contains(SignParameters.NEW_LINE)) {
                        com.yunpan.appmanage.util.a0.u("请用换行来分割语音日志的前与后，抓取文字");
                        return;
                    }
                } else if (i10 == 1) {
                    if (!strF.contains("(") || !strF.contains(")")) {
                        com.yunpan.appmanage.util.a0.u("请填写正确的正则表达式");
                        return;
                    } else {
                        try {
                            Pattern.compile(strF);
                        } catch (Exception unused) {
                            com.yunpan.appmanage.util.a0.u("请填写正确的正则表达式");
                            return;
                        }
                    }
                }
            }
            z7.s sVar2 = new z7.s();
            sVar2.k("isOpen", Boolean.valueOf(this.f7989t));
            sVar2.l("mode", Integer.valueOf(this.f7991w));
            sVar2.l("mapIndex", Integer.valueOf(this.f7992x));
            sVar2.m("mapAppName", this.f7993y);
            sVar2.m("mapAppPackage", this.z);
            sVar2.m("tag", this.f7990v);
            sVar2.m("log", strF);
            sVar2.m("nav_guidewords", this.A);
            sVar2.k("isNavTo", Boolean.valueOf(((StrIntBoolBean) this.f7987q.t(0)).boolValue));
            sVar2.k("isOpenUserApp", Boolean.valueOf(((StrIntBoolBean) this.f7987q.t(1)).boolValue));
            sVar2.k("isShowText", Boolean.valueOf(((StrIntBoolBean) this.f7987q.t(2)).boolValue));
            z7.o oVar = this.B;
            if (oVar != null && !oVar.f19478a.isEmpty()) {
                sVar2.j("match_map", this.B);
            }
            z7.o oVar2 = new z7.o();
            for (int i11 = 0; i11 < this.f7988s.b(); i11++) {
                oVar2.k((z7.p) this.f7988s.t(i11));
            }
            sVar2.j("maps", oVar2);
            z7.s sVar3 = this.f7979g;
            sVar3.j("voice", sVar2);
            q4.a.V(context, sVar3);
            ta.m.g(context);
            dismiss();
        }
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        z7.s sVar = this.f7979g;
        if (sVar == null) {
            com.yunpan.appmanage.util.a0.u("没有数据");
            dismiss();
            return;
        }
        findViewById(R.id.v_set).setOnClickListener(this);
        this.f7980h = (TextView) findViewById(R.id.v_ts1);
        findViewById(R.id.v_btn_select).setOnClickListener(this);
        findViewById(R.id.v_btn_return).setOnClickListener(this);
        findViewById(R.id.v_btn_add).setOnClickListener(this);
        findViewById(R.id.v_btn_yes).setOnClickListener(this);
        findViewById(R.id.v_select_open).setOnClickListener(this);
        findViewById(R.id.v_btn_select_app).setOnClickListener(this);
        findViewById(R.id.v_newline).setOnClickListener(this);
        this.f7982j = (ImageView) findViewById(R.id.v_select_open_ico);
        this.f7983k = (EditText) findViewById(R.id.v_edit_log);
        this.l = (RecyclerView) findViewById(R.id.v_list_mode);
        this.f7984m = (TvRecyclerView) findViewById(R.id.v_list_map);
        this.f7985n = (TvRecyclerView) findViewById(R.id.v_list_check);
        this.f7981i = (TextView) findViewById(R.id.v_text_app_name);
        TvRecyclerView tvRecyclerView = this.f7984m;
        Context context = this.f6725b;
        tvRecyclerView.setLayoutManager(new V7GridLayoutManager(context, 3));
        x9.s2 s2Var = new x9.s2();
        this.f7988s = s2Var;
        this.f7984m.setAdapter(s2Var);
        d6.a aVar = new d6.a();
        aVar.f4496h = 15;
        aVar.f4495g = false;
        aVar.d(this.f7984m);
        aVar.g(this.f7988s);
        this.f7988s.f2881e = new u1(this, 0);
        this.f7985n.setLayoutManager(new V7LinearLayoutManager(context, 1, false));
        x9.w0 w0Var = new x9.w0();
        this.f7987q = w0Var;
        w0Var.q(new StrIntBoolBean("导航到XXX 、导航到家、导航到公司(如果您语音本身就支持，那么不要勾选)", 0, false));
        this.f7987q.q(new StrIntBoolBean("打开XXX (个人应用的全称，如果您语音本身就支持，那么不要勾选)", 0, false));
        this.f7987q.q(new StrIntBoolBean("弹窗显示识别后的文本 (方便测试是否能正常获取识别后的文本)", 0, false));
        this.f7987q.q(new StrIntBoolBean("匹配到关键字时，执行某些特殊操作(用于中断语音或中断系统提示)", 0, false));
        this.f7985n.setAdapter(this.f7987q);
        this.f7987q.f2881e = new u1(this, 1);
        if (sVar.f19480a.containsKey("voice")) {
            z7.s sVarQ = sVar.q("voice");
            this.f7989t = sVarQ.o("isOpen").b();
            this.f7991w = sVarQ.o("mode").e();
            b8.n nVar = sVarQ.f19480a;
            if (nVar.containsKey("mapIndex")) {
                this.f7992x = sVarQ.o("mapIndex").e();
            }
            this.f7990v = sVarQ.o("tag").i();
            EditText editText = this.f7983k;
            StringBuilder sb2 = new StringBuilder();
            sb2.append(sVarQ.o("log").i());
            sb2.append(sVarQ.o("log").i().contains(SignParameters.NEW_LINE) ? "" : SignParameters.NEW_LINE);
            editText.setText(sb2.toString());
            if (nVar.containsKey("mapAppName")) {
                this.f7993y = sVarQ.o("mapAppName").i();
            }
            if (nVar.containsKey("mapAppPackage")) {
                this.z = sVarQ.o("mapAppPackage").i();
            }
            if (!this.z.isEmpty()) {
                this.f7981i.setText(this.f7993y + SignParameters.NEW_LINE + this.z);
            }
            if (nVar.containsKey("nav_guidewords")) {
                String strI = sVarQ.o("nav_guidewords").i();
                this.A = strI;
                if (!strI.isEmpty()) {
                    StrIntBoolBean strIntBoolBean = (StrIntBoolBean) this.f7987q.t(0);
                    strIntBoolBean.strValue = g.b.l(this.A, "XXX (如果您语音本身就支持，那么不要勾选)", new StringBuilder());
                    this.f7987q.D(0, strIntBoolBean);
                }
            }
            if (sVarQ.o("isNavTo").b()) {
                StrIntBoolBean strIntBoolBean2 = (StrIntBoolBean) this.f7987q.t(0);
                strIntBoolBean2.boolValue = true;
                this.f7987q.D(0, strIntBoolBean2);
            }
            if (sVarQ.o("isOpenUserApp").b()) {
                StrIntBoolBean strIntBoolBean3 = (StrIntBoolBean) this.f7987q.t(1);
                strIntBoolBean3.boolValue = true;
                this.f7987q.D(1, strIntBoolBean3);
            }
            if (nVar.containsKey("isShowText") && sVarQ.o("isShowText").b()) {
                StrIntBoolBean strIntBoolBean4 = (StrIntBoolBean) this.f7987q.t(2);
                strIntBoolBean4.boolValue = true;
                this.f7987q.D(2, strIntBoolBean4);
            }
            if (nVar.containsKey("match_map") && !sVarQ.o("match_map").f().f19478a.isEmpty()) {
                this.B = sVarQ.p("match_map");
                StrIntBoolBean strIntBoolBean5 = (StrIntBoolBean) this.f7987q.t(3);
                strIntBoolBean5.boolValue = true;
                this.f7987q.D(3, strIntBoolBean5);
            }
            z7.o oVarP = sVarQ.p("maps");
            for (int i10 = 0; i10 < oVarP.f19478a.size(); i10++) {
                this.f7988s.q(d.b.b0(oVarP.l(i10).g().toString()).g());
            }
        }
        this.f7982j.setImageResource(this.f7989t ? R.drawable.tp_check1 : R.drawable.tp_check2);
        this.l.setLayoutManager(new LinearLayoutManager(0, false));
        x9.i4 i4Var = new x9.i4();
        this.r = i4Var;
        i4Var.q(new x9.x0("文本取中间", this.f7991w == 0));
        this.r.q(new x9.x0("正则表达式", this.f7991w == 1));
        this.l.setAdapter(this.r);
        this.r.f2881e = new u1(this, 2);
        this.f7986p = new n6(this.f6724a, context);
    }
}
