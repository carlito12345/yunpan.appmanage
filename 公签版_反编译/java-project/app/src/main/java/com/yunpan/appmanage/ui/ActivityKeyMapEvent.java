package com.yunpan.appmanage.ui;

import android.content.Context;
import android.view.View;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import c6.c;
import com.hjq.toast.Toaster;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7LinearLayoutManager;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.ui.ActivityKeyMapEvent;
import da.g;
import ha.a9;
import ha.v8;
import java.io.File;
import java.util.ArrayList;
import ph.j;
import q4.a;
import ua.j3;
import x9.s2;
import z7.o;
import z7.s;

/* loaded from: classes.dex */
public class ActivityKeyMapEvent extends g {
    public static final /* synthetic */ int F = 0;
    public TvRecyclerView C;
    public s2 D;
    public s E;

    @Override // da.g
    public final int t() {
        return R.layout.activity_key_map_event;
    }

    @Override // da.g
    public final void u() {
        ((TextView) findViewById(R.id.v_title)).setText("事件映射");
        final int i10 = 0;
        findViewById(R.id.v_btn_return).setOnClickListener(new View.OnClickListener(this) { // from class: ua.i3

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityKeyMapEvent f15731b;

            {
                this.f15731b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ActivityKeyMapEvent activityKeyMapEvent = this.f15731b;
                switch (i10) {
                    case 0:
                        int i11 = ActivityKeyMapEvent.F;
                        activityKeyMapEvent.finish();
                        break;
                    case 1:
                        int i12 = ActivityKeyMapEvent.F;
                        activityKeyMapEvent.getClass();
                        new ha.z6(activityKeyMapEvent, activityKeyMapEvent, "一：wifi与蓝牙相关的事件触发会慢两秒，这是正常的！因为这是系统处理完成后系统发广播给我才触发的事件，这个过程有两秒延迟，无解！特别是【wifi连接成功时】和【蓝牙断开连接时】可能会有四秒的延迟！\n二：直接关闭蓝牙功能时，不会触发【有蓝牙断开连接时】，因为是直接关掉蓝牙功能了！", "").show();
                        break;
                    case 2:
                        ActivityKeyMapEvent activityKeyMapEvent2 = this.f15731b;
                        if (activityKeyMapEvent2.D.b() != 0) {
                            new ha.z6(activityKeyMapEvent2, activityKeyMapEvent2, "确定要删除所有事件吗？", "", "确定", "取消", new i1(8, activityKeyMapEvent2)).show();
                            break;
                        }
                        break;
                    default:
                        int i13 = ActivityKeyMapEvent.F;
                        activityKeyMapEvent.x(-1);
                        break;
                }
            }
        });
        final int i11 = 1;
        findViewById(R.id.v_btn_help).setOnClickListener(new View.OnClickListener(this) { // from class: ua.i3

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityKeyMapEvent f15731b;

            {
                this.f15731b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ActivityKeyMapEvent activityKeyMapEvent = this.f15731b;
                switch (i11) {
                    case 0:
                        int i112 = ActivityKeyMapEvent.F;
                        activityKeyMapEvent.finish();
                        break;
                    case 1:
                        int i12 = ActivityKeyMapEvent.F;
                        activityKeyMapEvent.getClass();
                        new ha.z6(activityKeyMapEvent, activityKeyMapEvent, "一：wifi与蓝牙相关的事件触发会慢两秒，这是正常的！因为这是系统处理完成后系统发广播给我才触发的事件，这个过程有两秒延迟，无解！特别是【wifi连接成功时】和【蓝牙断开连接时】可能会有四秒的延迟！\n二：直接关闭蓝牙功能时，不会触发【有蓝牙断开连接时】，因为是直接关掉蓝牙功能了！", "").show();
                        break;
                    case 2:
                        ActivityKeyMapEvent activityKeyMapEvent2 = this.f15731b;
                        if (activityKeyMapEvent2.D.b() != 0) {
                            new ha.z6(activityKeyMapEvent2, activityKeyMapEvent2, "确定要删除所有事件吗？", "", "确定", "取消", new i1(8, activityKeyMapEvent2)).show();
                            break;
                        }
                        break;
                    default:
                        int i13 = ActivityKeyMapEvent.F;
                        activityKeyMapEvent.x(-1);
                        break;
                }
            }
        });
        final int i12 = 2;
        findViewById(R.id.v_btn_delete).setOnClickListener(new View.OnClickListener(this) { // from class: ua.i3

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityKeyMapEvent f15731b;

            {
                this.f15731b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ActivityKeyMapEvent activityKeyMapEvent = this.f15731b;
                switch (i12) {
                    case 0:
                        int i112 = ActivityKeyMapEvent.F;
                        activityKeyMapEvent.finish();
                        break;
                    case 1:
                        int i122 = ActivityKeyMapEvent.F;
                        activityKeyMapEvent.getClass();
                        new ha.z6(activityKeyMapEvent, activityKeyMapEvent, "一：wifi与蓝牙相关的事件触发会慢两秒，这是正常的！因为这是系统处理完成后系统发广播给我才触发的事件，这个过程有两秒延迟，无解！特别是【wifi连接成功时】和【蓝牙断开连接时】可能会有四秒的延迟！\n二：直接关闭蓝牙功能时，不会触发【有蓝牙断开连接时】，因为是直接关掉蓝牙功能了！", "").show();
                        break;
                    case 2:
                        ActivityKeyMapEvent activityKeyMapEvent2 = this.f15731b;
                        if (activityKeyMapEvent2.D.b() != 0) {
                            new ha.z6(activityKeyMapEvent2, activityKeyMapEvent2, "确定要删除所有事件吗？", "", "确定", "取消", new i1(8, activityKeyMapEvent2)).show();
                            break;
                        }
                        break;
                    default:
                        int i13 = ActivityKeyMapEvent.F;
                        activityKeyMapEvent.x(-1);
                        break;
                }
            }
        });
        final int i13 = 3;
        findViewById(R.id.v_btn_add).setOnClickListener(new View.OnClickListener(this) { // from class: ua.i3

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityKeyMapEvent f15731b;

            {
                this.f15731b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ActivityKeyMapEvent activityKeyMapEvent = this.f15731b;
                switch (i13) {
                    case 0:
                        int i112 = ActivityKeyMapEvent.F;
                        activityKeyMapEvent.finish();
                        break;
                    case 1:
                        int i122 = ActivityKeyMapEvent.F;
                        activityKeyMapEvent.getClass();
                        new ha.z6(activityKeyMapEvent, activityKeyMapEvent, "一：wifi与蓝牙相关的事件触发会慢两秒，这是正常的！因为这是系统处理完成后系统发广播给我才触发的事件，这个过程有两秒延迟，无解！特别是【wifi连接成功时】和【蓝牙断开连接时】可能会有四秒的延迟！\n二：直接关闭蓝牙功能时，不会触发【有蓝牙断开连接时】，因为是直接关掉蓝牙功能了！", "").show();
                        break;
                    case 2:
                        ActivityKeyMapEvent activityKeyMapEvent2 = this.f15731b;
                        if (activityKeyMapEvent2.D.b() != 0) {
                            new ha.z6(activityKeyMapEvent2, activityKeyMapEvent2, "确定要删除所有事件吗？", "", "确定", "取消", new i1(8, activityKeyMapEvent2)).show();
                            break;
                        }
                        break;
                    default:
                        int i132 = ActivityKeyMapEvent.F;
                        activityKeyMapEvent.x(-1);
                        break;
                }
            }
        });
        ConstraintLayout constraintLayout = (ConstraintLayout) findViewById(R.id.v_btn_add_broadcast);
        constraintLayout.setOnClickListener(new c(this, 29, constraintLayout));
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_list);
        this.C = tvRecyclerView;
        tvRecyclerView.setLayoutManager(new V7LinearLayoutManager((Context) this.A, 1, false));
        s2 s2Var = new s2();
        this.D = s2Var;
        this.C.setAdapter(s2Var);
        this.D.f2881e = new j(22, this);
        z();
    }

    public final void x(int i10) {
        if (i10 < -1 || i10 >= this.D.b()) {
            Toaster.show((CharSequence) "出错：离谱的错误");
        } else {
            new a9(this, this.A, this.E, i10, new j3(this, i10)).show();
        }
    }

    public final void y(int i10) {
        if (i10 < -1 || i10 >= this.D.b()) {
            Toaster.show((CharSequence) "出错：离谱的错误");
        } else {
            new v8(this, this.A, this.E, i10, new j3(this, i10)).show();
        }
    }

    public final void z() {
        try {
            this.D.E(new ArrayList());
            s sVarI = a.I(new File(this.A.getFilesDir().getAbsolutePath(), "KeyMapEvent.json"));
            this.E = sVarI;
            o oVarP = sVarI.p("keys");
            for (int i10 = 0; i10 < oVarP.f19478a.size(); i10++) {
                this.D.q(oVarP.l(i10).g());
            }
        } catch (Exception e7) {
            e7.printStackTrace();
        }
    }
}
