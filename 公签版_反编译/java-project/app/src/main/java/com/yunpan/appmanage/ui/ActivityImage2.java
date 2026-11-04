package com.yunpan.appmanage.ui;

import android.os.Looper;
import android.view.KeyEvent;
import android.view.View;
import android.widget.CheckBox;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import b7.a;
import com.davemorrissey.labs.subscaleview.ImageSource;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.ImageData;
import com.yunpan.appmanage.carsdk.u;
import com.yunpan.appmanage.ui.ActivityImage2;
import com.yunpan.appmanage.util.j;
import com.yunpan.appmanage.util.k;
import com.yunpan.appmanage.util.v;
import com.yunpan.appmanage.util.w;
import com.yunpan.appmanage.view.MyImageView;
import da.g;
import fc.b;
import ha.n;
import java.text.DecimalFormat;
import kh.e;
import mc.c;
import org.greenrobot.eventbus.ThreadMode;
import rc.f;
import ua.i1;
import ua.k2;
import ua.l2;

/* loaded from: classes.dex */
public class ActivityImage2 extends g {
    public static final /* synthetic */ int M0 = 0;
    public MyImageView C;
    public ConstraintLayout D;
    public TextView E;
    public TextView F;
    public TextView G;
    public TextView H;
    public ConstraintLayout I;
    public TextView K;
    public TextView L;
    public TextView M;
    public TextView N;
    public ConstraintLayout O;
    public CheckBox P;
    public ConstraintLayout R;
    public TextView S;
    public TextView T;
    public TextView V;
    public String X = "";
    public float Y = 0.0f;
    public final u Z = new u(this, Looper.getMainLooper(), 20);

    /* renamed from: h0, reason: collision with root package name */
    public long f3976h0 = 0;

    /* renamed from: t0, reason: collision with root package name */
    public int f3977t0 = 0;

    @Override // androidx.activity.m, android.app.Activity
    public final void onBackPressed() {
        if (this.I.getVisibility() == 0) {
            x();
        } else {
            super.onBackPressed();
        }
    }

    @Override // da.g, q.i, androidx.fragment.app.j0, android.app.Activity
    public final void onDestroy() {
        u uVar = this.Z;
        uVar.removeMessages(0);
        uVar.removeCallbacksAndMessages(null);
        e.b().l(this);
        super.onDestroy();
    }

    @Override // da.g
    public final int t() {
        return R.layout.activity_image;
    }

    @Override // da.g
    public final void u() {
        e.b().j(this);
        this.C = (MyImageView) findViewById(R.id.v_image);
        this.D = (ConstraintLayout) findViewById(R.id.v_lay_top);
        this.E = (TextView) findViewById(R.id.v_btn_return);
        this.F = (TextView) findViewById(R.id.v_file_count);
        this.G = (TextView) findViewById(R.id.v_file_info);
        this.H = (TextView) findViewById(R.id.v_file_name);
        this.I = (ConstraintLayout) findViewById(R.id.v_lay_bottom);
        TextView textView = (TextView) findViewById(R.id.v_btn_delete);
        this.K = textView;
        textView.setVisibility(8);
        this.L = (TextView) findViewById(R.id.v_btn_rotation);
        this.M = (TextView) findViewById(R.id.v_btn_save);
        this.N = (TextView) findViewById(R.id.v_btn_auto);
        this.O = (ConstraintLayout) findViewById(R.id.v_lay_auto);
        this.P = (CheckBox) findViewById(R.id.v_checkBox_auto);
        this.R = (ConstraintLayout) findViewById(R.id.v_btn_time);
        this.S = (TextView) findViewById(R.id.v_btn_time_add);
        this.T = (TextView) findViewById(R.id.v_text_time);
        this.V = (TextView) findViewById(R.id.v_btn_time_reduce);
        final int i10 = 0;
        this.E.setOnClickListener(new View.OnClickListener(this) { // from class: ua.i2

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityImage2 f15729b;

            {
                this.f15729b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ActivityImage2 activityImage2 = this.f15729b;
                switch (i10) {
                    case 0:
                        int i11 = ActivityImage2.M0;
                        activityImage2.finish();
                        break;
                    case 1:
                        if (activityImage2.D.getVisibility() != 0) {
                            activityImage2.D.setVisibility(0);
                            activityImage2.I.setVisibility(0);
                            break;
                        } else {
                            activityImage2.x();
                            break;
                        }
                    case 2:
                        ConstraintLayout constraintLayout = activityImage2.O;
                        constraintLayout.setVisibility(constraintLayout.getVisibility() != 0 ? 0 : 8);
                        break;
                    case 3:
                        float f10 = activityImage2.Y + 90.0f;
                        activityImage2.Y = f10;
                        if (f10 < 360.0f) {
                            new mc.c(0, new k2(activityImage2, 1)).d(rc.f.f13757b).a(fc.b.a()).b(new l2(activityImage2, 1));
                            break;
                        } else {
                            activityImage2.Y = 0.0f;
                            activityImage2.M.setVisibility(8);
                            activityImage2.z(activityImage2.X);
                            break;
                        }
                    case 4:
                        int i12 = ActivityImage2.M0;
                        activityImage2.getClass();
                        com.yunpan.appmanage.util.w wVar = com.yunpan.appmanage.util.v.f4106a;
                        int i13 = wVar.H0 - 1;
                        int i14 = i13 >= 0 ? i13 : 0;
                        activityImage2.T.setText(i14 + "s");
                        wVar.x(i14);
                        break;
                    default:
                        int i15 = ActivityImage2.M0;
                        activityImage2.getClass();
                        com.yunpan.appmanage.util.w wVar2 = com.yunpan.appmanage.util.v.f4106a;
                        int i16 = wVar2.H0 + 1;
                        activityImage2.T.setText(i16 + "s");
                        wVar2.x(i16);
                        break;
                }
            }
        });
        this.C.setMaxScale(5.0f);
        x();
        CheckBox checkBox = this.P;
        w wVar = v.f4106a;
        checkBox.setChecked(wVar.G0);
        this.T.setText(wVar.H0 + "s");
        this.P.setOnCheckedChangeListener(new a(this, 2));
        final int i11 = 6;
        this.R.setOnKeyListener(new View.OnKeyListener(this) { // from class: ua.j2

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityImage2 f15763b;

            {
                this.f15763b = this;
            }

            @Override // android.view.View.OnKeyListener
            public final boolean onKey(View view, int i12, KeyEvent keyEvent) {
                ActivityImage2 activityImage2 = this.f15763b;
                switch (i11) {
                    case 0:
                        int i13 = ActivityImage2.M0;
                        activityImage2.getClass();
                        if (keyEvent.getAction() == 0) {
                            if (i12 == 21 || i12 == 19) {
                                DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                                com.yunpan.appmanage.util.j.f4033a.f4076y.position--;
                                activityImage2.y();
                            } else if (i12 == 22) {
                                DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
                                com.yunpan.appmanage.util.j.f4033a.f4076y.position++;
                                activityImage2.y();
                            } else if (i12 == 20) {
                                if (activityImage2.I.getVisibility() == 0) {
                                    activityImage2.L.requestFocus();
                                } else {
                                    DecimalFormat decimalFormat3 = com.yunpan.appmanage.util.k.f4034u0;
                                    com.yunpan.appmanage.util.j.f4033a.f4076y.position++;
                                    activityImage2.y();
                                }
                            } else if (i12 == 66) {
                                if (System.currentTimeMillis() - activityImage2.f3976h0 < 2000) {
                                    int i14 = activityImage2.f3977t0 + 1;
                                    activityImage2.f3977t0 = i14;
                                    if (i14 > 3) {
                                        com.yunpan.appmanage.util.w wVar2 = com.yunpan.appmanage.util.v.f4106a;
                                        if (wVar2.G0) {
                                            activityImage2.Z.removeMessages(0);
                                            wVar2.w(false);
                                            activityImage2.P.setChecked(false);
                                            com.yunpan.appmanage.util.a0.w("自动播放已关闭");
                                        }
                                    }
                                } else {
                                    activityImage2.f3976h0 = System.currentTimeMillis();
                                    activityImage2.f3977t0 = 0;
                                }
                                if (activityImage2.D.getVisibility() == 0) {
                                    activityImage2.x();
                                } else {
                                    activityImage2.D.setVisibility(0);
                                    activityImage2.I.setVisibility(0);
                                }
                            }
                        }
                        if (i12 == 21 || i12 == 22 || i12 == 19 || i12 == 20 || i12 == 66) {
                        }
                        break;
                    case 1:
                        int i15 = ActivityImage2.M0;
                        activityImage2.getClass();
                        if (keyEvent.getAction() == 0 && i12 == 19) {
                            activityImage2.x();
                        }
                        if (i12 == 19) {
                        }
                        break;
                    case 2:
                        int i16 = ActivityImage2.M0;
                        activityImage2.getClass();
                        if (keyEvent.getAction() == 0 && i12 == 19) {
                            activityImage2.x();
                        }
                        if (i12 == 19) {
                        }
                        break;
                    case 3:
                        int i17 = ActivityImage2.M0;
                        activityImage2.getClass();
                        if (keyEvent.getAction() == 0 && i12 == 19) {
                            activityImage2.x();
                        }
                        if (i12 == 19) {
                        }
                        break;
                    case 4:
                        int i18 = ActivityImage2.M0;
                        activityImage2.getClass();
                        if (keyEvent.getAction() == 0 && i12 == 19) {
                            activityImage2.R.requestFocus();
                        }
                        if (i12 == 19) {
                        }
                        break;
                    case 5:
                        int i19 = ActivityImage2.M0;
                        activityImage2.getClass();
                        if (keyEvent.getAction() == 0 && i12 == 19) {
                            activityImage2.x();
                        }
                        if (i12 == 19) {
                        }
                        break;
                    default:
                        int i20 = ActivityImage2.M0;
                        activityImage2.getClass();
                        if (keyEvent.getAction() == 0) {
                            if (i12 == 21) {
                                com.yunpan.appmanage.util.w wVar3 = com.yunpan.appmanage.util.v.f4106a;
                                int i21 = wVar3.H0 - 1;
                                if (i21 < 0) {
                                    i21 = 0;
                                }
                                activityImage2.T.setText(i21 + "s");
                                wVar3.x(i21);
                            } else if (i12 == 22) {
                                com.yunpan.appmanage.util.w wVar4 = com.yunpan.appmanage.util.v.f4106a;
                                int i22 = wVar4.H0 + 1;
                                activityImage2.T.setText(i22 + "s");
                                wVar4.x(i22);
                            }
                        }
                        if (i12 == 21 || i12 == 22) {
                        }
                        break;
                }
                return false;
            }
        });
        final int i12 = 4;
        this.V.setOnClickListener(new View.OnClickListener(this) { // from class: ua.i2

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityImage2 f15729b;

            {
                this.f15729b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ActivityImage2 activityImage2 = this.f15729b;
                switch (i12) {
                    case 0:
                        int i112 = ActivityImage2.M0;
                        activityImage2.finish();
                        break;
                    case 1:
                        if (activityImage2.D.getVisibility() != 0) {
                            activityImage2.D.setVisibility(0);
                            activityImage2.I.setVisibility(0);
                            break;
                        } else {
                            activityImage2.x();
                            break;
                        }
                    case 2:
                        ConstraintLayout constraintLayout = activityImage2.O;
                        constraintLayout.setVisibility(constraintLayout.getVisibility() != 0 ? 0 : 8);
                        break;
                    case 3:
                        float f10 = activityImage2.Y + 90.0f;
                        activityImage2.Y = f10;
                        if (f10 < 360.0f) {
                            new mc.c(0, new k2(activityImage2, 1)).d(rc.f.f13757b).a(fc.b.a()).b(new l2(activityImage2, 1));
                            break;
                        } else {
                            activityImage2.Y = 0.0f;
                            activityImage2.M.setVisibility(8);
                            activityImage2.z(activityImage2.X);
                            break;
                        }
                    case 4:
                        int i122 = ActivityImage2.M0;
                        activityImage2.getClass();
                        com.yunpan.appmanage.util.w wVar2 = com.yunpan.appmanage.util.v.f4106a;
                        int i13 = wVar2.H0 - 1;
                        int i14 = i13 >= 0 ? i13 : 0;
                        activityImage2.T.setText(i14 + "s");
                        wVar2.x(i14);
                        break;
                    default:
                        int i15 = ActivityImage2.M0;
                        activityImage2.getClass();
                        com.yunpan.appmanage.util.w wVar22 = com.yunpan.appmanage.util.v.f4106a;
                        int i16 = wVar22.H0 + 1;
                        activityImage2.T.setText(i16 + "s");
                        wVar22.x(i16);
                        break;
                }
            }
        });
        final int i13 = 5;
        this.S.setOnClickListener(new View.OnClickListener(this) { // from class: ua.i2

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityImage2 f15729b;

            {
                this.f15729b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ActivityImage2 activityImage2 = this.f15729b;
                switch (i13) {
                    case 0:
                        int i112 = ActivityImage2.M0;
                        activityImage2.finish();
                        break;
                    case 1:
                        if (activityImage2.D.getVisibility() != 0) {
                            activityImage2.D.setVisibility(0);
                            activityImage2.I.setVisibility(0);
                            break;
                        } else {
                            activityImage2.x();
                            break;
                        }
                    case 2:
                        ConstraintLayout constraintLayout = activityImage2.O;
                        constraintLayout.setVisibility(constraintLayout.getVisibility() != 0 ? 0 : 8);
                        break;
                    case 3:
                        float f10 = activityImage2.Y + 90.0f;
                        activityImage2.Y = f10;
                        if (f10 < 360.0f) {
                            new mc.c(0, new k2(activityImage2, 1)).d(rc.f.f13757b).a(fc.b.a()).b(new l2(activityImage2, 1));
                            break;
                        } else {
                            activityImage2.Y = 0.0f;
                            activityImage2.M.setVisibility(8);
                            activityImage2.z(activityImage2.X);
                            break;
                        }
                    case 4:
                        int i122 = ActivityImage2.M0;
                        activityImage2.getClass();
                        com.yunpan.appmanage.util.w wVar2 = com.yunpan.appmanage.util.v.f4106a;
                        int i132 = wVar2.H0 - 1;
                        int i14 = i132 >= 0 ? i132 : 0;
                        activityImage2.T.setText(i14 + "s");
                        wVar2.x(i14);
                        break;
                    default:
                        int i15 = ActivityImage2.M0;
                        activityImage2.getClass();
                        com.yunpan.appmanage.util.w wVar22 = com.yunpan.appmanage.util.v.f4106a;
                        int i16 = wVar22.H0 + 1;
                        activityImage2.T.setText(i16 + "s");
                        wVar22.x(i16);
                        break;
                }
            }
        });
        y();
        final int i14 = 1;
        this.C.setOnClickListener(new View.OnClickListener(this) { // from class: ua.i2

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityImage2 f15729b;

            {
                this.f15729b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ActivityImage2 activityImage2 = this.f15729b;
                switch (i14) {
                    case 0:
                        int i112 = ActivityImage2.M0;
                        activityImage2.finish();
                        break;
                    case 1:
                        if (activityImage2.D.getVisibility() != 0) {
                            activityImage2.D.setVisibility(0);
                            activityImage2.I.setVisibility(0);
                            break;
                        } else {
                            activityImage2.x();
                            break;
                        }
                    case 2:
                        ConstraintLayout constraintLayout = activityImage2.O;
                        constraintLayout.setVisibility(constraintLayout.getVisibility() != 0 ? 0 : 8);
                        break;
                    case 3:
                        float f10 = activityImage2.Y + 90.0f;
                        activityImage2.Y = f10;
                        if (f10 < 360.0f) {
                            new mc.c(0, new k2(activityImage2, 1)).d(rc.f.f13757b).a(fc.b.a()).b(new l2(activityImage2, 1));
                            break;
                        } else {
                            activityImage2.Y = 0.0f;
                            activityImage2.M.setVisibility(8);
                            activityImage2.z(activityImage2.X);
                            break;
                        }
                    case 4:
                        int i122 = ActivityImage2.M0;
                        activityImage2.getClass();
                        com.yunpan.appmanage.util.w wVar2 = com.yunpan.appmanage.util.v.f4106a;
                        int i132 = wVar2.H0 - 1;
                        int i142 = i132 >= 0 ? i132 : 0;
                        activityImage2.T.setText(i142 + "s");
                        wVar2.x(i142);
                        break;
                    default:
                        int i15 = ActivityImage2.M0;
                        activityImage2.getClass();
                        com.yunpan.appmanage.util.w wVar22 = com.yunpan.appmanage.util.v.f4106a;
                        int i16 = wVar22.H0 + 1;
                        activityImage2.T.setText(i16 + "s");
                        wVar22.x(i16);
                        break;
                }
            }
        });
        final int i15 = 0;
        this.C.setOnKeyListener(new View.OnKeyListener(this) { // from class: ua.j2

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityImage2 f15763b;

            {
                this.f15763b = this;
            }

            @Override // android.view.View.OnKeyListener
            public final boolean onKey(View view, int i122, KeyEvent keyEvent) {
                ActivityImage2 activityImage2 = this.f15763b;
                switch (i15) {
                    case 0:
                        int i132 = ActivityImage2.M0;
                        activityImage2.getClass();
                        if (keyEvent.getAction() == 0) {
                            if (i122 == 21 || i122 == 19) {
                                DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                                com.yunpan.appmanage.util.j.f4033a.f4076y.position--;
                                activityImage2.y();
                            } else if (i122 == 22) {
                                DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
                                com.yunpan.appmanage.util.j.f4033a.f4076y.position++;
                                activityImage2.y();
                            } else if (i122 == 20) {
                                if (activityImage2.I.getVisibility() == 0) {
                                    activityImage2.L.requestFocus();
                                } else {
                                    DecimalFormat decimalFormat3 = com.yunpan.appmanage.util.k.f4034u0;
                                    com.yunpan.appmanage.util.j.f4033a.f4076y.position++;
                                    activityImage2.y();
                                }
                            } else if (i122 == 66) {
                                if (System.currentTimeMillis() - activityImage2.f3976h0 < 2000) {
                                    int i142 = activityImage2.f3977t0 + 1;
                                    activityImage2.f3977t0 = i142;
                                    if (i142 > 3) {
                                        com.yunpan.appmanage.util.w wVar2 = com.yunpan.appmanage.util.v.f4106a;
                                        if (wVar2.G0) {
                                            activityImage2.Z.removeMessages(0);
                                            wVar2.w(false);
                                            activityImage2.P.setChecked(false);
                                            com.yunpan.appmanage.util.a0.w("自动播放已关闭");
                                        }
                                    }
                                } else {
                                    activityImage2.f3976h0 = System.currentTimeMillis();
                                    activityImage2.f3977t0 = 0;
                                }
                                if (activityImage2.D.getVisibility() == 0) {
                                    activityImage2.x();
                                } else {
                                    activityImage2.D.setVisibility(0);
                                    activityImage2.I.setVisibility(0);
                                }
                            }
                        }
                        if (i122 == 21 || i122 == 22 || i122 == 19 || i122 == 20 || i122 == 66) {
                        }
                        break;
                    case 1:
                        int i152 = ActivityImage2.M0;
                        activityImage2.getClass();
                        if (keyEvent.getAction() == 0 && i122 == 19) {
                            activityImage2.x();
                        }
                        if (i122 == 19) {
                        }
                        break;
                    case 2:
                        int i16 = ActivityImage2.M0;
                        activityImage2.getClass();
                        if (keyEvent.getAction() == 0 && i122 == 19) {
                            activityImage2.x();
                        }
                        if (i122 == 19) {
                        }
                        break;
                    case 3:
                        int i17 = ActivityImage2.M0;
                        activityImage2.getClass();
                        if (keyEvent.getAction() == 0 && i122 == 19) {
                            activityImage2.x();
                        }
                        if (i122 == 19) {
                        }
                        break;
                    case 4:
                        int i18 = ActivityImage2.M0;
                        activityImage2.getClass();
                        if (keyEvent.getAction() == 0 && i122 == 19) {
                            activityImage2.R.requestFocus();
                        }
                        if (i122 == 19) {
                        }
                        break;
                    case 5:
                        int i19 = ActivityImage2.M0;
                        activityImage2.getClass();
                        if (keyEvent.getAction() == 0 && i122 == 19) {
                            activityImage2.x();
                        }
                        if (i122 == 19) {
                        }
                        break;
                    default:
                        int i20 = ActivityImage2.M0;
                        activityImage2.getClass();
                        if (keyEvent.getAction() == 0) {
                            if (i122 == 21) {
                                com.yunpan.appmanage.util.w wVar3 = com.yunpan.appmanage.util.v.f4106a;
                                int i21 = wVar3.H0 - 1;
                                if (i21 < 0) {
                                    i21 = 0;
                                }
                                activityImage2.T.setText(i21 + "s");
                                wVar3.x(i21);
                            } else if (i122 == 22) {
                                com.yunpan.appmanage.util.w wVar4 = com.yunpan.appmanage.util.v.f4106a;
                                int i22 = wVar4.H0 + 1;
                                activityImage2.T.setText(i22 + "s");
                                wVar4.x(i22);
                            }
                        }
                        if (i122 == 21 || i122 == 22) {
                        }
                        break;
                }
                return false;
            }
        });
        this.C.setOnTouchDirection(new i1(6, this));
        final int i16 = 1;
        this.K.setOnKeyListener(new View.OnKeyListener(this) { // from class: ua.j2

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityImage2 f15763b;

            {
                this.f15763b = this;
            }

            @Override // android.view.View.OnKeyListener
            public final boolean onKey(View view, int i122, KeyEvent keyEvent) {
                ActivityImage2 activityImage2 = this.f15763b;
                switch (i16) {
                    case 0:
                        int i132 = ActivityImage2.M0;
                        activityImage2.getClass();
                        if (keyEvent.getAction() == 0) {
                            if (i122 == 21 || i122 == 19) {
                                DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                                com.yunpan.appmanage.util.j.f4033a.f4076y.position--;
                                activityImage2.y();
                            } else if (i122 == 22) {
                                DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
                                com.yunpan.appmanage.util.j.f4033a.f4076y.position++;
                                activityImage2.y();
                            } else if (i122 == 20) {
                                if (activityImage2.I.getVisibility() == 0) {
                                    activityImage2.L.requestFocus();
                                } else {
                                    DecimalFormat decimalFormat3 = com.yunpan.appmanage.util.k.f4034u0;
                                    com.yunpan.appmanage.util.j.f4033a.f4076y.position++;
                                    activityImage2.y();
                                }
                            } else if (i122 == 66) {
                                if (System.currentTimeMillis() - activityImage2.f3976h0 < 2000) {
                                    int i142 = activityImage2.f3977t0 + 1;
                                    activityImage2.f3977t0 = i142;
                                    if (i142 > 3) {
                                        com.yunpan.appmanage.util.w wVar2 = com.yunpan.appmanage.util.v.f4106a;
                                        if (wVar2.G0) {
                                            activityImage2.Z.removeMessages(0);
                                            wVar2.w(false);
                                            activityImage2.P.setChecked(false);
                                            com.yunpan.appmanage.util.a0.w("自动播放已关闭");
                                        }
                                    }
                                } else {
                                    activityImage2.f3976h0 = System.currentTimeMillis();
                                    activityImage2.f3977t0 = 0;
                                }
                                if (activityImage2.D.getVisibility() == 0) {
                                    activityImage2.x();
                                } else {
                                    activityImage2.D.setVisibility(0);
                                    activityImage2.I.setVisibility(0);
                                }
                            }
                        }
                        if (i122 == 21 || i122 == 22 || i122 == 19 || i122 == 20 || i122 == 66) {
                        }
                        break;
                    case 1:
                        int i152 = ActivityImage2.M0;
                        activityImage2.getClass();
                        if (keyEvent.getAction() == 0 && i122 == 19) {
                            activityImage2.x();
                        }
                        if (i122 == 19) {
                        }
                        break;
                    case 2:
                        int i162 = ActivityImage2.M0;
                        activityImage2.getClass();
                        if (keyEvent.getAction() == 0 && i122 == 19) {
                            activityImage2.x();
                        }
                        if (i122 == 19) {
                        }
                        break;
                    case 3:
                        int i17 = ActivityImage2.M0;
                        activityImage2.getClass();
                        if (keyEvent.getAction() == 0 && i122 == 19) {
                            activityImage2.x();
                        }
                        if (i122 == 19) {
                        }
                        break;
                    case 4:
                        int i18 = ActivityImage2.M0;
                        activityImage2.getClass();
                        if (keyEvent.getAction() == 0 && i122 == 19) {
                            activityImage2.R.requestFocus();
                        }
                        if (i122 == 19) {
                        }
                        break;
                    case 5:
                        int i19 = ActivityImage2.M0;
                        activityImage2.getClass();
                        if (keyEvent.getAction() == 0 && i122 == 19) {
                            activityImage2.x();
                        }
                        if (i122 == 19) {
                        }
                        break;
                    default:
                        int i20 = ActivityImage2.M0;
                        activityImage2.getClass();
                        if (keyEvent.getAction() == 0) {
                            if (i122 == 21) {
                                com.yunpan.appmanage.util.w wVar3 = com.yunpan.appmanage.util.v.f4106a;
                                int i21 = wVar3.H0 - 1;
                                if (i21 < 0) {
                                    i21 = 0;
                                }
                                activityImage2.T.setText(i21 + "s");
                                wVar3.x(i21);
                            } else if (i122 == 22) {
                                com.yunpan.appmanage.util.w wVar4 = com.yunpan.appmanage.util.v.f4106a;
                                int i22 = wVar4.H0 + 1;
                                activityImage2.T.setText(i22 + "s");
                                wVar4.x(i22);
                            }
                        }
                        if (i122 == 21 || i122 == 22) {
                        }
                        break;
                }
                return false;
            }
        });
        final int i17 = 2;
        this.L.setOnKeyListener(new View.OnKeyListener(this) { // from class: ua.j2

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityImage2 f15763b;

            {
                this.f15763b = this;
            }

            @Override // android.view.View.OnKeyListener
            public final boolean onKey(View view, int i122, KeyEvent keyEvent) {
                ActivityImage2 activityImage2 = this.f15763b;
                switch (i17) {
                    case 0:
                        int i132 = ActivityImage2.M0;
                        activityImage2.getClass();
                        if (keyEvent.getAction() == 0) {
                            if (i122 == 21 || i122 == 19) {
                                DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                                com.yunpan.appmanage.util.j.f4033a.f4076y.position--;
                                activityImage2.y();
                            } else if (i122 == 22) {
                                DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
                                com.yunpan.appmanage.util.j.f4033a.f4076y.position++;
                                activityImage2.y();
                            } else if (i122 == 20) {
                                if (activityImage2.I.getVisibility() == 0) {
                                    activityImage2.L.requestFocus();
                                } else {
                                    DecimalFormat decimalFormat3 = com.yunpan.appmanage.util.k.f4034u0;
                                    com.yunpan.appmanage.util.j.f4033a.f4076y.position++;
                                    activityImage2.y();
                                }
                            } else if (i122 == 66) {
                                if (System.currentTimeMillis() - activityImage2.f3976h0 < 2000) {
                                    int i142 = activityImage2.f3977t0 + 1;
                                    activityImage2.f3977t0 = i142;
                                    if (i142 > 3) {
                                        com.yunpan.appmanage.util.w wVar2 = com.yunpan.appmanage.util.v.f4106a;
                                        if (wVar2.G0) {
                                            activityImage2.Z.removeMessages(0);
                                            wVar2.w(false);
                                            activityImage2.P.setChecked(false);
                                            com.yunpan.appmanage.util.a0.w("自动播放已关闭");
                                        }
                                    }
                                } else {
                                    activityImage2.f3976h0 = System.currentTimeMillis();
                                    activityImage2.f3977t0 = 0;
                                }
                                if (activityImage2.D.getVisibility() == 0) {
                                    activityImage2.x();
                                } else {
                                    activityImage2.D.setVisibility(0);
                                    activityImage2.I.setVisibility(0);
                                }
                            }
                        }
                        if (i122 == 21 || i122 == 22 || i122 == 19 || i122 == 20 || i122 == 66) {
                        }
                        break;
                    case 1:
                        int i152 = ActivityImage2.M0;
                        activityImage2.getClass();
                        if (keyEvent.getAction() == 0 && i122 == 19) {
                            activityImage2.x();
                        }
                        if (i122 == 19) {
                        }
                        break;
                    case 2:
                        int i162 = ActivityImage2.M0;
                        activityImage2.getClass();
                        if (keyEvent.getAction() == 0 && i122 == 19) {
                            activityImage2.x();
                        }
                        if (i122 == 19) {
                        }
                        break;
                    case 3:
                        int i172 = ActivityImage2.M0;
                        activityImage2.getClass();
                        if (keyEvent.getAction() == 0 && i122 == 19) {
                            activityImage2.x();
                        }
                        if (i122 == 19) {
                        }
                        break;
                    case 4:
                        int i18 = ActivityImage2.M0;
                        activityImage2.getClass();
                        if (keyEvent.getAction() == 0 && i122 == 19) {
                            activityImage2.R.requestFocus();
                        }
                        if (i122 == 19) {
                        }
                        break;
                    case 5:
                        int i19 = ActivityImage2.M0;
                        activityImage2.getClass();
                        if (keyEvent.getAction() == 0 && i122 == 19) {
                            activityImage2.x();
                        }
                        if (i122 == 19) {
                        }
                        break;
                    default:
                        int i20 = ActivityImage2.M0;
                        activityImage2.getClass();
                        if (keyEvent.getAction() == 0) {
                            if (i122 == 21) {
                                com.yunpan.appmanage.util.w wVar3 = com.yunpan.appmanage.util.v.f4106a;
                                int i21 = wVar3.H0 - 1;
                                if (i21 < 0) {
                                    i21 = 0;
                                }
                                activityImage2.T.setText(i21 + "s");
                                wVar3.x(i21);
                            } else if (i122 == 22) {
                                com.yunpan.appmanage.util.w wVar4 = com.yunpan.appmanage.util.v.f4106a;
                                int i22 = wVar4.H0 + 1;
                                activityImage2.T.setText(i22 + "s");
                                wVar4.x(i22);
                            }
                        }
                        if (i122 == 21 || i122 == 22) {
                        }
                        break;
                }
                return false;
            }
        });
        final int i18 = 3;
        this.M.setOnKeyListener(new View.OnKeyListener(this) { // from class: ua.j2

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityImage2 f15763b;

            {
                this.f15763b = this;
            }

            @Override // android.view.View.OnKeyListener
            public final boolean onKey(View view, int i122, KeyEvent keyEvent) {
                ActivityImage2 activityImage2 = this.f15763b;
                switch (i18) {
                    case 0:
                        int i132 = ActivityImage2.M0;
                        activityImage2.getClass();
                        if (keyEvent.getAction() == 0) {
                            if (i122 == 21 || i122 == 19) {
                                DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                                com.yunpan.appmanage.util.j.f4033a.f4076y.position--;
                                activityImage2.y();
                            } else if (i122 == 22) {
                                DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
                                com.yunpan.appmanage.util.j.f4033a.f4076y.position++;
                                activityImage2.y();
                            } else if (i122 == 20) {
                                if (activityImage2.I.getVisibility() == 0) {
                                    activityImage2.L.requestFocus();
                                } else {
                                    DecimalFormat decimalFormat3 = com.yunpan.appmanage.util.k.f4034u0;
                                    com.yunpan.appmanage.util.j.f4033a.f4076y.position++;
                                    activityImage2.y();
                                }
                            } else if (i122 == 66) {
                                if (System.currentTimeMillis() - activityImage2.f3976h0 < 2000) {
                                    int i142 = activityImage2.f3977t0 + 1;
                                    activityImage2.f3977t0 = i142;
                                    if (i142 > 3) {
                                        com.yunpan.appmanage.util.w wVar2 = com.yunpan.appmanage.util.v.f4106a;
                                        if (wVar2.G0) {
                                            activityImage2.Z.removeMessages(0);
                                            wVar2.w(false);
                                            activityImage2.P.setChecked(false);
                                            com.yunpan.appmanage.util.a0.w("自动播放已关闭");
                                        }
                                    }
                                } else {
                                    activityImage2.f3976h0 = System.currentTimeMillis();
                                    activityImage2.f3977t0 = 0;
                                }
                                if (activityImage2.D.getVisibility() == 0) {
                                    activityImage2.x();
                                } else {
                                    activityImage2.D.setVisibility(0);
                                    activityImage2.I.setVisibility(0);
                                }
                            }
                        }
                        if (i122 == 21 || i122 == 22 || i122 == 19 || i122 == 20 || i122 == 66) {
                        }
                        break;
                    case 1:
                        int i152 = ActivityImage2.M0;
                        activityImage2.getClass();
                        if (keyEvent.getAction() == 0 && i122 == 19) {
                            activityImage2.x();
                        }
                        if (i122 == 19) {
                        }
                        break;
                    case 2:
                        int i162 = ActivityImage2.M0;
                        activityImage2.getClass();
                        if (keyEvent.getAction() == 0 && i122 == 19) {
                            activityImage2.x();
                        }
                        if (i122 == 19) {
                        }
                        break;
                    case 3:
                        int i172 = ActivityImage2.M0;
                        activityImage2.getClass();
                        if (keyEvent.getAction() == 0 && i122 == 19) {
                            activityImage2.x();
                        }
                        if (i122 == 19) {
                        }
                        break;
                    case 4:
                        int i182 = ActivityImage2.M0;
                        activityImage2.getClass();
                        if (keyEvent.getAction() == 0 && i122 == 19) {
                            activityImage2.R.requestFocus();
                        }
                        if (i122 == 19) {
                        }
                        break;
                    case 5:
                        int i19 = ActivityImage2.M0;
                        activityImage2.getClass();
                        if (keyEvent.getAction() == 0 && i122 == 19) {
                            activityImage2.x();
                        }
                        if (i122 == 19) {
                        }
                        break;
                    default:
                        int i20 = ActivityImage2.M0;
                        activityImage2.getClass();
                        if (keyEvent.getAction() == 0) {
                            if (i122 == 21) {
                                com.yunpan.appmanage.util.w wVar3 = com.yunpan.appmanage.util.v.f4106a;
                                int i21 = wVar3.H0 - 1;
                                if (i21 < 0) {
                                    i21 = 0;
                                }
                                activityImage2.T.setText(i21 + "s");
                                wVar3.x(i21);
                            } else if (i122 == 22) {
                                com.yunpan.appmanage.util.w wVar4 = com.yunpan.appmanage.util.v.f4106a;
                                int i22 = wVar4.H0 + 1;
                                activityImage2.T.setText(i22 + "s");
                                wVar4.x(i22);
                            }
                        }
                        if (i122 == 21 || i122 == 22) {
                        }
                        break;
                }
                return false;
            }
        });
        final int i19 = 4;
        this.N.setOnKeyListener(new View.OnKeyListener(this) { // from class: ua.j2

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityImage2 f15763b;

            {
                this.f15763b = this;
            }

            @Override // android.view.View.OnKeyListener
            public final boolean onKey(View view, int i122, KeyEvent keyEvent) {
                ActivityImage2 activityImage2 = this.f15763b;
                switch (i19) {
                    case 0:
                        int i132 = ActivityImage2.M0;
                        activityImage2.getClass();
                        if (keyEvent.getAction() == 0) {
                            if (i122 == 21 || i122 == 19) {
                                DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                                com.yunpan.appmanage.util.j.f4033a.f4076y.position--;
                                activityImage2.y();
                            } else if (i122 == 22) {
                                DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
                                com.yunpan.appmanage.util.j.f4033a.f4076y.position++;
                                activityImage2.y();
                            } else if (i122 == 20) {
                                if (activityImage2.I.getVisibility() == 0) {
                                    activityImage2.L.requestFocus();
                                } else {
                                    DecimalFormat decimalFormat3 = com.yunpan.appmanage.util.k.f4034u0;
                                    com.yunpan.appmanage.util.j.f4033a.f4076y.position++;
                                    activityImage2.y();
                                }
                            } else if (i122 == 66) {
                                if (System.currentTimeMillis() - activityImage2.f3976h0 < 2000) {
                                    int i142 = activityImage2.f3977t0 + 1;
                                    activityImage2.f3977t0 = i142;
                                    if (i142 > 3) {
                                        com.yunpan.appmanage.util.w wVar2 = com.yunpan.appmanage.util.v.f4106a;
                                        if (wVar2.G0) {
                                            activityImage2.Z.removeMessages(0);
                                            wVar2.w(false);
                                            activityImage2.P.setChecked(false);
                                            com.yunpan.appmanage.util.a0.w("自动播放已关闭");
                                        }
                                    }
                                } else {
                                    activityImage2.f3976h0 = System.currentTimeMillis();
                                    activityImage2.f3977t0 = 0;
                                }
                                if (activityImage2.D.getVisibility() == 0) {
                                    activityImage2.x();
                                } else {
                                    activityImage2.D.setVisibility(0);
                                    activityImage2.I.setVisibility(0);
                                }
                            }
                        }
                        if (i122 == 21 || i122 == 22 || i122 == 19 || i122 == 20 || i122 == 66) {
                        }
                        break;
                    case 1:
                        int i152 = ActivityImage2.M0;
                        activityImage2.getClass();
                        if (keyEvent.getAction() == 0 && i122 == 19) {
                            activityImage2.x();
                        }
                        if (i122 == 19) {
                        }
                        break;
                    case 2:
                        int i162 = ActivityImage2.M0;
                        activityImage2.getClass();
                        if (keyEvent.getAction() == 0 && i122 == 19) {
                            activityImage2.x();
                        }
                        if (i122 == 19) {
                        }
                        break;
                    case 3:
                        int i172 = ActivityImage2.M0;
                        activityImage2.getClass();
                        if (keyEvent.getAction() == 0 && i122 == 19) {
                            activityImage2.x();
                        }
                        if (i122 == 19) {
                        }
                        break;
                    case 4:
                        int i182 = ActivityImage2.M0;
                        activityImage2.getClass();
                        if (keyEvent.getAction() == 0 && i122 == 19) {
                            activityImage2.R.requestFocus();
                        }
                        if (i122 == 19) {
                        }
                        break;
                    case 5:
                        int i192 = ActivityImage2.M0;
                        activityImage2.getClass();
                        if (keyEvent.getAction() == 0 && i122 == 19) {
                            activityImage2.x();
                        }
                        if (i122 == 19) {
                        }
                        break;
                    default:
                        int i20 = ActivityImage2.M0;
                        activityImage2.getClass();
                        if (keyEvent.getAction() == 0) {
                            if (i122 == 21) {
                                com.yunpan.appmanage.util.w wVar3 = com.yunpan.appmanage.util.v.f4106a;
                                int i21 = wVar3.H0 - 1;
                                if (i21 < 0) {
                                    i21 = 0;
                                }
                                activityImage2.T.setText(i21 + "s");
                                wVar3.x(i21);
                            } else if (i122 == 22) {
                                com.yunpan.appmanage.util.w wVar4 = com.yunpan.appmanage.util.v.f4106a;
                                int i22 = wVar4.H0 + 1;
                                activityImage2.T.setText(i22 + "s");
                                wVar4.x(i22);
                            }
                        }
                        if (i122 == 21 || i122 == 22) {
                        }
                        break;
                }
                return false;
            }
        });
        final int i20 = 2;
        this.N.setOnClickListener(new View.OnClickListener(this) { // from class: ua.i2

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityImage2 f15729b;

            {
                this.f15729b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ActivityImage2 activityImage2 = this.f15729b;
                switch (i20) {
                    case 0:
                        int i112 = ActivityImage2.M0;
                        activityImage2.finish();
                        break;
                    case 1:
                        if (activityImage2.D.getVisibility() != 0) {
                            activityImage2.D.setVisibility(0);
                            activityImage2.I.setVisibility(0);
                            break;
                        } else {
                            activityImage2.x();
                            break;
                        }
                    case 2:
                        ConstraintLayout constraintLayout = activityImage2.O;
                        constraintLayout.setVisibility(constraintLayout.getVisibility() != 0 ? 0 : 8);
                        break;
                    case 3:
                        float f10 = activityImage2.Y + 90.0f;
                        activityImage2.Y = f10;
                        if (f10 < 360.0f) {
                            new mc.c(0, new k2(activityImage2, 1)).d(rc.f.f13757b).a(fc.b.a()).b(new l2(activityImage2, 1));
                            break;
                        } else {
                            activityImage2.Y = 0.0f;
                            activityImage2.M.setVisibility(8);
                            activityImage2.z(activityImage2.X);
                            break;
                        }
                    case 4:
                        int i122 = ActivityImage2.M0;
                        activityImage2.getClass();
                        com.yunpan.appmanage.util.w wVar2 = com.yunpan.appmanage.util.v.f4106a;
                        int i132 = wVar2.H0 - 1;
                        int i142 = i132 >= 0 ? i132 : 0;
                        activityImage2.T.setText(i142 + "s");
                        wVar2.x(i142);
                        break;
                    default:
                        int i152 = ActivityImage2.M0;
                        activityImage2.getClass();
                        com.yunpan.appmanage.util.w wVar22 = com.yunpan.appmanage.util.v.f4106a;
                        int i162 = wVar22.H0 + 1;
                        activityImage2.T.setText(i162 + "s");
                        wVar22.x(i162);
                        break;
                }
            }
        });
        final int i21 = 5;
        this.N.setOnFocusChangeListener(new n(5, this));
        this.P.setOnKeyListener(new View.OnKeyListener(this) { // from class: ua.j2

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityImage2 f15763b;

            {
                this.f15763b = this;
            }

            @Override // android.view.View.OnKeyListener
            public final boolean onKey(View view, int i122, KeyEvent keyEvent) {
                ActivityImage2 activityImage2 = this.f15763b;
                switch (i21) {
                    case 0:
                        int i132 = ActivityImage2.M0;
                        activityImage2.getClass();
                        if (keyEvent.getAction() == 0) {
                            if (i122 == 21 || i122 == 19) {
                                DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                                com.yunpan.appmanage.util.j.f4033a.f4076y.position--;
                                activityImage2.y();
                            } else if (i122 == 22) {
                                DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
                                com.yunpan.appmanage.util.j.f4033a.f4076y.position++;
                                activityImage2.y();
                            } else if (i122 == 20) {
                                if (activityImage2.I.getVisibility() == 0) {
                                    activityImage2.L.requestFocus();
                                } else {
                                    DecimalFormat decimalFormat3 = com.yunpan.appmanage.util.k.f4034u0;
                                    com.yunpan.appmanage.util.j.f4033a.f4076y.position++;
                                    activityImage2.y();
                                }
                            } else if (i122 == 66) {
                                if (System.currentTimeMillis() - activityImage2.f3976h0 < 2000) {
                                    int i142 = activityImage2.f3977t0 + 1;
                                    activityImage2.f3977t0 = i142;
                                    if (i142 > 3) {
                                        com.yunpan.appmanage.util.w wVar2 = com.yunpan.appmanage.util.v.f4106a;
                                        if (wVar2.G0) {
                                            activityImage2.Z.removeMessages(0);
                                            wVar2.w(false);
                                            activityImage2.P.setChecked(false);
                                            com.yunpan.appmanage.util.a0.w("自动播放已关闭");
                                        }
                                    }
                                } else {
                                    activityImage2.f3976h0 = System.currentTimeMillis();
                                    activityImage2.f3977t0 = 0;
                                }
                                if (activityImage2.D.getVisibility() == 0) {
                                    activityImage2.x();
                                } else {
                                    activityImage2.D.setVisibility(0);
                                    activityImage2.I.setVisibility(0);
                                }
                            }
                        }
                        if (i122 == 21 || i122 == 22 || i122 == 19 || i122 == 20 || i122 == 66) {
                        }
                        break;
                    case 1:
                        int i152 = ActivityImage2.M0;
                        activityImage2.getClass();
                        if (keyEvent.getAction() == 0 && i122 == 19) {
                            activityImage2.x();
                        }
                        if (i122 == 19) {
                        }
                        break;
                    case 2:
                        int i162 = ActivityImage2.M0;
                        activityImage2.getClass();
                        if (keyEvent.getAction() == 0 && i122 == 19) {
                            activityImage2.x();
                        }
                        if (i122 == 19) {
                        }
                        break;
                    case 3:
                        int i172 = ActivityImage2.M0;
                        activityImage2.getClass();
                        if (keyEvent.getAction() == 0 && i122 == 19) {
                            activityImage2.x();
                        }
                        if (i122 == 19) {
                        }
                        break;
                    case 4:
                        int i182 = ActivityImage2.M0;
                        activityImage2.getClass();
                        if (keyEvent.getAction() == 0 && i122 == 19) {
                            activityImage2.R.requestFocus();
                        }
                        if (i122 == 19) {
                        }
                        break;
                    case 5:
                        int i192 = ActivityImage2.M0;
                        activityImage2.getClass();
                        if (keyEvent.getAction() == 0 && i122 == 19) {
                            activityImage2.x();
                        }
                        if (i122 == 19) {
                        }
                        break;
                    default:
                        int i202 = ActivityImage2.M0;
                        activityImage2.getClass();
                        if (keyEvent.getAction() == 0) {
                            if (i122 == 21) {
                                com.yunpan.appmanage.util.w wVar3 = com.yunpan.appmanage.util.v.f4106a;
                                int i212 = wVar3.H0 - 1;
                                if (i212 < 0) {
                                    i212 = 0;
                                }
                                activityImage2.T.setText(i212 + "s");
                                wVar3.x(i212);
                            } else if (i122 == 22) {
                                com.yunpan.appmanage.util.w wVar4 = com.yunpan.appmanage.util.v.f4106a;
                                int i22 = wVar4.H0 + 1;
                                activityImage2.T.setText(i22 + "s");
                                wVar4.x(i22);
                            }
                        }
                        if (i122 == 21 || i122 == 22) {
                        }
                        break;
                }
                return false;
            }
        });
        final int i22 = 3;
        this.L.setOnClickListener(new View.OnClickListener(this) { // from class: ua.i2

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityImage2 f15729b;

            {
                this.f15729b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ActivityImage2 activityImage2 = this.f15729b;
                switch (i22) {
                    case 0:
                        int i112 = ActivityImage2.M0;
                        activityImage2.finish();
                        break;
                    case 1:
                        if (activityImage2.D.getVisibility() != 0) {
                            activityImage2.D.setVisibility(0);
                            activityImage2.I.setVisibility(0);
                            break;
                        } else {
                            activityImage2.x();
                            break;
                        }
                    case 2:
                        ConstraintLayout constraintLayout = activityImage2.O;
                        constraintLayout.setVisibility(constraintLayout.getVisibility() != 0 ? 0 : 8);
                        break;
                    case 3:
                        float f10 = activityImage2.Y + 90.0f;
                        activityImage2.Y = f10;
                        if (f10 < 360.0f) {
                            new mc.c(0, new k2(activityImage2, 1)).d(rc.f.f13757b).a(fc.b.a()).b(new l2(activityImage2, 1));
                            break;
                        } else {
                            activityImage2.Y = 0.0f;
                            activityImage2.M.setVisibility(8);
                            activityImage2.z(activityImage2.X);
                            break;
                        }
                    case 4:
                        int i122 = ActivityImage2.M0;
                        activityImage2.getClass();
                        com.yunpan.appmanage.util.w wVar2 = com.yunpan.appmanage.util.v.f4106a;
                        int i132 = wVar2.H0 - 1;
                        int i142 = i132 >= 0 ? i132 : 0;
                        activityImage2.T.setText(i142 + "s");
                        wVar2.x(i142);
                        break;
                    default:
                        int i152 = ActivityImage2.M0;
                        activityImage2.getClass();
                        com.yunpan.appmanage.util.w wVar22 = com.yunpan.appmanage.util.v.f4106a;
                        int i162 = wVar22.H0 + 1;
                        activityImage2.T.setText(i162 + "s");
                        wVar22.x(i162);
                        break;
                }
            }
        });
    }

    public final void x() {
        this.C.requestFocus();
        this.D.setVisibility(8);
        this.I.setVisibility(8);
        this.O.setVisibility(8);
        this.M.setVisibility(8);
    }

    public final void y() {
        int i10 = 0;
        this.Z.removeMessages(0);
        DecimalFormat decimalFormat = k.f4034u0;
        k kVar = j.f4033a;
        ImageData imageData = kVar.f4076y;
        if (imageData.position >= imageData.wpFiles.size()) {
            kVar.f4076y.position = 0;
        }
        ImageData imageData2 = kVar.f4076y;
        if (imageData2.position < 0) {
            imageData2.position = imageData2.wpFiles.size() - 1;
        }
        x();
        this.Y = 0.0f;
        this.C.recycle();
        new c(0, new k2(this, i10)).d(f.f13757b).a(b.a()).b(new l2(this, 0));
    }

    public final void z(String str) {
        this.C.recycle();
        this.C.setImage(ImageSource.uri("file://" + str));
        int width = this.C.getWidth();
        int height = this.C.getHeight();
        int sWidth = this.C.getSWidth();
        int sHeight = this.C.getSHeight();
        if (sWidth <= width || sHeight <= height) {
            return;
        }
        if (width - sWidth > height - sHeight) {
            this.C.setScaleX(width / sWidth);
        } else {
            this.C.setScaleY(height / sHeight);
        }
    }

    @kh.j(threadMode = ThreadMode.MAIN)
    public void onReceiveMsg(ja.e eVar) {
    }
}
