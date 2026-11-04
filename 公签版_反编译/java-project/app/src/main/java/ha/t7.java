package ha;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.StringBoolBean;
import com.yunpan.appmanage.ui.ActivityBootStartTask;
import java.io.IOException;

/* loaded from: classes.dex */
public final class t7 extends a4 {

    /* renamed from: g, reason: collision with root package name */
    public final l5.y f7801g;

    /* renamed from: h, reason: collision with root package name */
    public final boolean f7802h;

    /* renamed from: i, reason: collision with root package name */
    public final int f7803i;

    /* renamed from: j, reason: collision with root package name */
    public int f7804j;

    public t7(Activity activity, Context context, boolean z, int i10, int i11, l5.y yVar) {
        super(activity, context, R.layout.dialog_item_gn_select);
        this.f7802h = z;
        this.f7803i = i10;
        this.f7804j = i11;
        this.f7801g = yVar;
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        TextView textView = (TextView) findViewById(R.id.v_btn_delete);
        TextView textView2 = (TextView) findViewById(R.id.v_btn_up);
        TextView textView3 = (TextView) findViewById(R.id.v_btn_top);
        TextView textView4 = (TextView) findViewById(R.id.v_btn_down);
        TextView textView5 = (TextView) findViewById(R.id.v_btn_bottom);
        ConstraintLayout constraintLayout = (ConstraintLayout) findViewById(R.id.v_select_open);
        ((ImageView) findViewById(R.id.v_select_open_ico)).setImageResource(this.f7802h ? R.drawable.tp_check1 : R.drawable.tp_check2);
        final int i10 = 0;
        textView.setOnClickListener(new View.OnClickListener(this) { // from class: ha.s7

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ t7 f7747b;

            {
                this.f7747b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) throws IOException {
                switch (i10) {
                    case 0:
                        t7 t7Var = this.f7747b;
                        int i11 = t7Var.f7804j;
                        ActivityBootStartTask activityBootStartTask = (ActivityBootStartTask) t7Var.f7801g.f10629b;
                        if (activityBootStartTask.E.b() == 1) {
                            activityBootStartTask.C.requestFocus();
                        }
                        activityBootStartTask.F.n(i11);
                        activityBootStartTask.E.C(i11);
                        q4.a.P(activityBootStartTask.A, activityBootStartTask.F);
                        t7Var.dismiss();
                        break;
                    case 1:
                        t7 t7Var2 = this.f7747b;
                        int i12 = t7Var2.f7804j;
                        if (i12 != 0 && t7Var2.f7803i != 1) {
                            int i13 = i12 - 1;
                            t7Var2.f7804j = i13;
                            ActivityBootStartTask activityBootStartTask2 = (ActivityBootStartTask) t7Var2.f7801g.f10629b;
                            activityBootStartTask2.E.y(i12, i13);
                            ActivityBootStartTask.x(activityBootStartTask2, i12, i13);
                            break;
                        }
                        break;
                    case 2:
                        t7 t7Var3 = this.f7747b;
                        int i14 = t7Var3.f7804j;
                        if (i14 != 0 && t7Var3.f7803i != 1) {
                            ActivityBootStartTask activityBootStartTask3 = (ActivityBootStartTask) t7Var3.f7801g.f10629b;
                            activityBootStartTask3.E.y(i14, 0);
                            ActivityBootStartTask.x(activityBootStartTask3, i14, 0);
                            t7Var3.f7804j = 0;
                            break;
                        }
                        break;
                    case 3:
                        t7 t7Var4 = this.f7747b;
                        int i15 = t7Var4.f7804j;
                        int i16 = t7Var4.f7803i;
                        if (i15 != i16 - 1 && i16 != 1) {
                            int i17 = i15 + 1;
                            t7Var4.f7804j = i17;
                            ActivityBootStartTask activityBootStartTask4 = (ActivityBootStartTask) t7Var4.f7801g.f10629b;
                            activityBootStartTask4.E.y(i15, i17);
                            ActivityBootStartTask.x(activityBootStartTask4, i15, i17);
                            break;
                        }
                        break;
                    case 4:
                        t7 t7Var5 = this.f7747b;
                        int i18 = t7Var5.f7804j;
                        int i19 = t7Var5.f7803i;
                        int i20 = i19 - 1;
                        if (i18 != i20 && i19 != 1) {
                            ActivityBootStartTask activityBootStartTask5 = (ActivityBootStartTask) t7Var5.f7801g.f10629b;
                            activityBootStartTask5.E.y(i18, i20);
                            ActivityBootStartTask.x(activityBootStartTask5, i18, i20);
                            t7Var5.f7804j = i20;
                            break;
                        }
                        break;
                    default:
                        t7 t7Var6 = this.f7747b;
                        int i21 = t7Var6.f7804j;
                        ActivityBootStartTask activityBootStartTask6 = (ActivityBootStartTask) t7Var6.f7801g.f10629b;
                        activityBootStartTask6.F.l(i21).g().k("isOpen", Boolean.valueOf(!((StringBoolBean) activityBootStartTask6.E.t(i21)).isCheck));
                        ((StringBoolBean) activityBootStartTask6.E.t(i21)).isCheck = !((StringBoolBean) activityBootStartTask6.E.t(i21)).isCheck;
                        activityBootStartTask6.E.e(i21);
                        q4.a.P(activityBootStartTask6.A, activityBootStartTask6.F);
                        t7Var6.dismiss();
                        break;
                }
            }
        });
        final int i11 = 1;
        textView2.setOnClickListener(new View.OnClickListener(this) { // from class: ha.s7

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ t7 f7747b;

            {
                this.f7747b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) throws IOException {
                switch (i11) {
                    case 0:
                        t7 t7Var = this.f7747b;
                        int i112 = t7Var.f7804j;
                        ActivityBootStartTask activityBootStartTask = (ActivityBootStartTask) t7Var.f7801g.f10629b;
                        if (activityBootStartTask.E.b() == 1) {
                            activityBootStartTask.C.requestFocus();
                        }
                        activityBootStartTask.F.n(i112);
                        activityBootStartTask.E.C(i112);
                        q4.a.P(activityBootStartTask.A, activityBootStartTask.F);
                        t7Var.dismiss();
                        break;
                    case 1:
                        t7 t7Var2 = this.f7747b;
                        int i12 = t7Var2.f7804j;
                        if (i12 != 0 && t7Var2.f7803i != 1) {
                            int i13 = i12 - 1;
                            t7Var2.f7804j = i13;
                            ActivityBootStartTask activityBootStartTask2 = (ActivityBootStartTask) t7Var2.f7801g.f10629b;
                            activityBootStartTask2.E.y(i12, i13);
                            ActivityBootStartTask.x(activityBootStartTask2, i12, i13);
                            break;
                        }
                        break;
                    case 2:
                        t7 t7Var3 = this.f7747b;
                        int i14 = t7Var3.f7804j;
                        if (i14 != 0 && t7Var3.f7803i != 1) {
                            ActivityBootStartTask activityBootStartTask3 = (ActivityBootStartTask) t7Var3.f7801g.f10629b;
                            activityBootStartTask3.E.y(i14, 0);
                            ActivityBootStartTask.x(activityBootStartTask3, i14, 0);
                            t7Var3.f7804j = 0;
                            break;
                        }
                        break;
                    case 3:
                        t7 t7Var4 = this.f7747b;
                        int i15 = t7Var4.f7804j;
                        int i16 = t7Var4.f7803i;
                        if (i15 != i16 - 1 && i16 != 1) {
                            int i17 = i15 + 1;
                            t7Var4.f7804j = i17;
                            ActivityBootStartTask activityBootStartTask4 = (ActivityBootStartTask) t7Var4.f7801g.f10629b;
                            activityBootStartTask4.E.y(i15, i17);
                            ActivityBootStartTask.x(activityBootStartTask4, i15, i17);
                            break;
                        }
                        break;
                    case 4:
                        t7 t7Var5 = this.f7747b;
                        int i18 = t7Var5.f7804j;
                        int i19 = t7Var5.f7803i;
                        int i20 = i19 - 1;
                        if (i18 != i20 && i19 != 1) {
                            ActivityBootStartTask activityBootStartTask5 = (ActivityBootStartTask) t7Var5.f7801g.f10629b;
                            activityBootStartTask5.E.y(i18, i20);
                            ActivityBootStartTask.x(activityBootStartTask5, i18, i20);
                            t7Var5.f7804j = i20;
                            break;
                        }
                        break;
                    default:
                        t7 t7Var6 = this.f7747b;
                        int i21 = t7Var6.f7804j;
                        ActivityBootStartTask activityBootStartTask6 = (ActivityBootStartTask) t7Var6.f7801g.f10629b;
                        activityBootStartTask6.F.l(i21).g().k("isOpen", Boolean.valueOf(!((StringBoolBean) activityBootStartTask6.E.t(i21)).isCheck));
                        ((StringBoolBean) activityBootStartTask6.E.t(i21)).isCheck = !((StringBoolBean) activityBootStartTask6.E.t(i21)).isCheck;
                        activityBootStartTask6.E.e(i21);
                        q4.a.P(activityBootStartTask6.A, activityBootStartTask6.F);
                        t7Var6.dismiss();
                        break;
                }
            }
        });
        final int i12 = 2;
        textView3.setOnClickListener(new View.OnClickListener(this) { // from class: ha.s7

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ t7 f7747b;

            {
                this.f7747b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) throws IOException {
                switch (i12) {
                    case 0:
                        t7 t7Var = this.f7747b;
                        int i112 = t7Var.f7804j;
                        ActivityBootStartTask activityBootStartTask = (ActivityBootStartTask) t7Var.f7801g.f10629b;
                        if (activityBootStartTask.E.b() == 1) {
                            activityBootStartTask.C.requestFocus();
                        }
                        activityBootStartTask.F.n(i112);
                        activityBootStartTask.E.C(i112);
                        q4.a.P(activityBootStartTask.A, activityBootStartTask.F);
                        t7Var.dismiss();
                        break;
                    case 1:
                        t7 t7Var2 = this.f7747b;
                        int i122 = t7Var2.f7804j;
                        if (i122 != 0 && t7Var2.f7803i != 1) {
                            int i13 = i122 - 1;
                            t7Var2.f7804j = i13;
                            ActivityBootStartTask activityBootStartTask2 = (ActivityBootStartTask) t7Var2.f7801g.f10629b;
                            activityBootStartTask2.E.y(i122, i13);
                            ActivityBootStartTask.x(activityBootStartTask2, i122, i13);
                            break;
                        }
                        break;
                    case 2:
                        t7 t7Var3 = this.f7747b;
                        int i14 = t7Var3.f7804j;
                        if (i14 != 0 && t7Var3.f7803i != 1) {
                            ActivityBootStartTask activityBootStartTask3 = (ActivityBootStartTask) t7Var3.f7801g.f10629b;
                            activityBootStartTask3.E.y(i14, 0);
                            ActivityBootStartTask.x(activityBootStartTask3, i14, 0);
                            t7Var3.f7804j = 0;
                            break;
                        }
                        break;
                    case 3:
                        t7 t7Var4 = this.f7747b;
                        int i15 = t7Var4.f7804j;
                        int i16 = t7Var4.f7803i;
                        if (i15 != i16 - 1 && i16 != 1) {
                            int i17 = i15 + 1;
                            t7Var4.f7804j = i17;
                            ActivityBootStartTask activityBootStartTask4 = (ActivityBootStartTask) t7Var4.f7801g.f10629b;
                            activityBootStartTask4.E.y(i15, i17);
                            ActivityBootStartTask.x(activityBootStartTask4, i15, i17);
                            break;
                        }
                        break;
                    case 4:
                        t7 t7Var5 = this.f7747b;
                        int i18 = t7Var5.f7804j;
                        int i19 = t7Var5.f7803i;
                        int i20 = i19 - 1;
                        if (i18 != i20 && i19 != 1) {
                            ActivityBootStartTask activityBootStartTask5 = (ActivityBootStartTask) t7Var5.f7801g.f10629b;
                            activityBootStartTask5.E.y(i18, i20);
                            ActivityBootStartTask.x(activityBootStartTask5, i18, i20);
                            t7Var5.f7804j = i20;
                            break;
                        }
                        break;
                    default:
                        t7 t7Var6 = this.f7747b;
                        int i21 = t7Var6.f7804j;
                        ActivityBootStartTask activityBootStartTask6 = (ActivityBootStartTask) t7Var6.f7801g.f10629b;
                        activityBootStartTask6.F.l(i21).g().k("isOpen", Boolean.valueOf(!((StringBoolBean) activityBootStartTask6.E.t(i21)).isCheck));
                        ((StringBoolBean) activityBootStartTask6.E.t(i21)).isCheck = !((StringBoolBean) activityBootStartTask6.E.t(i21)).isCheck;
                        activityBootStartTask6.E.e(i21);
                        q4.a.P(activityBootStartTask6.A, activityBootStartTask6.F);
                        t7Var6.dismiss();
                        break;
                }
            }
        });
        final int i13 = 3;
        textView4.setOnClickListener(new View.OnClickListener(this) { // from class: ha.s7

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ t7 f7747b;

            {
                this.f7747b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) throws IOException {
                switch (i13) {
                    case 0:
                        t7 t7Var = this.f7747b;
                        int i112 = t7Var.f7804j;
                        ActivityBootStartTask activityBootStartTask = (ActivityBootStartTask) t7Var.f7801g.f10629b;
                        if (activityBootStartTask.E.b() == 1) {
                            activityBootStartTask.C.requestFocus();
                        }
                        activityBootStartTask.F.n(i112);
                        activityBootStartTask.E.C(i112);
                        q4.a.P(activityBootStartTask.A, activityBootStartTask.F);
                        t7Var.dismiss();
                        break;
                    case 1:
                        t7 t7Var2 = this.f7747b;
                        int i122 = t7Var2.f7804j;
                        if (i122 != 0 && t7Var2.f7803i != 1) {
                            int i132 = i122 - 1;
                            t7Var2.f7804j = i132;
                            ActivityBootStartTask activityBootStartTask2 = (ActivityBootStartTask) t7Var2.f7801g.f10629b;
                            activityBootStartTask2.E.y(i122, i132);
                            ActivityBootStartTask.x(activityBootStartTask2, i122, i132);
                            break;
                        }
                        break;
                    case 2:
                        t7 t7Var3 = this.f7747b;
                        int i14 = t7Var3.f7804j;
                        if (i14 != 0 && t7Var3.f7803i != 1) {
                            ActivityBootStartTask activityBootStartTask3 = (ActivityBootStartTask) t7Var3.f7801g.f10629b;
                            activityBootStartTask3.E.y(i14, 0);
                            ActivityBootStartTask.x(activityBootStartTask3, i14, 0);
                            t7Var3.f7804j = 0;
                            break;
                        }
                        break;
                    case 3:
                        t7 t7Var4 = this.f7747b;
                        int i15 = t7Var4.f7804j;
                        int i16 = t7Var4.f7803i;
                        if (i15 != i16 - 1 && i16 != 1) {
                            int i17 = i15 + 1;
                            t7Var4.f7804j = i17;
                            ActivityBootStartTask activityBootStartTask4 = (ActivityBootStartTask) t7Var4.f7801g.f10629b;
                            activityBootStartTask4.E.y(i15, i17);
                            ActivityBootStartTask.x(activityBootStartTask4, i15, i17);
                            break;
                        }
                        break;
                    case 4:
                        t7 t7Var5 = this.f7747b;
                        int i18 = t7Var5.f7804j;
                        int i19 = t7Var5.f7803i;
                        int i20 = i19 - 1;
                        if (i18 != i20 && i19 != 1) {
                            ActivityBootStartTask activityBootStartTask5 = (ActivityBootStartTask) t7Var5.f7801g.f10629b;
                            activityBootStartTask5.E.y(i18, i20);
                            ActivityBootStartTask.x(activityBootStartTask5, i18, i20);
                            t7Var5.f7804j = i20;
                            break;
                        }
                        break;
                    default:
                        t7 t7Var6 = this.f7747b;
                        int i21 = t7Var6.f7804j;
                        ActivityBootStartTask activityBootStartTask6 = (ActivityBootStartTask) t7Var6.f7801g.f10629b;
                        activityBootStartTask6.F.l(i21).g().k("isOpen", Boolean.valueOf(!((StringBoolBean) activityBootStartTask6.E.t(i21)).isCheck));
                        ((StringBoolBean) activityBootStartTask6.E.t(i21)).isCheck = !((StringBoolBean) activityBootStartTask6.E.t(i21)).isCheck;
                        activityBootStartTask6.E.e(i21);
                        q4.a.P(activityBootStartTask6.A, activityBootStartTask6.F);
                        t7Var6.dismiss();
                        break;
                }
            }
        });
        final int i14 = 4;
        textView5.setOnClickListener(new View.OnClickListener(this) { // from class: ha.s7

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ t7 f7747b;

            {
                this.f7747b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) throws IOException {
                switch (i14) {
                    case 0:
                        t7 t7Var = this.f7747b;
                        int i112 = t7Var.f7804j;
                        ActivityBootStartTask activityBootStartTask = (ActivityBootStartTask) t7Var.f7801g.f10629b;
                        if (activityBootStartTask.E.b() == 1) {
                            activityBootStartTask.C.requestFocus();
                        }
                        activityBootStartTask.F.n(i112);
                        activityBootStartTask.E.C(i112);
                        q4.a.P(activityBootStartTask.A, activityBootStartTask.F);
                        t7Var.dismiss();
                        break;
                    case 1:
                        t7 t7Var2 = this.f7747b;
                        int i122 = t7Var2.f7804j;
                        if (i122 != 0 && t7Var2.f7803i != 1) {
                            int i132 = i122 - 1;
                            t7Var2.f7804j = i132;
                            ActivityBootStartTask activityBootStartTask2 = (ActivityBootStartTask) t7Var2.f7801g.f10629b;
                            activityBootStartTask2.E.y(i122, i132);
                            ActivityBootStartTask.x(activityBootStartTask2, i122, i132);
                            break;
                        }
                        break;
                    case 2:
                        t7 t7Var3 = this.f7747b;
                        int i142 = t7Var3.f7804j;
                        if (i142 != 0 && t7Var3.f7803i != 1) {
                            ActivityBootStartTask activityBootStartTask3 = (ActivityBootStartTask) t7Var3.f7801g.f10629b;
                            activityBootStartTask3.E.y(i142, 0);
                            ActivityBootStartTask.x(activityBootStartTask3, i142, 0);
                            t7Var3.f7804j = 0;
                            break;
                        }
                        break;
                    case 3:
                        t7 t7Var4 = this.f7747b;
                        int i15 = t7Var4.f7804j;
                        int i16 = t7Var4.f7803i;
                        if (i15 != i16 - 1 && i16 != 1) {
                            int i17 = i15 + 1;
                            t7Var4.f7804j = i17;
                            ActivityBootStartTask activityBootStartTask4 = (ActivityBootStartTask) t7Var4.f7801g.f10629b;
                            activityBootStartTask4.E.y(i15, i17);
                            ActivityBootStartTask.x(activityBootStartTask4, i15, i17);
                            break;
                        }
                        break;
                    case 4:
                        t7 t7Var5 = this.f7747b;
                        int i18 = t7Var5.f7804j;
                        int i19 = t7Var5.f7803i;
                        int i20 = i19 - 1;
                        if (i18 != i20 && i19 != 1) {
                            ActivityBootStartTask activityBootStartTask5 = (ActivityBootStartTask) t7Var5.f7801g.f10629b;
                            activityBootStartTask5.E.y(i18, i20);
                            ActivityBootStartTask.x(activityBootStartTask5, i18, i20);
                            t7Var5.f7804j = i20;
                            break;
                        }
                        break;
                    default:
                        t7 t7Var6 = this.f7747b;
                        int i21 = t7Var6.f7804j;
                        ActivityBootStartTask activityBootStartTask6 = (ActivityBootStartTask) t7Var6.f7801g.f10629b;
                        activityBootStartTask6.F.l(i21).g().k("isOpen", Boolean.valueOf(!((StringBoolBean) activityBootStartTask6.E.t(i21)).isCheck));
                        ((StringBoolBean) activityBootStartTask6.E.t(i21)).isCheck = !((StringBoolBean) activityBootStartTask6.E.t(i21)).isCheck;
                        activityBootStartTask6.E.e(i21);
                        q4.a.P(activityBootStartTask6.A, activityBootStartTask6.F);
                        t7Var6.dismiss();
                        break;
                }
            }
        });
        final int i15 = 5;
        constraintLayout.setOnClickListener(new View.OnClickListener(this) { // from class: ha.s7

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ t7 f7747b;

            {
                this.f7747b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) throws IOException {
                switch (i15) {
                    case 0:
                        t7 t7Var = this.f7747b;
                        int i112 = t7Var.f7804j;
                        ActivityBootStartTask activityBootStartTask = (ActivityBootStartTask) t7Var.f7801g.f10629b;
                        if (activityBootStartTask.E.b() == 1) {
                            activityBootStartTask.C.requestFocus();
                        }
                        activityBootStartTask.F.n(i112);
                        activityBootStartTask.E.C(i112);
                        q4.a.P(activityBootStartTask.A, activityBootStartTask.F);
                        t7Var.dismiss();
                        break;
                    case 1:
                        t7 t7Var2 = this.f7747b;
                        int i122 = t7Var2.f7804j;
                        if (i122 != 0 && t7Var2.f7803i != 1) {
                            int i132 = i122 - 1;
                            t7Var2.f7804j = i132;
                            ActivityBootStartTask activityBootStartTask2 = (ActivityBootStartTask) t7Var2.f7801g.f10629b;
                            activityBootStartTask2.E.y(i122, i132);
                            ActivityBootStartTask.x(activityBootStartTask2, i122, i132);
                            break;
                        }
                        break;
                    case 2:
                        t7 t7Var3 = this.f7747b;
                        int i142 = t7Var3.f7804j;
                        if (i142 != 0 && t7Var3.f7803i != 1) {
                            ActivityBootStartTask activityBootStartTask3 = (ActivityBootStartTask) t7Var3.f7801g.f10629b;
                            activityBootStartTask3.E.y(i142, 0);
                            ActivityBootStartTask.x(activityBootStartTask3, i142, 0);
                            t7Var3.f7804j = 0;
                            break;
                        }
                        break;
                    case 3:
                        t7 t7Var4 = this.f7747b;
                        int i152 = t7Var4.f7804j;
                        int i16 = t7Var4.f7803i;
                        if (i152 != i16 - 1 && i16 != 1) {
                            int i17 = i152 + 1;
                            t7Var4.f7804j = i17;
                            ActivityBootStartTask activityBootStartTask4 = (ActivityBootStartTask) t7Var4.f7801g.f10629b;
                            activityBootStartTask4.E.y(i152, i17);
                            ActivityBootStartTask.x(activityBootStartTask4, i152, i17);
                            break;
                        }
                        break;
                    case 4:
                        t7 t7Var5 = this.f7747b;
                        int i18 = t7Var5.f7804j;
                        int i19 = t7Var5.f7803i;
                        int i20 = i19 - 1;
                        if (i18 != i20 && i19 != 1) {
                            ActivityBootStartTask activityBootStartTask5 = (ActivityBootStartTask) t7Var5.f7801g.f10629b;
                            activityBootStartTask5.E.y(i18, i20);
                            ActivityBootStartTask.x(activityBootStartTask5, i18, i20);
                            t7Var5.f7804j = i20;
                            break;
                        }
                        break;
                    default:
                        t7 t7Var6 = this.f7747b;
                        int i21 = t7Var6.f7804j;
                        ActivityBootStartTask activityBootStartTask6 = (ActivityBootStartTask) t7Var6.f7801g.f10629b;
                        activityBootStartTask6.F.l(i21).g().k("isOpen", Boolean.valueOf(!((StringBoolBean) activityBootStartTask6.E.t(i21)).isCheck));
                        ((StringBoolBean) activityBootStartTask6.E.t(i21)).isCheck = !((StringBoolBean) activityBootStartTask6.E.t(i21)).isCheck;
                        activityBootStartTask6.E.e(i21);
                        q4.a.P(activityBootStartTask6.A, activityBootStartTask6.F);
                        t7Var6.dismiss();
                        break;
                }
            }
        });
    }
}
