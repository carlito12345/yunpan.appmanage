package com.yunpan.appmanage.ui;

import android.content.res.Resources;
import android.graphics.Point;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatSeekBar;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.ui.ActivitySidebarSet;
import da.g;
import ha.ea;
import ha.fa;
import i0.e;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import p000if.a;
import ua.i5;
import ua.s6;
import z7.s;

/* loaded from: classes.dex */
public class ActivitySidebarSet extends g {
    public static final /* synthetic */ int V0 = 0;
    public s C;
    public View D;
    public View E;
    public View F;
    public ImageView G;
    public ImageView H;
    public ImageView I;
    public ImageView K;
    public ImageView L;
    public boolean M;
    public AppCompatSeekBar M0;
    public boolean N;
    public AppCompatSeekBar N0;
    public boolean O;
    public AppCompatSeekBar O0;
    public boolean P;
    public AppCompatSeekBar P0;
    public AppCompatSeekBar Q0;
    public boolean R;
    public int R0;
    public TextView S;
    public TextView T;
    public TextView V;
    public TextView X;
    public AppCompatSeekBar Y;
    public AppCompatSeekBar Z;

    /* renamed from: h0, reason: collision with root package name */
    public AppCompatSeekBar f3988h0;

    /* renamed from: t0, reason: collision with root package name */
    public AppCompatSeekBar f3989t0;
    public final ArrayList S0 = new ArrayList();
    public ConstraintLayout T0 = null;
    public final HashSet U0 = new HashSet();

    public static void y(int i10, View view, float f10, boolean z) {
        e eVar = (e) view.getLayoutParams();
        eVar.f8267i = i10;
        eVar.l = i10;
        eVar.f8284t = i10;
        eVar.f8286v = i10;
        if (f10 != 0.0f) {
            if (z) {
                eVar.F = f10;
            } else {
                eVar.E = f10;
            }
        }
        view.setLayoutParams(eVar);
    }

    @Override // da.g
    public final int t() {
        return R.layout.activity_sidebar_set;
    }

    @Override // da.g
    public final void u() {
        final int i10 = 2;
        findViewById(R.id.v_btn_return).setOnClickListener(new View.OnClickListener(this) { // from class: ua.q6

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivitySidebarSet f15905b;

            {
                this.f15905b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i11 = R.drawable.tp_off;
                final int i12 = 1;
                ActivitySidebarSet activitySidebarSet = this.f15905b;
                switch (i10) {
                    case 0:
                        int i13 = ActivitySidebarSet.V0;
                        final ActivitySidebarSet activitySidebarSet2 = this.f15905b;
                        activitySidebarSet2.getClass();
                        final int i14 = 0;
                        new fa(activitySidebarSet2, activitySidebarSet2.A, null, activitySidebarSet2.S0, new ea() { // from class: ua.r6
                            @Override // ha.ea
                            public final void b(int i15) {
                                switch (i14) {
                                    case 0:
                                        ActivitySidebarSet activitySidebarSet3 = activitySidebarSet2;
                                        activitySidebarSet3.S.setText((CharSequence) activitySidebarSet3.S0.get(i15));
                                        activitySidebarSet3.z();
                                        break;
                                    case 1:
                                        ActivitySidebarSet activitySidebarSet4 = activitySidebarSet2;
                                        activitySidebarSet4.T.setText((CharSequence) activitySidebarSet4.S0.get(i15));
                                        activitySidebarSet4.z();
                                        break;
                                    default:
                                        ActivitySidebarSet activitySidebarSet5 = activitySidebarSet2;
                                        activitySidebarSet5.V.setText((CharSequence) activitySidebarSet5.S0.get(i15));
                                        activitySidebarSet5.z();
                                        break;
                                }
                            }
                        }).show();
                        break;
                    case 1:
                        int i15 = ActivitySidebarSet.V0;
                        final ActivitySidebarSet activitySidebarSet3 = this.f15905b;
                        activitySidebarSet3.getClass();
                        new fa(activitySidebarSet3, activitySidebarSet3.A, null, activitySidebarSet3.S0, new ea() { // from class: ua.r6
                            @Override // ha.ea
                            public final void b(int i152) {
                                switch (i12) {
                                    case 0:
                                        ActivitySidebarSet activitySidebarSet32 = activitySidebarSet3;
                                        activitySidebarSet32.S.setText((CharSequence) activitySidebarSet32.S0.get(i152));
                                        activitySidebarSet32.z();
                                        break;
                                    case 1:
                                        ActivitySidebarSet activitySidebarSet4 = activitySidebarSet3;
                                        activitySidebarSet4.T.setText((CharSequence) activitySidebarSet4.S0.get(i152));
                                        activitySidebarSet4.z();
                                        break;
                                    default:
                                        ActivitySidebarSet activitySidebarSet5 = activitySidebarSet3;
                                        activitySidebarSet5.V.setText((CharSequence) activitySidebarSet5.S0.get(i152));
                                        activitySidebarSet5.z();
                                        break;
                                }
                            }
                        }).show();
                        break;
                    case 2:
                        int i16 = ActivitySidebarSet.V0;
                        activitySidebarSet.finish();
                        break;
                    case 3:
                        int i17 = ActivitySidebarSet.V0;
                        final ActivitySidebarSet activitySidebarSet4 = this.f15905b;
                        activitySidebarSet4.getClass();
                        final int i18 = 2;
                        new fa(activitySidebarSet4, activitySidebarSet4.A, null, activitySidebarSet4.S0, new ea() { // from class: ua.r6
                            @Override // ha.ea
                            public final void b(int i152) {
                                switch (i18) {
                                    case 0:
                                        ActivitySidebarSet activitySidebarSet32 = activitySidebarSet4;
                                        activitySidebarSet32.S.setText((CharSequence) activitySidebarSet32.S0.get(i152));
                                        activitySidebarSet32.z();
                                        break;
                                    case 1:
                                        ActivitySidebarSet activitySidebarSet42 = activitySidebarSet4;
                                        activitySidebarSet42.T.setText((CharSequence) activitySidebarSet42.S0.get(i152));
                                        activitySidebarSet42.z();
                                        break;
                                    default:
                                        ActivitySidebarSet activitySidebarSet5 = activitySidebarSet4;
                                        activitySidebarSet5.V.setText((CharSequence) activitySidebarSet5.S0.get(i152));
                                        activitySidebarSet5.z();
                                        break;
                                }
                            }
                        }).show();
                        break;
                    case 4:
                        activitySidebarSet.C.k("leftOn", Boolean.valueOf(activitySidebarSet.M));
                        activitySidebarSet.C.k("rightOn", Boolean.valueOf(activitySidebarSet.N));
                        activitySidebarSet.C.k("bottomOn", Boolean.valueOf(activitySidebarSet.O));
                        activitySidebarSet.C.k("showView", Boolean.valueOf(activitySidebarSet.P));
                        activitySidebarSet.C.k("upTrigger", Boolean.valueOf(activitySidebarSet.R));
                        activitySidebarSet.C.l("leftSplit", Integer.valueOf(Integer.parseInt(activitySidebarSet.S.getText().toString())));
                        activitySidebarSet.C.l("rightSplit", Integer.valueOf(Integer.parseInt(activitySidebarSet.T.getText().toString())));
                        activitySidebarSet.C.l("bottomSplit", Integer.valueOf(Integer.parseInt(activitySidebarSet.V.getText().toString())));
                        activitySidebarSet.C.l("leftSize", Integer.valueOf(activitySidebarSet.Y.getProgress()));
                        activitySidebarSet.C.l("rightSize", Integer.valueOf(activitySidebarSet.Z.getProgress()));
                        activitySidebarSet.C.l("bottomSize", Integer.valueOf(activitySidebarSet.f3988h0.getProgress()));
                        activitySidebarSet.C.l("effect", Integer.valueOf(activitySidebarSet.R0));
                        activitySidebarSet.C.m("effectName", activitySidebarSet.X.getText().toString());
                        activitySidebarSet.C.l("leftTop", Integer.valueOf(activitySidebarSet.f3989t0.getProgress()));
                        activitySidebarSet.C.l("leftBottom", Integer.valueOf(activitySidebarSet.M0.getProgress()));
                        activitySidebarSet.C.l("rightTop", Integer.valueOf(activitySidebarSet.N0.getProgress()));
                        activitySidebarSet.C.l("rightBottom", Integer.valueOf(activitySidebarSet.O0.getProgress()));
                        activitySidebarSet.C.l("bottomLeft", Integer.valueOf(activitySidebarSet.P0.getProgress()));
                        activitySidebarSet.C.l("bottomRight", Integer.valueOf(activitySidebarSet.Q0.getProgress()));
                        q4.a.X(activitySidebarSet, activitySidebarSet.C);
                        activitySidebarSet.finish();
                        break;
                    case 5:
                        boolean z = activitySidebarSet.M;
                        activitySidebarSet.M = true ^ z;
                        ImageView imageView = activitySidebarSet.G;
                        if (!z) {
                            i11 = R.drawable.tp_on;
                        }
                        imageView.setImageResource(i11);
                        break;
                    case 6:
                        boolean z4 = activitySidebarSet.N;
                        activitySidebarSet.N = true ^ z4;
                        ImageView imageView2 = activitySidebarSet.H;
                        if (!z4) {
                            i11 = R.drawable.tp_on;
                        }
                        imageView2.setImageResource(i11);
                        break;
                    case 7:
                        boolean z10 = activitySidebarSet.O;
                        activitySidebarSet.O = true ^ z10;
                        ImageView imageView3 = activitySidebarSet.I;
                        if (!z10) {
                            i11 = R.drawable.tp_on;
                        }
                        imageView3.setImageResource(i11);
                        break;
                    case 8:
                        boolean z11 = activitySidebarSet.P;
                        activitySidebarSet.P = true ^ z11;
                        ImageView imageView4 = activitySidebarSet.K;
                        if (!z11) {
                            i11 = R.drawable.tp_on;
                        }
                        imageView4.setImageResource(i11);
                        break;
                    default:
                        boolean z12 = activitySidebarSet.R;
                        activitySidebarSet.R = true ^ z12;
                        ImageView imageView5 = activitySidebarSet.L;
                        if (!z12) {
                            i11 = R.drawable.tp_on;
                        }
                        imageView5.setImageResource(i11);
                        break;
                }
            }
        });
        final int i11 = 4;
        findViewById(R.id.v_btn_yes).setOnClickListener(new View.OnClickListener(this) { // from class: ua.q6

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivitySidebarSet f15905b;

            {
                this.f15905b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i112 = R.drawable.tp_off;
                final int i12 = 1;
                ActivitySidebarSet activitySidebarSet = this.f15905b;
                switch (i11) {
                    case 0:
                        int i13 = ActivitySidebarSet.V0;
                        final ActivitySidebarSet activitySidebarSet2 = this.f15905b;
                        activitySidebarSet2.getClass();
                        final int i14 = 0;
                        new fa(activitySidebarSet2, activitySidebarSet2.A, null, activitySidebarSet2.S0, new ea() { // from class: ua.r6
                            @Override // ha.ea
                            public final void b(int i152) {
                                switch (i14) {
                                    case 0:
                                        ActivitySidebarSet activitySidebarSet32 = activitySidebarSet2;
                                        activitySidebarSet32.S.setText((CharSequence) activitySidebarSet32.S0.get(i152));
                                        activitySidebarSet32.z();
                                        break;
                                    case 1:
                                        ActivitySidebarSet activitySidebarSet42 = activitySidebarSet2;
                                        activitySidebarSet42.T.setText((CharSequence) activitySidebarSet42.S0.get(i152));
                                        activitySidebarSet42.z();
                                        break;
                                    default:
                                        ActivitySidebarSet activitySidebarSet5 = activitySidebarSet2;
                                        activitySidebarSet5.V.setText((CharSequence) activitySidebarSet5.S0.get(i152));
                                        activitySidebarSet5.z();
                                        break;
                                }
                            }
                        }).show();
                        break;
                    case 1:
                        int i15 = ActivitySidebarSet.V0;
                        final ActivitySidebarSet activitySidebarSet3 = this.f15905b;
                        activitySidebarSet3.getClass();
                        new fa(activitySidebarSet3, activitySidebarSet3.A, null, activitySidebarSet3.S0, new ea() { // from class: ua.r6
                            @Override // ha.ea
                            public final void b(int i152) {
                                switch (i12) {
                                    case 0:
                                        ActivitySidebarSet activitySidebarSet32 = activitySidebarSet3;
                                        activitySidebarSet32.S.setText((CharSequence) activitySidebarSet32.S0.get(i152));
                                        activitySidebarSet32.z();
                                        break;
                                    case 1:
                                        ActivitySidebarSet activitySidebarSet42 = activitySidebarSet3;
                                        activitySidebarSet42.T.setText((CharSequence) activitySidebarSet42.S0.get(i152));
                                        activitySidebarSet42.z();
                                        break;
                                    default:
                                        ActivitySidebarSet activitySidebarSet5 = activitySidebarSet3;
                                        activitySidebarSet5.V.setText((CharSequence) activitySidebarSet5.S0.get(i152));
                                        activitySidebarSet5.z();
                                        break;
                                }
                            }
                        }).show();
                        break;
                    case 2:
                        int i16 = ActivitySidebarSet.V0;
                        activitySidebarSet.finish();
                        break;
                    case 3:
                        int i17 = ActivitySidebarSet.V0;
                        final ActivitySidebarSet activitySidebarSet4 = this.f15905b;
                        activitySidebarSet4.getClass();
                        final int i18 = 2;
                        new fa(activitySidebarSet4, activitySidebarSet4.A, null, activitySidebarSet4.S0, new ea() { // from class: ua.r6
                            @Override // ha.ea
                            public final void b(int i152) {
                                switch (i18) {
                                    case 0:
                                        ActivitySidebarSet activitySidebarSet32 = activitySidebarSet4;
                                        activitySidebarSet32.S.setText((CharSequence) activitySidebarSet32.S0.get(i152));
                                        activitySidebarSet32.z();
                                        break;
                                    case 1:
                                        ActivitySidebarSet activitySidebarSet42 = activitySidebarSet4;
                                        activitySidebarSet42.T.setText((CharSequence) activitySidebarSet42.S0.get(i152));
                                        activitySidebarSet42.z();
                                        break;
                                    default:
                                        ActivitySidebarSet activitySidebarSet5 = activitySidebarSet4;
                                        activitySidebarSet5.V.setText((CharSequence) activitySidebarSet5.S0.get(i152));
                                        activitySidebarSet5.z();
                                        break;
                                }
                            }
                        }).show();
                        break;
                    case 4:
                        activitySidebarSet.C.k("leftOn", Boolean.valueOf(activitySidebarSet.M));
                        activitySidebarSet.C.k("rightOn", Boolean.valueOf(activitySidebarSet.N));
                        activitySidebarSet.C.k("bottomOn", Boolean.valueOf(activitySidebarSet.O));
                        activitySidebarSet.C.k("showView", Boolean.valueOf(activitySidebarSet.P));
                        activitySidebarSet.C.k("upTrigger", Boolean.valueOf(activitySidebarSet.R));
                        activitySidebarSet.C.l("leftSplit", Integer.valueOf(Integer.parseInt(activitySidebarSet.S.getText().toString())));
                        activitySidebarSet.C.l("rightSplit", Integer.valueOf(Integer.parseInt(activitySidebarSet.T.getText().toString())));
                        activitySidebarSet.C.l("bottomSplit", Integer.valueOf(Integer.parseInt(activitySidebarSet.V.getText().toString())));
                        activitySidebarSet.C.l("leftSize", Integer.valueOf(activitySidebarSet.Y.getProgress()));
                        activitySidebarSet.C.l("rightSize", Integer.valueOf(activitySidebarSet.Z.getProgress()));
                        activitySidebarSet.C.l("bottomSize", Integer.valueOf(activitySidebarSet.f3988h0.getProgress()));
                        activitySidebarSet.C.l("effect", Integer.valueOf(activitySidebarSet.R0));
                        activitySidebarSet.C.m("effectName", activitySidebarSet.X.getText().toString());
                        activitySidebarSet.C.l("leftTop", Integer.valueOf(activitySidebarSet.f3989t0.getProgress()));
                        activitySidebarSet.C.l("leftBottom", Integer.valueOf(activitySidebarSet.M0.getProgress()));
                        activitySidebarSet.C.l("rightTop", Integer.valueOf(activitySidebarSet.N0.getProgress()));
                        activitySidebarSet.C.l("rightBottom", Integer.valueOf(activitySidebarSet.O0.getProgress()));
                        activitySidebarSet.C.l("bottomLeft", Integer.valueOf(activitySidebarSet.P0.getProgress()));
                        activitySidebarSet.C.l("bottomRight", Integer.valueOf(activitySidebarSet.Q0.getProgress()));
                        q4.a.X(activitySidebarSet, activitySidebarSet.C);
                        activitySidebarSet.finish();
                        break;
                    case 5:
                        boolean z = activitySidebarSet.M;
                        activitySidebarSet.M = true ^ z;
                        ImageView imageView = activitySidebarSet.G;
                        if (!z) {
                            i112 = R.drawable.tp_on;
                        }
                        imageView.setImageResource(i112);
                        break;
                    case 6:
                        boolean z4 = activitySidebarSet.N;
                        activitySidebarSet.N = true ^ z4;
                        ImageView imageView2 = activitySidebarSet.H;
                        if (!z4) {
                            i112 = R.drawable.tp_on;
                        }
                        imageView2.setImageResource(i112);
                        break;
                    case 7:
                        boolean z10 = activitySidebarSet.O;
                        activitySidebarSet.O = true ^ z10;
                        ImageView imageView3 = activitySidebarSet.I;
                        if (!z10) {
                            i112 = R.drawable.tp_on;
                        }
                        imageView3.setImageResource(i112);
                        break;
                    case 8:
                        boolean z11 = activitySidebarSet.P;
                        activitySidebarSet.P = true ^ z11;
                        ImageView imageView4 = activitySidebarSet.K;
                        if (!z11) {
                            i112 = R.drawable.tp_on;
                        }
                        imageView4.setImageResource(i112);
                        break;
                    default:
                        boolean z12 = activitySidebarSet.R;
                        activitySidebarSet.R = true ^ z12;
                        ImageView imageView5 = activitySidebarSet.L;
                        if (!z12) {
                            i112 = R.drawable.tp_on;
                        }
                        imageView5.setImageResource(i112);
                        break;
                }
            }
        });
        ArrayList arrayList = this.S0;
        arrayList.add("1");
        arrayList.add("2");
        arrayList.add("3");
        Point pointR = a.R(this);
        int i12 = pointR.x / 20;
        s sVarX = q4.a.x(this);
        this.C = sVarX;
        this.M = sVarX.o("leftOn").b();
        this.N = this.C.o("rightOn").b();
        this.O = this.C.o("bottomOn").b();
        this.P = this.C.o("showView").b();
        if (this.C.f19480a.containsKey("upTrigger")) {
            this.R = this.C.o("upTrigger").b();
        } else {
            this.R = false;
        }
        this.D = findViewById(R.id.v_left);
        this.E = findViewById(R.id.v_right);
        this.F = findViewById(R.id.v_bottom);
        ViewGroup.LayoutParams layoutParams = this.D.getLayoutParams();
        layoutParams.width = this.C.o("leftSize").e();
        this.D.setLayoutParams(layoutParams);
        ViewGroup.LayoutParams layoutParams2 = this.E.getLayoutParams();
        layoutParams2.width = this.C.o("rightSize").e();
        this.E.setLayoutParams(layoutParams2);
        ViewGroup.LayoutParams layoutParams3 = this.F.getLayoutParams();
        layoutParams3.height = this.C.o("bottomSize").e();
        this.F.setLayoutParams(layoutParams3);
        ImageView imageView = (ImageView) findViewById(R.id.v_left_on);
        this.G = imageView;
        boolean z = this.M;
        int i13 = R.drawable.tp_off;
        imageView.setImageResource(z ? R.drawable.tp_on : R.drawable.tp_off);
        final int i14 = 5;
        this.G.setOnClickListener(new View.OnClickListener(this) { // from class: ua.q6

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivitySidebarSet f15905b;

            {
                this.f15905b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i112 = R.drawable.tp_off;
                final int i122 = 1;
                ActivitySidebarSet activitySidebarSet = this.f15905b;
                switch (i14) {
                    case 0:
                        int i132 = ActivitySidebarSet.V0;
                        final ActivitySidebarSet activitySidebarSet2 = this.f15905b;
                        activitySidebarSet2.getClass();
                        final int i142 = 0;
                        new fa(activitySidebarSet2, activitySidebarSet2.A, null, activitySidebarSet2.S0, new ea() { // from class: ua.r6
                            @Override // ha.ea
                            public final void b(int i152) {
                                switch (i142) {
                                    case 0:
                                        ActivitySidebarSet activitySidebarSet32 = activitySidebarSet2;
                                        activitySidebarSet32.S.setText((CharSequence) activitySidebarSet32.S0.get(i152));
                                        activitySidebarSet32.z();
                                        break;
                                    case 1:
                                        ActivitySidebarSet activitySidebarSet42 = activitySidebarSet2;
                                        activitySidebarSet42.T.setText((CharSequence) activitySidebarSet42.S0.get(i152));
                                        activitySidebarSet42.z();
                                        break;
                                    default:
                                        ActivitySidebarSet activitySidebarSet5 = activitySidebarSet2;
                                        activitySidebarSet5.V.setText((CharSequence) activitySidebarSet5.S0.get(i152));
                                        activitySidebarSet5.z();
                                        break;
                                }
                            }
                        }).show();
                        break;
                    case 1:
                        int i15 = ActivitySidebarSet.V0;
                        final ActivitySidebarSet activitySidebarSet3 = this.f15905b;
                        activitySidebarSet3.getClass();
                        new fa(activitySidebarSet3, activitySidebarSet3.A, null, activitySidebarSet3.S0, new ea() { // from class: ua.r6
                            @Override // ha.ea
                            public final void b(int i152) {
                                switch (i122) {
                                    case 0:
                                        ActivitySidebarSet activitySidebarSet32 = activitySidebarSet3;
                                        activitySidebarSet32.S.setText((CharSequence) activitySidebarSet32.S0.get(i152));
                                        activitySidebarSet32.z();
                                        break;
                                    case 1:
                                        ActivitySidebarSet activitySidebarSet42 = activitySidebarSet3;
                                        activitySidebarSet42.T.setText((CharSequence) activitySidebarSet42.S0.get(i152));
                                        activitySidebarSet42.z();
                                        break;
                                    default:
                                        ActivitySidebarSet activitySidebarSet5 = activitySidebarSet3;
                                        activitySidebarSet5.V.setText((CharSequence) activitySidebarSet5.S0.get(i152));
                                        activitySidebarSet5.z();
                                        break;
                                }
                            }
                        }).show();
                        break;
                    case 2:
                        int i16 = ActivitySidebarSet.V0;
                        activitySidebarSet.finish();
                        break;
                    case 3:
                        int i17 = ActivitySidebarSet.V0;
                        final ActivitySidebarSet activitySidebarSet4 = this.f15905b;
                        activitySidebarSet4.getClass();
                        final int i18 = 2;
                        new fa(activitySidebarSet4, activitySidebarSet4.A, null, activitySidebarSet4.S0, new ea() { // from class: ua.r6
                            @Override // ha.ea
                            public final void b(int i152) {
                                switch (i18) {
                                    case 0:
                                        ActivitySidebarSet activitySidebarSet32 = activitySidebarSet4;
                                        activitySidebarSet32.S.setText((CharSequence) activitySidebarSet32.S0.get(i152));
                                        activitySidebarSet32.z();
                                        break;
                                    case 1:
                                        ActivitySidebarSet activitySidebarSet42 = activitySidebarSet4;
                                        activitySidebarSet42.T.setText((CharSequence) activitySidebarSet42.S0.get(i152));
                                        activitySidebarSet42.z();
                                        break;
                                    default:
                                        ActivitySidebarSet activitySidebarSet5 = activitySidebarSet4;
                                        activitySidebarSet5.V.setText((CharSequence) activitySidebarSet5.S0.get(i152));
                                        activitySidebarSet5.z();
                                        break;
                                }
                            }
                        }).show();
                        break;
                    case 4:
                        activitySidebarSet.C.k("leftOn", Boolean.valueOf(activitySidebarSet.M));
                        activitySidebarSet.C.k("rightOn", Boolean.valueOf(activitySidebarSet.N));
                        activitySidebarSet.C.k("bottomOn", Boolean.valueOf(activitySidebarSet.O));
                        activitySidebarSet.C.k("showView", Boolean.valueOf(activitySidebarSet.P));
                        activitySidebarSet.C.k("upTrigger", Boolean.valueOf(activitySidebarSet.R));
                        activitySidebarSet.C.l("leftSplit", Integer.valueOf(Integer.parseInt(activitySidebarSet.S.getText().toString())));
                        activitySidebarSet.C.l("rightSplit", Integer.valueOf(Integer.parseInt(activitySidebarSet.T.getText().toString())));
                        activitySidebarSet.C.l("bottomSplit", Integer.valueOf(Integer.parseInt(activitySidebarSet.V.getText().toString())));
                        activitySidebarSet.C.l("leftSize", Integer.valueOf(activitySidebarSet.Y.getProgress()));
                        activitySidebarSet.C.l("rightSize", Integer.valueOf(activitySidebarSet.Z.getProgress()));
                        activitySidebarSet.C.l("bottomSize", Integer.valueOf(activitySidebarSet.f3988h0.getProgress()));
                        activitySidebarSet.C.l("effect", Integer.valueOf(activitySidebarSet.R0));
                        activitySidebarSet.C.m("effectName", activitySidebarSet.X.getText().toString());
                        activitySidebarSet.C.l("leftTop", Integer.valueOf(activitySidebarSet.f3989t0.getProgress()));
                        activitySidebarSet.C.l("leftBottom", Integer.valueOf(activitySidebarSet.M0.getProgress()));
                        activitySidebarSet.C.l("rightTop", Integer.valueOf(activitySidebarSet.N0.getProgress()));
                        activitySidebarSet.C.l("rightBottom", Integer.valueOf(activitySidebarSet.O0.getProgress()));
                        activitySidebarSet.C.l("bottomLeft", Integer.valueOf(activitySidebarSet.P0.getProgress()));
                        activitySidebarSet.C.l("bottomRight", Integer.valueOf(activitySidebarSet.Q0.getProgress()));
                        q4.a.X(activitySidebarSet, activitySidebarSet.C);
                        activitySidebarSet.finish();
                        break;
                    case 5:
                        boolean z4 = activitySidebarSet.M;
                        activitySidebarSet.M = true ^ z4;
                        ImageView imageView2 = activitySidebarSet.G;
                        if (!z4) {
                            i112 = R.drawable.tp_on;
                        }
                        imageView2.setImageResource(i112);
                        break;
                    case 6:
                        boolean z42 = activitySidebarSet.N;
                        activitySidebarSet.N = true ^ z42;
                        ImageView imageView22 = activitySidebarSet.H;
                        if (!z42) {
                            i112 = R.drawable.tp_on;
                        }
                        imageView22.setImageResource(i112);
                        break;
                    case 7:
                        boolean z10 = activitySidebarSet.O;
                        activitySidebarSet.O = true ^ z10;
                        ImageView imageView3 = activitySidebarSet.I;
                        if (!z10) {
                            i112 = R.drawable.tp_on;
                        }
                        imageView3.setImageResource(i112);
                        break;
                    case 8:
                        boolean z11 = activitySidebarSet.P;
                        activitySidebarSet.P = true ^ z11;
                        ImageView imageView4 = activitySidebarSet.K;
                        if (!z11) {
                            i112 = R.drawable.tp_on;
                        }
                        imageView4.setImageResource(i112);
                        break;
                    default:
                        boolean z12 = activitySidebarSet.R;
                        activitySidebarSet.R = true ^ z12;
                        ImageView imageView5 = activitySidebarSet.L;
                        if (!z12) {
                            i112 = R.drawable.tp_on;
                        }
                        imageView5.setImageResource(i112);
                        break;
                }
            }
        });
        ImageView imageView2 = (ImageView) findViewById(R.id.v_right_on);
        this.H = imageView2;
        imageView2.setImageResource(this.N ? R.drawable.tp_on : R.drawable.tp_off);
        final int i15 = 6;
        this.H.setOnClickListener(new View.OnClickListener(this) { // from class: ua.q6

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivitySidebarSet f15905b;

            {
                this.f15905b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i112 = R.drawable.tp_off;
                final int i122 = 1;
                ActivitySidebarSet activitySidebarSet = this.f15905b;
                switch (i15) {
                    case 0:
                        int i132 = ActivitySidebarSet.V0;
                        final ActivitySidebarSet activitySidebarSet2 = this.f15905b;
                        activitySidebarSet2.getClass();
                        final int i142 = 0;
                        new fa(activitySidebarSet2, activitySidebarSet2.A, null, activitySidebarSet2.S0, new ea() { // from class: ua.r6
                            @Override // ha.ea
                            public final void b(int i152) {
                                switch (i142) {
                                    case 0:
                                        ActivitySidebarSet activitySidebarSet32 = activitySidebarSet2;
                                        activitySidebarSet32.S.setText((CharSequence) activitySidebarSet32.S0.get(i152));
                                        activitySidebarSet32.z();
                                        break;
                                    case 1:
                                        ActivitySidebarSet activitySidebarSet42 = activitySidebarSet2;
                                        activitySidebarSet42.T.setText((CharSequence) activitySidebarSet42.S0.get(i152));
                                        activitySidebarSet42.z();
                                        break;
                                    default:
                                        ActivitySidebarSet activitySidebarSet5 = activitySidebarSet2;
                                        activitySidebarSet5.V.setText((CharSequence) activitySidebarSet5.S0.get(i152));
                                        activitySidebarSet5.z();
                                        break;
                                }
                            }
                        }).show();
                        break;
                    case 1:
                        int i152 = ActivitySidebarSet.V0;
                        final ActivitySidebarSet activitySidebarSet3 = this.f15905b;
                        activitySidebarSet3.getClass();
                        new fa(activitySidebarSet3, activitySidebarSet3.A, null, activitySidebarSet3.S0, new ea() { // from class: ua.r6
                            @Override // ha.ea
                            public final void b(int i1522) {
                                switch (i122) {
                                    case 0:
                                        ActivitySidebarSet activitySidebarSet32 = activitySidebarSet3;
                                        activitySidebarSet32.S.setText((CharSequence) activitySidebarSet32.S0.get(i1522));
                                        activitySidebarSet32.z();
                                        break;
                                    case 1:
                                        ActivitySidebarSet activitySidebarSet42 = activitySidebarSet3;
                                        activitySidebarSet42.T.setText((CharSequence) activitySidebarSet42.S0.get(i1522));
                                        activitySidebarSet42.z();
                                        break;
                                    default:
                                        ActivitySidebarSet activitySidebarSet5 = activitySidebarSet3;
                                        activitySidebarSet5.V.setText((CharSequence) activitySidebarSet5.S0.get(i1522));
                                        activitySidebarSet5.z();
                                        break;
                                }
                            }
                        }).show();
                        break;
                    case 2:
                        int i16 = ActivitySidebarSet.V0;
                        activitySidebarSet.finish();
                        break;
                    case 3:
                        int i17 = ActivitySidebarSet.V0;
                        final ActivitySidebarSet activitySidebarSet4 = this.f15905b;
                        activitySidebarSet4.getClass();
                        final int i18 = 2;
                        new fa(activitySidebarSet4, activitySidebarSet4.A, null, activitySidebarSet4.S0, new ea() { // from class: ua.r6
                            @Override // ha.ea
                            public final void b(int i1522) {
                                switch (i18) {
                                    case 0:
                                        ActivitySidebarSet activitySidebarSet32 = activitySidebarSet4;
                                        activitySidebarSet32.S.setText((CharSequence) activitySidebarSet32.S0.get(i1522));
                                        activitySidebarSet32.z();
                                        break;
                                    case 1:
                                        ActivitySidebarSet activitySidebarSet42 = activitySidebarSet4;
                                        activitySidebarSet42.T.setText((CharSequence) activitySidebarSet42.S0.get(i1522));
                                        activitySidebarSet42.z();
                                        break;
                                    default:
                                        ActivitySidebarSet activitySidebarSet5 = activitySidebarSet4;
                                        activitySidebarSet5.V.setText((CharSequence) activitySidebarSet5.S0.get(i1522));
                                        activitySidebarSet5.z();
                                        break;
                                }
                            }
                        }).show();
                        break;
                    case 4:
                        activitySidebarSet.C.k("leftOn", Boolean.valueOf(activitySidebarSet.M));
                        activitySidebarSet.C.k("rightOn", Boolean.valueOf(activitySidebarSet.N));
                        activitySidebarSet.C.k("bottomOn", Boolean.valueOf(activitySidebarSet.O));
                        activitySidebarSet.C.k("showView", Boolean.valueOf(activitySidebarSet.P));
                        activitySidebarSet.C.k("upTrigger", Boolean.valueOf(activitySidebarSet.R));
                        activitySidebarSet.C.l("leftSplit", Integer.valueOf(Integer.parseInt(activitySidebarSet.S.getText().toString())));
                        activitySidebarSet.C.l("rightSplit", Integer.valueOf(Integer.parseInt(activitySidebarSet.T.getText().toString())));
                        activitySidebarSet.C.l("bottomSplit", Integer.valueOf(Integer.parseInt(activitySidebarSet.V.getText().toString())));
                        activitySidebarSet.C.l("leftSize", Integer.valueOf(activitySidebarSet.Y.getProgress()));
                        activitySidebarSet.C.l("rightSize", Integer.valueOf(activitySidebarSet.Z.getProgress()));
                        activitySidebarSet.C.l("bottomSize", Integer.valueOf(activitySidebarSet.f3988h0.getProgress()));
                        activitySidebarSet.C.l("effect", Integer.valueOf(activitySidebarSet.R0));
                        activitySidebarSet.C.m("effectName", activitySidebarSet.X.getText().toString());
                        activitySidebarSet.C.l("leftTop", Integer.valueOf(activitySidebarSet.f3989t0.getProgress()));
                        activitySidebarSet.C.l("leftBottom", Integer.valueOf(activitySidebarSet.M0.getProgress()));
                        activitySidebarSet.C.l("rightTop", Integer.valueOf(activitySidebarSet.N0.getProgress()));
                        activitySidebarSet.C.l("rightBottom", Integer.valueOf(activitySidebarSet.O0.getProgress()));
                        activitySidebarSet.C.l("bottomLeft", Integer.valueOf(activitySidebarSet.P0.getProgress()));
                        activitySidebarSet.C.l("bottomRight", Integer.valueOf(activitySidebarSet.Q0.getProgress()));
                        q4.a.X(activitySidebarSet, activitySidebarSet.C);
                        activitySidebarSet.finish();
                        break;
                    case 5:
                        boolean z4 = activitySidebarSet.M;
                        activitySidebarSet.M = true ^ z4;
                        ImageView imageView22 = activitySidebarSet.G;
                        if (!z4) {
                            i112 = R.drawable.tp_on;
                        }
                        imageView22.setImageResource(i112);
                        break;
                    case 6:
                        boolean z42 = activitySidebarSet.N;
                        activitySidebarSet.N = true ^ z42;
                        ImageView imageView222 = activitySidebarSet.H;
                        if (!z42) {
                            i112 = R.drawable.tp_on;
                        }
                        imageView222.setImageResource(i112);
                        break;
                    case 7:
                        boolean z10 = activitySidebarSet.O;
                        activitySidebarSet.O = true ^ z10;
                        ImageView imageView3 = activitySidebarSet.I;
                        if (!z10) {
                            i112 = R.drawable.tp_on;
                        }
                        imageView3.setImageResource(i112);
                        break;
                    case 8:
                        boolean z11 = activitySidebarSet.P;
                        activitySidebarSet.P = true ^ z11;
                        ImageView imageView4 = activitySidebarSet.K;
                        if (!z11) {
                            i112 = R.drawable.tp_on;
                        }
                        imageView4.setImageResource(i112);
                        break;
                    default:
                        boolean z12 = activitySidebarSet.R;
                        activitySidebarSet.R = true ^ z12;
                        ImageView imageView5 = activitySidebarSet.L;
                        if (!z12) {
                            i112 = R.drawable.tp_on;
                        }
                        imageView5.setImageResource(i112);
                        break;
                }
            }
        });
        ImageView imageView3 = (ImageView) findViewById(R.id.v_bottom_on);
        this.I = imageView3;
        imageView3.setImageResource(this.O ? R.drawable.tp_on : R.drawable.tp_off);
        final int i16 = 7;
        this.I.setOnClickListener(new View.OnClickListener(this) { // from class: ua.q6

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivitySidebarSet f15905b;

            {
                this.f15905b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i112 = R.drawable.tp_off;
                final int i122 = 1;
                ActivitySidebarSet activitySidebarSet = this.f15905b;
                switch (i16) {
                    case 0:
                        int i132 = ActivitySidebarSet.V0;
                        final ActivitySidebarSet activitySidebarSet2 = this.f15905b;
                        activitySidebarSet2.getClass();
                        final int i142 = 0;
                        new fa(activitySidebarSet2, activitySidebarSet2.A, null, activitySidebarSet2.S0, new ea() { // from class: ua.r6
                            @Override // ha.ea
                            public final void b(int i1522) {
                                switch (i142) {
                                    case 0:
                                        ActivitySidebarSet activitySidebarSet32 = activitySidebarSet2;
                                        activitySidebarSet32.S.setText((CharSequence) activitySidebarSet32.S0.get(i1522));
                                        activitySidebarSet32.z();
                                        break;
                                    case 1:
                                        ActivitySidebarSet activitySidebarSet42 = activitySidebarSet2;
                                        activitySidebarSet42.T.setText((CharSequence) activitySidebarSet42.S0.get(i1522));
                                        activitySidebarSet42.z();
                                        break;
                                    default:
                                        ActivitySidebarSet activitySidebarSet5 = activitySidebarSet2;
                                        activitySidebarSet5.V.setText((CharSequence) activitySidebarSet5.S0.get(i1522));
                                        activitySidebarSet5.z();
                                        break;
                                }
                            }
                        }).show();
                        break;
                    case 1:
                        int i152 = ActivitySidebarSet.V0;
                        final ActivitySidebarSet activitySidebarSet3 = this.f15905b;
                        activitySidebarSet3.getClass();
                        new fa(activitySidebarSet3, activitySidebarSet3.A, null, activitySidebarSet3.S0, new ea() { // from class: ua.r6
                            @Override // ha.ea
                            public final void b(int i1522) {
                                switch (i122) {
                                    case 0:
                                        ActivitySidebarSet activitySidebarSet32 = activitySidebarSet3;
                                        activitySidebarSet32.S.setText((CharSequence) activitySidebarSet32.S0.get(i1522));
                                        activitySidebarSet32.z();
                                        break;
                                    case 1:
                                        ActivitySidebarSet activitySidebarSet42 = activitySidebarSet3;
                                        activitySidebarSet42.T.setText((CharSequence) activitySidebarSet42.S0.get(i1522));
                                        activitySidebarSet42.z();
                                        break;
                                    default:
                                        ActivitySidebarSet activitySidebarSet5 = activitySidebarSet3;
                                        activitySidebarSet5.V.setText((CharSequence) activitySidebarSet5.S0.get(i1522));
                                        activitySidebarSet5.z();
                                        break;
                                }
                            }
                        }).show();
                        break;
                    case 2:
                        int i162 = ActivitySidebarSet.V0;
                        activitySidebarSet.finish();
                        break;
                    case 3:
                        int i17 = ActivitySidebarSet.V0;
                        final ActivitySidebarSet activitySidebarSet4 = this.f15905b;
                        activitySidebarSet4.getClass();
                        final int i18 = 2;
                        new fa(activitySidebarSet4, activitySidebarSet4.A, null, activitySidebarSet4.S0, new ea() { // from class: ua.r6
                            @Override // ha.ea
                            public final void b(int i1522) {
                                switch (i18) {
                                    case 0:
                                        ActivitySidebarSet activitySidebarSet32 = activitySidebarSet4;
                                        activitySidebarSet32.S.setText((CharSequence) activitySidebarSet32.S0.get(i1522));
                                        activitySidebarSet32.z();
                                        break;
                                    case 1:
                                        ActivitySidebarSet activitySidebarSet42 = activitySidebarSet4;
                                        activitySidebarSet42.T.setText((CharSequence) activitySidebarSet42.S0.get(i1522));
                                        activitySidebarSet42.z();
                                        break;
                                    default:
                                        ActivitySidebarSet activitySidebarSet5 = activitySidebarSet4;
                                        activitySidebarSet5.V.setText((CharSequence) activitySidebarSet5.S0.get(i1522));
                                        activitySidebarSet5.z();
                                        break;
                                }
                            }
                        }).show();
                        break;
                    case 4:
                        activitySidebarSet.C.k("leftOn", Boolean.valueOf(activitySidebarSet.M));
                        activitySidebarSet.C.k("rightOn", Boolean.valueOf(activitySidebarSet.N));
                        activitySidebarSet.C.k("bottomOn", Boolean.valueOf(activitySidebarSet.O));
                        activitySidebarSet.C.k("showView", Boolean.valueOf(activitySidebarSet.P));
                        activitySidebarSet.C.k("upTrigger", Boolean.valueOf(activitySidebarSet.R));
                        activitySidebarSet.C.l("leftSplit", Integer.valueOf(Integer.parseInt(activitySidebarSet.S.getText().toString())));
                        activitySidebarSet.C.l("rightSplit", Integer.valueOf(Integer.parseInt(activitySidebarSet.T.getText().toString())));
                        activitySidebarSet.C.l("bottomSplit", Integer.valueOf(Integer.parseInt(activitySidebarSet.V.getText().toString())));
                        activitySidebarSet.C.l("leftSize", Integer.valueOf(activitySidebarSet.Y.getProgress()));
                        activitySidebarSet.C.l("rightSize", Integer.valueOf(activitySidebarSet.Z.getProgress()));
                        activitySidebarSet.C.l("bottomSize", Integer.valueOf(activitySidebarSet.f3988h0.getProgress()));
                        activitySidebarSet.C.l("effect", Integer.valueOf(activitySidebarSet.R0));
                        activitySidebarSet.C.m("effectName", activitySidebarSet.X.getText().toString());
                        activitySidebarSet.C.l("leftTop", Integer.valueOf(activitySidebarSet.f3989t0.getProgress()));
                        activitySidebarSet.C.l("leftBottom", Integer.valueOf(activitySidebarSet.M0.getProgress()));
                        activitySidebarSet.C.l("rightTop", Integer.valueOf(activitySidebarSet.N0.getProgress()));
                        activitySidebarSet.C.l("rightBottom", Integer.valueOf(activitySidebarSet.O0.getProgress()));
                        activitySidebarSet.C.l("bottomLeft", Integer.valueOf(activitySidebarSet.P0.getProgress()));
                        activitySidebarSet.C.l("bottomRight", Integer.valueOf(activitySidebarSet.Q0.getProgress()));
                        q4.a.X(activitySidebarSet, activitySidebarSet.C);
                        activitySidebarSet.finish();
                        break;
                    case 5:
                        boolean z4 = activitySidebarSet.M;
                        activitySidebarSet.M = true ^ z4;
                        ImageView imageView22 = activitySidebarSet.G;
                        if (!z4) {
                            i112 = R.drawable.tp_on;
                        }
                        imageView22.setImageResource(i112);
                        break;
                    case 6:
                        boolean z42 = activitySidebarSet.N;
                        activitySidebarSet.N = true ^ z42;
                        ImageView imageView222 = activitySidebarSet.H;
                        if (!z42) {
                            i112 = R.drawable.tp_on;
                        }
                        imageView222.setImageResource(i112);
                        break;
                    case 7:
                        boolean z10 = activitySidebarSet.O;
                        activitySidebarSet.O = true ^ z10;
                        ImageView imageView32 = activitySidebarSet.I;
                        if (!z10) {
                            i112 = R.drawable.tp_on;
                        }
                        imageView32.setImageResource(i112);
                        break;
                    case 8:
                        boolean z11 = activitySidebarSet.P;
                        activitySidebarSet.P = true ^ z11;
                        ImageView imageView4 = activitySidebarSet.K;
                        if (!z11) {
                            i112 = R.drawable.tp_on;
                        }
                        imageView4.setImageResource(i112);
                        break;
                    default:
                        boolean z12 = activitySidebarSet.R;
                        activitySidebarSet.R = true ^ z12;
                        ImageView imageView5 = activitySidebarSet.L;
                        if (!z12) {
                            i112 = R.drawable.tp_on;
                        }
                        imageView5.setImageResource(i112);
                        break;
                }
            }
        });
        ImageView imageView4 = (ImageView) findViewById(R.id.v_on_show_view);
        this.K = imageView4;
        imageView4.setImageResource(this.P ? R.drawable.tp_on : R.drawable.tp_off);
        final int i17 = 8;
        this.K.setOnClickListener(new View.OnClickListener(this) { // from class: ua.q6

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivitySidebarSet f15905b;

            {
                this.f15905b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i112 = R.drawable.tp_off;
                final int i122 = 1;
                ActivitySidebarSet activitySidebarSet = this.f15905b;
                switch (i17) {
                    case 0:
                        int i132 = ActivitySidebarSet.V0;
                        final ActivitySidebarSet activitySidebarSet2 = this.f15905b;
                        activitySidebarSet2.getClass();
                        final int i142 = 0;
                        new fa(activitySidebarSet2, activitySidebarSet2.A, null, activitySidebarSet2.S0, new ea() { // from class: ua.r6
                            @Override // ha.ea
                            public final void b(int i1522) {
                                switch (i142) {
                                    case 0:
                                        ActivitySidebarSet activitySidebarSet32 = activitySidebarSet2;
                                        activitySidebarSet32.S.setText((CharSequence) activitySidebarSet32.S0.get(i1522));
                                        activitySidebarSet32.z();
                                        break;
                                    case 1:
                                        ActivitySidebarSet activitySidebarSet42 = activitySidebarSet2;
                                        activitySidebarSet42.T.setText((CharSequence) activitySidebarSet42.S0.get(i1522));
                                        activitySidebarSet42.z();
                                        break;
                                    default:
                                        ActivitySidebarSet activitySidebarSet5 = activitySidebarSet2;
                                        activitySidebarSet5.V.setText((CharSequence) activitySidebarSet5.S0.get(i1522));
                                        activitySidebarSet5.z();
                                        break;
                                }
                            }
                        }).show();
                        break;
                    case 1:
                        int i152 = ActivitySidebarSet.V0;
                        final ActivitySidebarSet activitySidebarSet3 = this.f15905b;
                        activitySidebarSet3.getClass();
                        new fa(activitySidebarSet3, activitySidebarSet3.A, null, activitySidebarSet3.S0, new ea() { // from class: ua.r6
                            @Override // ha.ea
                            public final void b(int i1522) {
                                switch (i122) {
                                    case 0:
                                        ActivitySidebarSet activitySidebarSet32 = activitySidebarSet3;
                                        activitySidebarSet32.S.setText((CharSequence) activitySidebarSet32.S0.get(i1522));
                                        activitySidebarSet32.z();
                                        break;
                                    case 1:
                                        ActivitySidebarSet activitySidebarSet42 = activitySidebarSet3;
                                        activitySidebarSet42.T.setText((CharSequence) activitySidebarSet42.S0.get(i1522));
                                        activitySidebarSet42.z();
                                        break;
                                    default:
                                        ActivitySidebarSet activitySidebarSet5 = activitySidebarSet3;
                                        activitySidebarSet5.V.setText((CharSequence) activitySidebarSet5.S0.get(i1522));
                                        activitySidebarSet5.z();
                                        break;
                                }
                            }
                        }).show();
                        break;
                    case 2:
                        int i162 = ActivitySidebarSet.V0;
                        activitySidebarSet.finish();
                        break;
                    case 3:
                        int i172 = ActivitySidebarSet.V0;
                        final ActivitySidebarSet activitySidebarSet4 = this.f15905b;
                        activitySidebarSet4.getClass();
                        final int i18 = 2;
                        new fa(activitySidebarSet4, activitySidebarSet4.A, null, activitySidebarSet4.S0, new ea() { // from class: ua.r6
                            @Override // ha.ea
                            public final void b(int i1522) {
                                switch (i18) {
                                    case 0:
                                        ActivitySidebarSet activitySidebarSet32 = activitySidebarSet4;
                                        activitySidebarSet32.S.setText((CharSequence) activitySidebarSet32.S0.get(i1522));
                                        activitySidebarSet32.z();
                                        break;
                                    case 1:
                                        ActivitySidebarSet activitySidebarSet42 = activitySidebarSet4;
                                        activitySidebarSet42.T.setText((CharSequence) activitySidebarSet42.S0.get(i1522));
                                        activitySidebarSet42.z();
                                        break;
                                    default:
                                        ActivitySidebarSet activitySidebarSet5 = activitySidebarSet4;
                                        activitySidebarSet5.V.setText((CharSequence) activitySidebarSet5.S0.get(i1522));
                                        activitySidebarSet5.z();
                                        break;
                                }
                            }
                        }).show();
                        break;
                    case 4:
                        activitySidebarSet.C.k("leftOn", Boolean.valueOf(activitySidebarSet.M));
                        activitySidebarSet.C.k("rightOn", Boolean.valueOf(activitySidebarSet.N));
                        activitySidebarSet.C.k("bottomOn", Boolean.valueOf(activitySidebarSet.O));
                        activitySidebarSet.C.k("showView", Boolean.valueOf(activitySidebarSet.P));
                        activitySidebarSet.C.k("upTrigger", Boolean.valueOf(activitySidebarSet.R));
                        activitySidebarSet.C.l("leftSplit", Integer.valueOf(Integer.parseInt(activitySidebarSet.S.getText().toString())));
                        activitySidebarSet.C.l("rightSplit", Integer.valueOf(Integer.parseInt(activitySidebarSet.T.getText().toString())));
                        activitySidebarSet.C.l("bottomSplit", Integer.valueOf(Integer.parseInt(activitySidebarSet.V.getText().toString())));
                        activitySidebarSet.C.l("leftSize", Integer.valueOf(activitySidebarSet.Y.getProgress()));
                        activitySidebarSet.C.l("rightSize", Integer.valueOf(activitySidebarSet.Z.getProgress()));
                        activitySidebarSet.C.l("bottomSize", Integer.valueOf(activitySidebarSet.f3988h0.getProgress()));
                        activitySidebarSet.C.l("effect", Integer.valueOf(activitySidebarSet.R0));
                        activitySidebarSet.C.m("effectName", activitySidebarSet.X.getText().toString());
                        activitySidebarSet.C.l("leftTop", Integer.valueOf(activitySidebarSet.f3989t0.getProgress()));
                        activitySidebarSet.C.l("leftBottom", Integer.valueOf(activitySidebarSet.M0.getProgress()));
                        activitySidebarSet.C.l("rightTop", Integer.valueOf(activitySidebarSet.N0.getProgress()));
                        activitySidebarSet.C.l("rightBottom", Integer.valueOf(activitySidebarSet.O0.getProgress()));
                        activitySidebarSet.C.l("bottomLeft", Integer.valueOf(activitySidebarSet.P0.getProgress()));
                        activitySidebarSet.C.l("bottomRight", Integer.valueOf(activitySidebarSet.Q0.getProgress()));
                        q4.a.X(activitySidebarSet, activitySidebarSet.C);
                        activitySidebarSet.finish();
                        break;
                    case 5:
                        boolean z4 = activitySidebarSet.M;
                        activitySidebarSet.M = true ^ z4;
                        ImageView imageView22 = activitySidebarSet.G;
                        if (!z4) {
                            i112 = R.drawable.tp_on;
                        }
                        imageView22.setImageResource(i112);
                        break;
                    case 6:
                        boolean z42 = activitySidebarSet.N;
                        activitySidebarSet.N = true ^ z42;
                        ImageView imageView222 = activitySidebarSet.H;
                        if (!z42) {
                            i112 = R.drawable.tp_on;
                        }
                        imageView222.setImageResource(i112);
                        break;
                    case 7:
                        boolean z10 = activitySidebarSet.O;
                        activitySidebarSet.O = true ^ z10;
                        ImageView imageView32 = activitySidebarSet.I;
                        if (!z10) {
                            i112 = R.drawable.tp_on;
                        }
                        imageView32.setImageResource(i112);
                        break;
                    case 8:
                        boolean z11 = activitySidebarSet.P;
                        activitySidebarSet.P = true ^ z11;
                        ImageView imageView42 = activitySidebarSet.K;
                        if (!z11) {
                            i112 = R.drawable.tp_on;
                        }
                        imageView42.setImageResource(i112);
                        break;
                    default:
                        boolean z12 = activitySidebarSet.R;
                        activitySidebarSet.R = true ^ z12;
                        ImageView imageView5 = activitySidebarSet.L;
                        if (!z12) {
                            i112 = R.drawable.tp_on;
                        }
                        imageView5.setImageResource(i112);
                        break;
                }
            }
        });
        ImageView imageView5 = (ImageView) findViewById(R.id.v_on_up_trigger);
        this.L = imageView5;
        if (this.R) {
            i13 = R.drawable.tp_on;
        }
        imageView5.setImageResource(i13);
        final int i18 = 9;
        this.L.setOnClickListener(new View.OnClickListener(this) { // from class: ua.q6

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivitySidebarSet f15905b;

            {
                this.f15905b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i112 = R.drawable.tp_off;
                final int i122 = 1;
                ActivitySidebarSet activitySidebarSet = this.f15905b;
                switch (i18) {
                    case 0:
                        int i132 = ActivitySidebarSet.V0;
                        final ActivitySidebarSet activitySidebarSet2 = this.f15905b;
                        activitySidebarSet2.getClass();
                        final int i142 = 0;
                        new fa(activitySidebarSet2, activitySidebarSet2.A, null, activitySidebarSet2.S0, new ea() { // from class: ua.r6
                            @Override // ha.ea
                            public final void b(int i1522) {
                                switch (i142) {
                                    case 0:
                                        ActivitySidebarSet activitySidebarSet32 = activitySidebarSet2;
                                        activitySidebarSet32.S.setText((CharSequence) activitySidebarSet32.S0.get(i1522));
                                        activitySidebarSet32.z();
                                        break;
                                    case 1:
                                        ActivitySidebarSet activitySidebarSet42 = activitySidebarSet2;
                                        activitySidebarSet42.T.setText((CharSequence) activitySidebarSet42.S0.get(i1522));
                                        activitySidebarSet42.z();
                                        break;
                                    default:
                                        ActivitySidebarSet activitySidebarSet5 = activitySidebarSet2;
                                        activitySidebarSet5.V.setText((CharSequence) activitySidebarSet5.S0.get(i1522));
                                        activitySidebarSet5.z();
                                        break;
                                }
                            }
                        }).show();
                        break;
                    case 1:
                        int i152 = ActivitySidebarSet.V0;
                        final ActivitySidebarSet activitySidebarSet3 = this.f15905b;
                        activitySidebarSet3.getClass();
                        new fa(activitySidebarSet3, activitySidebarSet3.A, null, activitySidebarSet3.S0, new ea() { // from class: ua.r6
                            @Override // ha.ea
                            public final void b(int i1522) {
                                switch (i122) {
                                    case 0:
                                        ActivitySidebarSet activitySidebarSet32 = activitySidebarSet3;
                                        activitySidebarSet32.S.setText((CharSequence) activitySidebarSet32.S0.get(i1522));
                                        activitySidebarSet32.z();
                                        break;
                                    case 1:
                                        ActivitySidebarSet activitySidebarSet42 = activitySidebarSet3;
                                        activitySidebarSet42.T.setText((CharSequence) activitySidebarSet42.S0.get(i1522));
                                        activitySidebarSet42.z();
                                        break;
                                    default:
                                        ActivitySidebarSet activitySidebarSet5 = activitySidebarSet3;
                                        activitySidebarSet5.V.setText((CharSequence) activitySidebarSet5.S0.get(i1522));
                                        activitySidebarSet5.z();
                                        break;
                                }
                            }
                        }).show();
                        break;
                    case 2:
                        int i162 = ActivitySidebarSet.V0;
                        activitySidebarSet.finish();
                        break;
                    case 3:
                        int i172 = ActivitySidebarSet.V0;
                        final ActivitySidebarSet activitySidebarSet4 = this.f15905b;
                        activitySidebarSet4.getClass();
                        final int i182 = 2;
                        new fa(activitySidebarSet4, activitySidebarSet4.A, null, activitySidebarSet4.S0, new ea() { // from class: ua.r6
                            @Override // ha.ea
                            public final void b(int i1522) {
                                switch (i182) {
                                    case 0:
                                        ActivitySidebarSet activitySidebarSet32 = activitySidebarSet4;
                                        activitySidebarSet32.S.setText((CharSequence) activitySidebarSet32.S0.get(i1522));
                                        activitySidebarSet32.z();
                                        break;
                                    case 1:
                                        ActivitySidebarSet activitySidebarSet42 = activitySidebarSet4;
                                        activitySidebarSet42.T.setText((CharSequence) activitySidebarSet42.S0.get(i1522));
                                        activitySidebarSet42.z();
                                        break;
                                    default:
                                        ActivitySidebarSet activitySidebarSet5 = activitySidebarSet4;
                                        activitySidebarSet5.V.setText((CharSequence) activitySidebarSet5.S0.get(i1522));
                                        activitySidebarSet5.z();
                                        break;
                                }
                            }
                        }).show();
                        break;
                    case 4:
                        activitySidebarSet.C.k("leftOn", Boolean.valueOf(activitySidebarSet.M));
                        activitySidebarSet.C.k("rightOn", Boolean.valueOf(activitySidebarSet.N));
                        activitySidebarSet.C.k("bottomOn", Boolean.valueOf(activitySidebarSet.O));
                        activitySidebarSet.C.k("showView", Boolean.valueOf(activitySidebarSet.P));
                        activitySidebarSet.C.k("upTrigger", Boolean.valueOf(activitySidebarSet.R));
                        activitySidebarSet.C.l("leftSplit", Integer.valueOf(Integer.parseInt(activitySidebarSet.S.getText().toString())));
                        activitySidebarSet.C.l("rightSplit", Integer.valueOf(Integer.parseInt(activitySidebarSet.T.getText().toString())));
                        activitySidebarSet.C.l("bottomSplit", Integer.valueOf(Integer.parseInt(activitySidebarSet.V.getText().toString())));
                        activitySidebarSet.C.l("leftSize", Integer.valueOf(activitySidebarSet.Y.getProgress()));
                        activitySidebarSet.C.l("rightSize", Integer.valueOf(activitySidebarSet.Z.getProgress()));
                        activitySidebarSet.C.l("bottomSize", Integer.valueOf(activitySidebarSet.f3988h0.getProgress()));
                        activitySidebarSet.C.l("effect", Integer.valueOf(activitySidebarSet.R0));
                        activitySidebarSet.C.m("effectName", activitySidebarSet.X.getText().toString());
                        activitySidebarSet.C.l("leftTop", Integer.valueOf(activitySidebarSet.f3989t0.getProgress()));
                        activitySidebarSet.C.l("leftBottom", Integer.valueOf(activitySidebarSet.M0.getProgress()));
                        activitySidebarSet.C.l("rightTop", Integer.valueOf(activitySidebarSet.N0.getProgress()));
                        activitySidebarSet.C.l("rightBottom", Integer.valueOf(activitySidebarSet.O0.getProgress()));
                        activitySidebarSet.C.l("bottomLeft", Integer.valueOf(activitySidebarSet.P0.getProgress()));
                        activitySidebarSet.C.l("bottomRight", Integer.valueOf(activitySidebarSet.Q0.getProgress()));
                        q4.a.X(activitySidebarSet, activitySidebarSet.C);
                        activitySidebarSet.finish();
                        break;
                    case 5:
                        boolean z4 = activitySidebarSet.M;
                        activitySidebarSet.M = true ^ z4;
                        ImageView imageView22 = activitySidebarSet.G;
                        if (!z4) {
                            i112 = R.drawable.tp_on;
                        }
                        imageView22.setImageResource(i112);
                        break;
                    case 6:
                        boolean z42 = activitySidebarSet.N;
                        activitySidebarSet.N = true ^ z42;
                        ImageView imageView222 = activitySidebarSet.H;
                        if (!z42) {
                            i112 = R.drawable.tp_on;
                        }
                        imageView222.setImageResource(i112);
                        break;
                    case 7:
                        boolean z10 = activitySidebarSet.O;
                        activitySidebarSet.O = true ^ z10;
                        ImageView imageView32 = activitySidebarSet.I;
                        if (!z10) {
                            i112 = R.drawable.tp_on;
                        }
                        imageView32.setImageResource(i112);
                        break;
                    case 8:
                        boolean z11 = activitySidebarSet.P;
                        activitySidebarSet.P = true ^ z11;
                        ImageView imageView42 = activitySidebarSet.K;
                        if (!z11) {
                            i112 = R.drawable.tp_on;
                        }
                        imageView42.setImageResource(i112);
                        break;
                    default:
                        boolean z12 = activitySidebarSet.R;
                        activitySidebarSet.R = true ^ z12;
                        ImageView imageView52 = activitySidebarSet.L;
                        if (!z12) {
                            i112 = R.drawable.tp_on;
                        }
                        imageView52.setImageResource(i112);
                        break;
                }
            }
        });
        TextView textView = (TextView) findViewById(R.id.v_left_split);
        this.S = textView;
        textView.setText(String.valueOf(this.C.o("leftSplit").e()));
        final int i19 = 0;
        this.S.setOnClickListener(new View.OnClickListener(this) { // from class: ua.q6

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivitySidebarSet f15905b;

            {
                this.f15905b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i112 = R.drawable.tp_off;
                final int i122 = 1;
                ActivitySidebarSet activitySidebarSet = this.f15905b;
                switch (i19) {
                    case 0:
                        int i132 = ActivitySidebarSet.V0;
                        final ActivitySidebarSet activitySidebarSet2 = this.f15905b;
                        activitySidebarSet2.getClass();
                        final int i142 = 0;
                        new fa(activitySidebarSet2, activitySidebarSet2.A, null, activitySidebarSet2.S0, new ea() { // from class: ua.r6
                            @Override // ha.ea
                            public final void b(int i1522) {
                                switch (i142) {
                                    case 0:
                                        ActivitySidebarSet activitySidebarSet32 = activitySidebarSet2;
                                        activitySidebarSet32.S.setText((CharSequence) activitySidebarSet32.S0.get(i1522));
                                        activitySidebarSet32.z();
                                        break;
                                    case 1:
                                        ActivitySidebarSet activitySidebarSet42 = activitySidebarSet2;
                                        activitySidebarSet42.T.setText((CharSequence) activitySidebarSet42.S0.get(i1522));
                                        activitySidebarSet42.z();
                                        break;
                                    default:
                                        ActivitySidebarSet activitySidebarSet5 = activitySidebarSet2;
                                        activitySidebarSet5.V.setText((CharSequence) activitySidebarSet5.S0.get(i1522));
                                        activitySidebarSet5.z();
                                        break;
                                }
                            }
                        }).show();
                        break;
                    case 1:
                        int i152 = ActivitySidebarSet.V0;
                        final ActivitySidebarSet activitySidebarSet3 = this.f15905b;
                        activitySidebarSet3.getClass();
                        new fa(activitySidebarSet3, activitySidebarSet3.A, null, activitySidebarSet3.S0, new ea() { // from class: ua.r6
                            @Override // ha.ea
                            public final void b(int i1522) {
                                switch (i122) {
                                    case 0:
                                        ActivitySidebarSet activitySidebarSet32 = activitySidebarSet3;
                                        activitySidebarSet32.S.setText((CharSequence) activitySidebarSet32.S0.get(i1522));
                                        activitySidebarSet32.z();
                                        break;
                                    case 1:
                                        ActivitySidebarSet activitySidebarSet42 = activitySidebarSet3;
                                        activitySidebarSet42.T.setText((CharSequence) activitySidebarSet42.S0.get(i1522));
                                        activitySidebarSet42.z();
                                        break;
                                    default:
                                        ActivitySidebarSet activitySidebarSet5 = activitySidebarSet3;
                                        activitySidebarSet5.V.setText((CharSequence) activitySidebarSet5.S0.get(i1522));
                                        activitySidebarSet5.z();
                                        break;
                                }
                            }
                        }).show();
                        break;
                    case 2:
                        int i162 = ActivitySidebarSet.V0;
                        activitySidebarSet.finish();
                        break;
                    case 3:
                        int i172 = ActivitySidebarSet.V0;
                        final ActivitySidebarSet activitySidebarSet4 = this.f15905b;
                        activitySidebarSet4.getClass();
                        final int i182 = 2;
                        new fa(activitySidebarSet4, activitySidebarSet4.A, null, activitySidebarSet4.S0, new ea() { // from class: ua.r6
                            @Override // ha.ea
                            public final void b(int i1522) {
                                switch (i182) {
                                    case 0:
                                        ActivitySidebarSet activitySidebarSet32 = activitySidebarSet4;
                                        activitySidebarSet32.S.setText((CharSequence) activitySidebarSet32.S0.get(i1522));
                                        activitySidebarSet32.z();
                                        break;
                                    case 1:
                                        ActivitySidebarSet activitySidebarSet42 = activitySidebarSet4;
                                        activitySidebarSet42.T.setText((CharSequence) activitySidebarSet42.S0.get(i1522));
                                        activitySidebarSet42.z();
                                        break;
                                    default:
                                        ActivitySidebarSet activitySidebarSet5 = activitySidebarSet4;
                                        activitySidebarSet5.V.setText((CharSequence) activitySidebarSet5.S0.get(i1522));
                                        activitySidebarSet5.z();
                                        break;
                                }
                            }
                        }).show();
                        break;
                    case 4:
                        activitySidebarSet.C.k("leftOn", Boolean.valueOf(activitySidebarSet.M));
                        activitySidebarSet.C.k("rightOn", Boolean.valueOf(activitySidebarSet.N));
                        activitySidebarSet.C.k("bottomOn", Boolean.valueOf(activitySidebarSet.O));
                        activitySidebarSet.C.k("showView", Boolean.valueOf(activitySidebarSet.P));
                        activitySidebarSet.C.k("upTrigger", Boolean.valueOf(activitySidebarSet.R));
                        activitySidebarSet.C.l("leftSplit", Integer.valueOf(Integer.parseInt(activitySidebarSet.S.getText().toString())));
                        activitySidebarSet.C.l("rightSplit", Integer.valueOf(Integer.parseInt(activitySidebarSet.T.getText().toString())));
                        activitySidebarSet.C.l("bottomSplit", Integer.valueOf(Integer.parseInt(activitySidebarSet.V.getText().toString())));
                        activitySidebarSet.C.l("leftSize", Integer.valueOf(activitySidebarSet.Y.getProgress()));
                        activitySidebarSet.C.l("rightSize", Integer.valueOf(activitySidebarSet.Z.getProgress()));
                        activitySidebarSet.C.l("bottomSize", Integer.valueOf(activitySidebarSet.f3988h0.getProgress()));
                        activitySidebarSet.C.l("effect", Integer.valueOf(activitySidebarSet.R0));
                        activitySidebarSet.C.m("effectName", activitySidebarSet.X.getText().toString());
                        activitySidebarSet.C.l("leftTop", Integer.valueOf(activitySidebarSet.f3989t0.getProgress()));
                        activitySidebarSet.C.l("leftBottom", Integer.valueOf(activitySidebarSet.M0.getProgress()));
                        activitySidebarSet.C.l("rightTop", Integer.valueOf(activitySidebarSet.N0.getProgress()));
                        activitySidebarSet.C.l("rightBottom", Integer.valueOf(activitySidebarSet.O0.getProgress()));
                        activitySidebarSet.C.l("bottomLeft", Integer.valueOf(activitySidebarSet.P0.getProgress()));
                        activitySidebarSet.C.l("bottomRight", Integer.valueOf(activitySidebarSet.Q0.getProgress()));
                        q4.a.X(activitySidebarSet, activitySidebarSet.C);
                        activitySidebarSet.finish();
                        break;
                    case 5:
                        boolean z4 = activitySidebarSet.M;
                        activitySidebarSet.M = true ^ z4;
                        ImageView imageView22 = activitySidebarSet.G;
                        if (!z4) {
                            i112 = R.drawable.tp_on;
                        }
                        imageView22.setImageResource(i112);
                        break;
                    case 6:
                        boolean z42 = activitySidebarSet.N;
                        activitySidebarSet.N = true ^ z42;
                        ImageView imageView222 = activitySidebarSet.H;
                        if (!z42) {
                            i112 = R.drawable.tp_on;
                        }
                        imageView222.setImageResource(i112);
                        break;
                    case 7:
                        boolean z10 = activitySidebarSet.O;
                        activitySidebarSet.O = true ^ z10;
                        ImageView imageView32 = activitySidebarSet.I;
                        if (!z10) {
                            i112 = R.drawable.tp_on;
                        }
                        imageView32.setImageResource(i112);
                        break;
                    case 8:
                        boolean z11 = activitySidebarSet.P;
                        activitySidebarSet.P = true ^ z11;
                        ImageView imageView42 = activitySidebarSet.K;
                        if (!z11) {
                            i112 = R.drawable.tp_on;
                        }
                        imageView42.setImageResource(i112);
                        break;
                    default:
                        boolean z12 = activitySidebarSet.R;
                        activitySidebarSet.R = true ^ z12;
                        ImageView imageView52 = activitySidebarSet.L;
                        if (!z12) {
                            i112 = R.drawable.tp_on;
                        }
                        imageView52.setImageResource(i112);
                        break;
                }
            }
        });
        AppCompatSeekBar appCompatSeekBar = (AppCompatSeekBar) findViewById(R.id.v_left_size);
        this.Y = appCompatSeekBar;
        appCompatSeekBar.setMax(i12);
        this.Y.setProgress(this.C.o("leftSize").e());
        int i20 = Build.VERSION.SDK_INT;
        if (i20 >= 26) {
            this.Y.setMin(10);
        }
        this.Y.setOnSeekBarChangeListener(new s6(this, 0));
        AppCompatSeekBar appCompatSeekBar2 = (AppCompatSeekBar) findViewById(R.id.v_left_top);
        this.f3989t0 = appCompatSeekBar2;
        appCompatSeekBar2.setMax((pointR.y / 6) * 5);
        if (this.C.f19480a.containsKey("leftTop")) {
            this.f3989t0.setProgress(this.C.o("leftTop").e());
        } else {
            this.f3989t0.setProgress(30);
        }
        this.f3989t0.setOnSeekBarChangeListener(new s6(this, 1));
        AppCompatSeekBar appCompatSeekBar3 = (AppCompatSeekBar) findViewById(R.id.v_left_bottom);
        this.M0 = appCompatSeekBar3;
        appCompatSeekBar3.setMax((pointR.y / 6) * 5);
        if (this.C.f19480a.containsKey("leftBottom")) {
            this.M0.setProgress(this.C.o("leftBottom").e());
        } else {
            this.M0.setProgress(30);
        }
        this.M0.setOnSeekBarChangeListener(new s6(this, 2));
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.D.getLayoutParams();
        marginLayoutParams.topMargin = this.f3989t0.getProgress();
        marginLayoutParams.bottomMargin = this.M0.getProgress();
        this.D.setLayoutParams(marginLayoutParams);
        TextView textView2 = (TextView) findViewById(R.id.v_right_split);
        this.T = textView2;
        textView2.setText(String.valueOf(this.C.o("rightSplit").e()));
        final int i21 = 1;
        this.T.setOnClickListener(new View.OnClickListener(this) { // from class: ua.q6

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivitySidebarSet f15905b;

            {
                this.f15905b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i112 = R.drawable.tp_off;
                final int i122 = 1;
                ActivitySidebarSet activitySidebarSet = this.f15905b;
                switch (i21) {
                    case 0:
                        int i132 = ActivitySidebarSet.V0;
                        final ActivitySidebarSet activitySidebarSet2 = this.f15905b;
                        activitySidebarSet2.getClass();
                        final int i142 = 0;
                        new fa(activitySidebarSet2, activitySidebarSet2.A, null, activitySidebarSet2.S0, new ea() { // from class: ua.r6
                            @Override // ha.ea
                            public final void b(int i1522) {
                                switch (i142) {
                                    case 0:
                                        ActivitySidebarSet activitySidebarSet32 = activitySidebarSet2;
                                        activitySidebarSet32.S.setText((CharSequence) activitySidebarSet32.S0.get(i1522));
                                        activitySidebarSet32.z();
                                        break;
                                    case 1:
                                        ActivitySidebarSet activitySidebarSet42 = activitySidebarSet2;
                                        activitySidebarSet42.T.setText((CharSequence) activitySidebarSet42.S0.get(i1522));
                                        activitySidebarSet42.z();
                                        break;
                                    default:
                                        ActivitySidebarSet activitySidebarSet5 = activitySidebarSet2;
                                        activitySidebarSet5.V.setText((CharSequence) activitySidebarSet5.S0.get(i1522));
                                        activitySidebarSet5.z();
                                        break;
                                }
                            }
                        }).show();
                        break;
                    case 1:
                        int i152 = ActivitySidebarSet.V0;
                        final ActivitySidebarSet activitySidebarSet3 = this.f15905b;
                        activitySidebarSet3.getClass();
                        new fa(activitySidebarSet3, activitySidebarSet3.A, null, activitySidebarSet3.S0, new ea() { // from class: ua.r6
                            @Override // ha.ea
                            public final void b(int i1522) {
                                switch (i122) {
                                    case 0:
                                        ActivitySidebarSet activitySidebarSet32 = activitySidebarSet3;
                                        activitySidebarSet32.S.setText((CharSequence) activitySidebarSet32.S0.get(i1522));
                                        activitySidebarSet32.z();
                                        break;
                                    case 1:
                                        ActivitySidebarSet activitySidebarSet42 = activitySidebarSet3;
                                        activitySidebarSet42.T.setText((CharSequence) activitySidebarSet42.S0.get(i1522));
                                        activitySidebarSet42.z();
                                        break;
                                    default:
                                        ActivitySidebarSet activitySidebarSet5 = activitySidebarSet3;
                                        activitySidebarSet5.V.setText((CharSequence) activitySidebarSet5.S0.get(i1522));
                                        activitySidebarSet5.z();
                                        break;
                                }
                            }
                        }).show();
                        break;
                    case 2:
                        int i162 = ActivitySidebarSet.V0;
                        activitySidebarSet.finish();
                        break;
                    case 3:
                        int i172 = ActivitySidebarSet.V0;
                        final ActivitySidebarSet activitySidebarSet4 = this.f15905b;
                        activitySidebarSet4.getClass();
                        final int i182 = 2;
                        new fa(activitySidebarSet4, activitySidebarSet4.A, null, activitySidebarSet4.S0, new ea() { // from class: ua.r6
                            @Override // ha.ea
                            public final void b(int i1522) {
                                switch (i182) {
                                    case 0:
                                        ActivitySidebarSet activitySidebarSet32 = activitySidebarSet4;
                                        activitySidebarSet32.S.setText((CharSequence) activitySidebarSet32.S0.get(i1522));
                                        activitySidebarSet32.z();
                                        break;
                                    case 1:
                                        ActivitySidebarSet activitySidebarSet42 = activitySidebarSet4;
                                        activitySidebarSet42.T.setText((CharSequence) activitySidebarSet42.S0.get(i1522));
                                        activitySidebarSet42.z();
                                        break;
                                    default:
                                        ActivitySidebarSet activitySidebarSet5 = activitySidebarSet4;
                                        activitySidebarSet5.V.setText((CharSequence) activitySidebarSet5.S0.get(i1522));
                                        activitySidebarSet5.z();
                                        break;
                                }
                            }
                        }).show();
                        break;
                    case 4:
                        activitySidebarSet.C.k("leftOn", Boolean.valueOf(activitySidebarSet.M));
                        activitySidebarSet.C.k("rightOn", Boolean.valueOf(activitySidebarSet.N));
                        activitySidebarSet.C.k("bottomOn", Boolean.valueOf(activitySidebarSet.O));
                        activitySidebarSet.C.k("showView", Boolean.valueOf(activitySidebarSet.P));
                        activitySidebarSet.C.k("upTrigger", Boolean.valueOf(activitySidebarSet.R));
                        activitySidebarSet.C.l("leftSplit", Integer.valueOf(Integer.parseInt(activitySidebarSet.S.getText().toString())));
                        activitySidebarSet.C.l("rightSplit", Integer.valueOf(Integer.parseInt(activitySidebarSet.T.getText().toString())));
                        activitySidebarSet.C.l("bottomSplit", Integer.valueOf(Integer.parseInt(activitySidebarSet.V.getText().toString())));
                        activitySidebarSet.C.l("leftSize", Integer.valueOf(activitySidebarSet.Y.getProgress()));
                        activitySidebarSet.C.l("rightSize", Integer.valueOf(activitySidebarSet.Z.getProgress()));
                        activitySidebarSet.C.l("bottomSize", Integer.valueOf(activitySidebarSet.f3988h0.getProgress()));
                        activitySidebarSet.C.l("effect", Integer.valueOf(activitySidebarSet.R0));
                        activitySidebarSet.C.m("effectName", activitySidebarSet.X.getText().toString());
                        activitySidebarSet.C.l("leftTop", Integer.valueOf(activitySidebarSet.f3989t0.getProgress()));
                        activitySidebarSet.C.l("leftBottom", Integer.valueOf(activitySidebarSet.M0.getProgress()));
                        activitySidebarSet.C.l("rightTop", Integer.valueOf(activitySidebarSet.N0.getProgress()));
                        activitySidebarSet.C.l("rightBottom", Integer.valueOf(activitySidebarSet.O0.getProgress()));
                        activitySidebarSet.C.l("bottomLeft", Integer.valueOf(activitySidebarSet.P0.getProgress()));
                        activitySidebarSet.C.l("bottomRight", Integer.valueOf(activitySidebarSet.Q0.getProgress()));
                        q4.a.X(activitySidebarSet, activitySidebarSet.C);
                        activitySidebarSet.finish();
                        break;
                    case 5:
                        boolean z4 = activitySidebarSet.M;
                        activitySidebarSet.M = true ^ z4;
                        ImageView imageView22 = activitySidebarSet.G;
                        if (!z4) {
                            i112 = R.drawable.tp_on;
                        }
                        imageView22.setImageResource(i112);
                        break;
                    case 6:
                        boolean z42 = activitySidebarSet.N;
                        activitySidebarSet.N = true ^ z42;
                        ImageView imageView222 = activitySidebarSet.H;
                        if (!z42) {
                            i112 = R.drawable.tp_on;
                        }
                        imageView222.setImageResource(i112);
                        break;
                    case 7:
                        boolean z10 = activitySidebarSet.O;
                        activitySidebarSet.O = true ^ z10;
                        ImageView imageView32 = activitySidebarSet.I;
                        if (!z10) {
                            i112 = R.drawable.tp_on;
                        }
                        imageView32.setImageResource(i112);
                        break;
                    case 8:
                        boolean z11 = activitySidebarSet.P;
                        activitySidebarSet.P = true ^ z11;
                        ImageView imageView42 = activitySidebarSet.K;
                        if (!z11) {
                            i112 = R.drawable.tp_on;
                        }
                        imageView42.setImageResource(i112);
                        break;
                    default:
                        boolean z12 = activitySidebarSet.R;
                        activitySidebarSet.R = true ^ z12;
                        ImageView imageView52 = activitySidebarSet.L;
                        if (!z12) {
                            i112 = R.drawable.tp_on;
                        }
                        imageView52.setImageResource(i112);
                        break;
                }
            }
        });
        AppCompatSeekBar appCompatSeekBar4 = (AppCompatSeekBar) findViewById(R.id.v_right_size);
        this.Z = appCompatSeekBar4;
        appCompatSeekBar4.setMax(i12);
        this.Z.setProgress(this.C.o("rightSize").e());
        if (i20 >= 26) {
            this.Z.setMin(10);
        }
        this.Z.setOnSeekBarChangeListener(new s6(this, 3));
        AppCompatSeekBar appCompatSeekBar5 = (AppCompatSeekBar) findViewById(R.id.v_right_top);
        this.N0 = appCompatSeekBar5;
        appCompatSeekBar5.setMax((pointR.y / 6) * 5);
        if (this.C.f19480a.containsKey("rightTop")) {
            this.N0.setProgress(this.C.o("rightTop").e());
        } else {
            this.N0.setProgress(30);
        }
        this.N0.setOnSeekBarChangeListener(new s6(this, 4));
        AppCompatSeekBar appCompatSeekBar6 = (AppCompatSeekBar) findViewById(R.id.v_right_bottom);
        this.O0 = appCompatSeekBar6;
        appCompatSeekBar6.setMax((pointR.y / 6) * 5);
        if (this.C.f19480a.containsKey("rightBottom")) {
            this.O0.setProgress(this.C.o("rightBottom").e());
        } else {
            this.O0.setProgress(30);
        }
        this.O0.setOnSeekBarChangeListener(new s6(this, 5));
        ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) this.E.getLayoutParams();
        marginLayoutParams2.topMargin = this.N0.getProgress();
        marginLayoutParams2.bottomMargin = this.O0.getProgress();
        this.E.setLayoutParams(marginLayoutParams2);
        TextView textView3 = (TextView) findViewById(R.id.v_bottom_split);
        this.V = textView3;
        textView3.setText(String.valueOf(this.C.o("bottomSplit").e()));
        final int i22 = 3;
        this.V.setOnClickListener(new View.OnClickListener(this) { // from class: ua.q6

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivitySidebarSet f15905b;

            {
                this.f15905b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i112 = R.drawable.tp_off;
                final int i122 = 1;
                ActivitySidebarSet activitySidebarSet = this.f15905b;
                switch (i22) {
                    case 0:
                        int i132 = ActivitySidebarSet.V0;
                        final ActivitySidebarSet activitySidebarSet2 = this.f15905b;
                        activitySidebarSet2.getClass();
                        final int i142 = 0;
                        new fa(activitySidebarSet2, activitySidebarSet2.A, null, activitySidebarSet2.S0, new ea() { // from class: ua.r6
                            @Override // ha.ea
                            public final void b(int i1522) {
                                switch (i142) {
                                    case 0:
                                        ActivitySidebarSet activitySidebarSet32 = activitySidebarSet2;
                                        activitySidebarSet32.S.setText((CharSequence) activitySidebarSet32.S0.get(i1522));
                                        activitySidebarSet32.z();
                                        break;
                                    case 1:
                                        ActivitySidebarSet activitySidebarSet42 = activitySidebarSet2;
                                        activitySidebarSet42.T.setText((CharSequence) activitySidebarSet42.S0.get(i1522));
                                        activitySidebarSet42.z();
                                        break;
                                    default:
                                        ActivitySidebarSet activitySidebarSet5 = activitySidebarSet2;
                                        activitySidebarSet5.V.setText((CharSequence) activitySidebarSet5.S0.get(i1522));
                                        activitySidebarSet5.z();
                                        break;
                                }
                            }
                        }).show();
                        break;
                    case 1:
                        int i152 = ActivitySidebarSet.V0;
                        final ActivitySidebarSet activitySidebarSet3 = this.f15905b;
                        activitySidebarSet3.getClass();
                        new fa(activitySidebarSet3, activitySidebarSet3.A, null, activitySidebarSet3.S0, new ea() { // from class: ua.r6
                            @Override // ha.ea
                            public final void b(int i1522) {
                                switch (i122) {
                                    case 0:
                                        ActivitySidebarSet activitySidebarSet32 = activitySidebarSet3;
                                        activitySidebarSet32.S.setText((CharSequence) activitySidebarSet32.S0.get(i1522));
                                        activitySidebarSet32.z();
                                        break;
                                    case 1:
                                        ActivitySidebarSet activitySidebarSet42 = activitySidebarSet3;
                                        activitySidebarSet42.T.setText((CharSequence) activitySidebarSet42.S0.get(i1522));
                                        activitySidebarSet42.z();
                                        break;
                                    default:
                                        ActivitySidebarSet activitySidebarSet5 = activitySidebarSet3;
                                        activitySidebarSet5.V.setText((CharSequence) activitySidebarSet5.S0.get(i1522));
                                        activitySidebarSet5.z();
                                        break;
                                }
                            }
                        }).show();
                        break;
                    case 2:
                        int i162 = ActivitySidebarSet.V0;
                        activitySidebarSet.finish();
                        break;
                    case 3:
                        int i172 = ActivitySidebarSet.V0;
                        final ActivitySidebarSet activitySidebarSet4 = this.f15905b;
                        activitySidebarSet4.getClass();
                        final int i182 = 2;
                        new fa(activitySidebarSet4, activitySidebarSet4.A, null, activitySidebarSet4.S0, new ea() { // from class: ua.r6
                            @Override // ha.ea
                            public final void b(int i1522) {
                                switch (i182) {
                                    case 0:
                                        ActivitySidebarSet activitySidebarSet32 = activitySidebarSet4;
                                        activitySidebarSet32.S.setText((CharSequence) activitySidebarSet32.S0.get(i1522));
                                        activitySidebarSet32.z();
                                        break;
                                    case 1:
                                        ActivitySidebarSet activitySidebarSet42 = activitySidebarSet4;
                                        activitySidebarSet42.T.setText((CharSequence) activitySidebarSet42.S0.get(i1522));
                                        activitySidebarSet42.z();
                                        break;
                                    default:
                                        ActivitySidebarSet activitySidebarSet5 = activitySidebarSet4;
                                        activitySidebarSet5.V.setText((CharSequence) activitySidebarSet5.S0.get(i1522));
                                        activitySidebarSet5.z();
                                        break;
                                }
                            }
                        }).show();
                        break;
                    case 4:
                        activitySidebarSet.C.k("leftOn", Boolean.valueOf(activitySidebarSet.M));
                        activitySidebarSet.C.k("rightOn", Boolean.valueOf(activitySidebarSet.N));
                        activitySidebarSet.C.k("bottomOn", Boolean.valueOf(activitySidebarSet.O));
                        activitySidebarSet.C.k("showView", Boolean.valueOf(activitySidebarSet.P));
                        activitySidebarSet.C.k("upTrigger", Boolean.valueOf(activitySidebarSet.R));
                        activitySidebarSet.C.l("leftSplit", Integer.valueOf(Integer.parseInt(activitySidebarSet.S.getText().toString())));
                        activitySidebarSet.C.l("rightSplit", Integer.valueOf(Integer.parseInt(activitySidebarSet.T.getText().toString())));
                        activitySidebarSet.C.l("bottomSplit", Integer.valueOf(Integer.parseInt(activitySidebarSet.V.getText().toString())));
                        activitySidebarSet.C.l("leftSize", Integer.valueOf(activitySidebarSet.Y.getProgress()));
                        activitySidebarSet.C.l("rightSize", Integer.valueOf(activitySidebarSet.Z.getProgress()));
                        activitySidebarSet.C.l("bottomSize", Integer.valueOf(activitySidebarSet.f3988h0.getProgress()));
                        activitySidebarSet.C.l("effect", Integer.valueOf(activitySidebarSet.R0));
                        activitySidebarSet.C.m("effectName", activitySidebarSet.X.getText().toString());
                        activitySidebarSet.C.l("leftTop", Integer.valueOf(activitySidebarSet.f3989t0.getProgress()));
                        activitySidebarSet.C.l("leftBottom", Integer.valueOf(activitySidebarSet.M0.getProgress()));
                        activitySidebarSet.C.l("rightTop", Integer.valueOf(activitySidebarSet.N0.getProgress()));
                        activitySidebarSet.C.l("rightBottom", Integer.valueOf(activitySidebarSet.O0.getProgress()));
                        activitySidebarSet.C.l("bottomLeft", Integer.valueOf(activitySidebarSet.P0.getProgress()));
                        activitySidebarSet.C.l("bottomRight", Integer.valueOf(activitySidebarSet.Q0.getProgress()));
                        q4.a.X(activitySidebarSet, activitySidebarSet.C);
                        activitySidebarSet.finish();
                        break;
                    case 5:
                        boolean z4 = activitySidebarSet.M;
                        activitySidebarSet.M = true ^ z4;
                        ImageView imageView22 = activitySidebarSet.G;
                        if (!z4) {
                            i112 = R.drawable.tp_on;
                        }
                        imageView22.setImageResource(i112);
                        break;
                    case 6:
                        boolean z42 = activitySidebarSet.N;
                        activitySidebarSet.N = true ^ z42;
                        ImageView imageView222 = activitySidebarSet.H;
                        if (!z42) {
                            i112 = R.drawable.tp_on;
                        }
                        imageView222.setImageResource(i112);
                        break;
                    case 7:
                        boolean z10 = activitySidebarSet.O;
                        activitySidebarSet.O = true ^ z10;
                        ImageView imageView32 = activitySidebarSet.I;
                        if (!z10) {
                            i112 = R.drawable.tp_on;
                        }
                        imageView32.setImageResource(i112);
                        break;
                    case 8:
                        boolean z11 = activitySidebarSet.P;
                        activitySidebarSet.P = true ^ z11;
                        ImageView imageView42 = activitySidebarSet.K;
                        if (!z11) {
                            i112 = R.drawable.tp_on;
                        }
                        imageView42.setImageResource(i112);
                        break;
                    default:
                        boolean z12 = activitySidebarSet.R;
                        activitySidebarSet.R = true ^ z12;
                        ImageView imageView52 = activitySidebarSet.L;
                        if (!z12) {
                            i112 = R.drawable.tp_on;
                        }
                        imageView52.setImageResource(i112);
                        break;
                }
            }
        });
        AppCompatSeekBar appCompatSeekBar7 = (AppCompatSeekBar) findViewById(R.id.v_bottom_size);
        this.f3988h0 = appCompatSeekBar7;
        appCompatSeekBar7.setMax(i12);
        this.f3988h0.setProgress(this.C.o("bottomSize").e());
        if (i20 >= 26) {
            this.f3988h0.setMin(10);
        }
        this.f3988h0.setOnSeekBarChangeListener(new s6(this, 6));
        AppCompatSeekBar appCompatSeekBar8 = (AppCompatSeekBar) findViewById(R.id.v_bottom_left);
        this.P0 = appCompatSeekBar8;
        appCompatSeekBar8.setMax((pointR.y / 6) * 5);
        if (this.C.f19480a.containsKey("bottomLeft")) {
            this.P0.setProgress(this.C.o("bottomLeft").e());
        } else {
            this.P0.setProgress(30);
        }
        this.P0.setOnSeekBarChangeListener(new s6(this, 7));
        AppCompatSeekBar appCompatSeekBar9 = (AppCompatSeekBar) findViewById(R.id.v_bottom_right);
        this.Q0 = appCompatSeekBar9;
        appCompatSeekBar9.setMax((pointR.y / 6) * 5);
        if (this.C.f19480a.containsKey("bottomRight")) {
            this.Q0.setProgress(this.C.o("bottomRight").e());
        } else {
            this.Q0.setProgress(30);
        }
        this.Q0.setOnSeekBarChangeListener(new s6(this, 8));
        ViewGroup.MarginLayoutParams marginLayoutParams3 = (ViewGroup.MarginLayoutParams) this.F.getLayoutParams();
        marginLayoutParams3.leftMargin = this.P0.getProgress();
        marginLayoutParams3.rightMargin = this.Q0.getProgress();
        this.F.setLayoutParams(marginLayoutParams3);
        z();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add("无动画(省内存)");
        arrayList2.add("边缘多彩光效");
        this.R0 = this.C.o("effect").e();
        TextView textView4 = (TextView) findViewById(R.id.v_trigger_effect);
        this.X = textView4;
        textView4.setText(this.C.o("effectName").i());
        this.X.setOnClickListener(new i5(this, arrayList2, 2));
    }

    public final View x(boolean z) throws Resources.NotFoundException {
        View view = new View(this);
        view.setBackgroundColor(n0.g.c(this, R.color.color_2));
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.dp_2);
        int i10 = z ? 0 : dimensionPixelSize;
        if (!z) {
            dimensionPixelSize = 0;
        }
        view.setLayoutParams(new e(i10, dimensionPixelSize));
        this.T0.addView(view);
        this.U0.add(view);
        return view;
    }

    public final void z() {
        if (this.T0 == null) {
            this.T0 = (ConstraintLayout) findViewById(R.id.v_root);
        }
        HashSet hashSet = this.U0;
        if (!hashSet.isEmpty()) {
            Iterator it = hashSet.iterator();
            while (it.hasNext()) {
                this.T0.removeView((View) it.next());
            }
            hashSet.clear();
        }
        int iIntValue = Integer.valueOf(this.S.getText().toString()).intValue();
        if (iIntValue == 2) {
            y(R.id.v_left, x(true), 0.0f, true);
        } else if (iIntValue == 3) {
            y(R.id.v_left, x(true), 0.333f, true);
            y(R.id.v_left, x(true), 0.666f, true);
        }
        int iIntValue2 = Integer.valueOf(this.T.getText().toString()).intValue();
        if (iIntValue2 == 2) {
            y(R.id.v_right, x(true), 0.0f, true);
        } else if (iIntValue2 == 3) {
            y(R.id.v_right, x(true), 0.333f, true);
            y(R.id.v_right, x(true), 0.666f, true);
        }
        int iIntValue3 = Integer.valueOf(this.V.getText().toString()).intValue();
        if (iIntValue3 == 2) {
            y(R.id.v_bottom, x(false), 0.0f, false);
        } else if (iIntValue3 == 3) {
            y(R.id.v_bottom, x(false), 0.333f, false);
            y(R.id.v_bottom, x(false), 0.666f, false);
        }
    }
}
