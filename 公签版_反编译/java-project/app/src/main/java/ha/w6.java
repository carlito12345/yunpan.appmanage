package ha;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.KeyMapSelectBean;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class w6 extends a4 {

    /* renamed from: g, reason: collision with root package name */
    public final v6 f7999g;

    /* renamed from: h, reason: collision with root package name */
    public final boolean f8000h;

    /* renamed from: i, reason: collision with root package name */
    public final boolean f8001i;

    /* renamed from: j, reason: collision with root package name */
    public KeyMapSelectBean f8002j;

    /* renamed from: k, reason: collision with root package name */
    public KeyMapSelectBean f8003k;

    public w6(Activity activity, Context context, boolean z, boolean z4, v6 v6Var) {
        super(activity, context, R.layout.dialog_input_click_and_api);
        this.f7999g = v6Var;
        this.f8000h = z;
        this.f8001i = z4;
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        final ArrayList arrayList = new ArrayList();
        if (!this.f8000h) {
            g.b.u("长按", 0, arrayList);
        }
        KeyMapSelectBean keyMapSelectBean = new KeyMapSelectBean("单击", 1);
        this.f8002j = keyMapSelectBean;
        arrayList.add(keyMapSelectBean);
        arrayList.add(new KeyMapSelectBean("双击", 2));
        arrayList.add(new KeyMapSelectBean("三击", 3));
        final TextView textView = (TextView) findViewById(R.id.v_type_name);
        textView.setText(this.f8002j.gn_name);
        final int i10 = 1;
        findViewById(R.id.v_type).setOnClickListener(new View.OnClickListener(this) { // from class: ha.t6

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ w6 f7798b;

            {
                this.f7798b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i10) {
                    case 0:
                        final w6 w6Var = this.f7798b;
                        w6Var.getClass();
                        final ArrayList arrayList2 = arrayList;
                        final TextView textView2 = textView;
                        final int i11 = 1;
                        new ie(w6Var.f6724a, w6Var.f6725b, arrayList2, new he() { // from class: ha.u6
                            @Override // ha.he, ha.ea
                            public final void b(int i12) {
                                switch (i11) {
                                    case 0:
                                        w6 w6Var2 = w6Var;
                                        w6Var2.getClass();
                                        KeyMapSelectBean keyMapSelectBean2 = (KeyMapSelectBean) arrayList2.get(i12);
                                        w6Var2.f8002j = keyMapSelectBean2;
                                        textView2.setText(keyMapSelectBean2.gn_name);
                                        break;
                                    default:
                                        w6 w6Var3 = w6Var;
                                        w6Var3.getClass();
                                        KeyMapSelectBean keyMapSelectBean3 = (KeyMapSelectBean) arrayList2.get(i12);
                                        w6Var3.f8003k = keyMapSelectBean3;
                                        textView2.setText(keyMapSelectBean3.gn_name);
                                        break;
                                }
                            }
                        }).show();
                        break;
                    default:
                        final w6 w6Var2 = this.f7798b;
                        w6Var2.getClass();
                        final ArrayList arrayList3 = arrayList;
                        final TextView textView3 = textView;
                        final int i12 = 0;
                        new ie(w6Var2.f6724a, w6Var2.f6725b, arrayList3, new he() { // from class: ha.u6
                            @Override // ha.he, ha.ea
                            public final void b(int i122) {
                                switch (i12) {
                                    case 0:
                                        w6 w6Var22 = w6Var2;
                                        w6Var22.getClass();
                                        KeyMapSelectBean keyMapSelectBean2 = (KeyMapSelectBean) arrayList3.get(i122);
                                        w6Var22.f8002j = keyMapSelectBean2;
                                        textView3.setText(keyMapSelectBean2.gn_name);
                                        break;
                                    default:
                                        w6 w6Var3 = w6Var2;
                                        w6Var3.getClass();
                                        KeyMapSelectBean keyMapSelectBean3 = (KeyMapSelectBean) arrayList3.get(i122);
                                        w6Var3.f8003k = keyMapSelectBean3;
                                        textView3.setText(keyMapSelectBean3.gn_name);
                                        break;
                                }
                            }
                        }).show();
                        break;
                }
            }
        });
        final ArrayList arrayList2 = new ArrayList();
        KeyMapSelectBean keyMapSelectBean2 = new KeyMapSelectBean("方法一", 1);
        this.f8003k = keyMapSelectBean2;
        arrayList2.add(keyMapSelectBean2);
        arrayList2.add(new KeyMapSelectBean("方法二", 2));
        ConstraintLayout constraintLayout = (ConstraintLayout) findViewById(R.id.v_api);
        if (this.f8001i) {
            constraintLayout.setVisibility(8);
        } else {
            final TextView textView2 = (TextView) findViewById(R.id.v_api_name);
            textView2.setText(this.f8003k.gn_name);
            final int i11 = 0;
            constraintLayout.setOnClickListener(new View.OnClickListener(this) { // from class: ha.t6

                /* renamed from: b, reason: collision with root package name */
                public final /* synthetic */ w6 f7798b;

                {
                    this.f7798b = this;
                }

                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    switch (i11) {
                        case 0:
                            final w6 w6Var = this.f7798b;
                            w6Var.getClass();
                            final ArrayList arrayList22 = arrayList2;
                            final TextView textView22 = textView2;
                            final int i112 = 1;
                            new ie(w6Var.f6724a, w6Var.f6725b, arrayList22, new he() { // from class: ha.u6
                                @Override // ha.he, ha.ea
                                public final void b(int i122) {
                                    switch (i112) {
                                        case 0:
                                            w6 w6Var22 = w6Var;
                                            w6Var22.getClass();
                                            KeyMapSelectBean keyMapSelectBean22 = (KeyMapSelectBean) arrayList22.get(i122);
                                            w6Var22.f8002j = keyMapSelectBean22;
                                            textView22.setText(keyMapSelectBean22.gn_name);
                                            break;
                                        default:
                                            w6 w6Var3 = w6Var;
                                            w6Var3.getClass();
                                            KeyMapSelectBean keyMapSelectBean3 = (KeyMapSelectBean) arrayList22.get(i122);
                                            w6Var3.f8003k = keyMapSelectBean3;
                                            textView22.setText(keyMapSelectBean3.gn_name);
                                            break;
                                    }
                                }
                            }).show();
                            break;
                        default:
                            final w6 w6Var2 = this.f7798b;
                            w6Var2.getClass();
                            final ArrayList arrayList3 = arrayList2;
                            final TextView textView3 = textView2;
                            final int i12 = 0;
                            new ie(w6Var2.f6724a, w6Var2.f6725b, arrayList3, new he() { // from class: ha.u6
                                @Override // ha.he, ha.ea
                                public final void b(int i122) {
                                    switch (i12) {
                                        case 0:
                                            w6 w6Var22 = w6Var2;
                                            w6Var22.getClass();
                                            KeyMapSelectBean keyMapSelectBean22 = (KeyMapSelectBean) arrayList3.get(i122);
                                            w6Var22.f8002j = keyMapSelectBean22;
                                            textView3.setText(keyMapSelectBean22.gn_name);
                                            break;
                                        default:
                                            w6 w6Var3 = w6Var2;
                                            w6Var3.getClass();
                                            KeyMapSelectBean keyMapSelectBean3 = (KeyMapSelectBean) arrayList3.get(i122);
                                            w6Var3.f8003k = keyMapSelectBean3;
                                            textView3.setText(keyMapSelectBean3.gn_name);
                                            break;
                                    }
                                }
                            }).show();
                            break;
                    }
                }
            });
        }
        TextView textView3 = (TextView) findViewById(R.id.v_btn);
        EditText editText = (EditText) findViewById(R.id.v_edit_x);
        EditText editText2 = (EditText) findViewById(R.id.v_edit_y);
        editText.setOnKeyListener(new r6(0, editText2));
        editText2.setOnKeyListener(new j1(textView3, editText, 4));
        textView3.setOnClickListener(new s6(this, editText, editText2, 0));
    }
}
