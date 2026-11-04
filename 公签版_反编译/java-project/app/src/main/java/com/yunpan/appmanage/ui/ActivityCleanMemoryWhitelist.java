package com.yunpan.appmanage.ui;

import android.view.KeyEvent;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7GridLayoutManager;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.NamePackBoolSelectBean;
import com.yunpan.appmanage.ui.ActivityCleanMemoryWhitelist;
import da.g;
import fc.b;
import java.util.HashSet;
import mc.c;
import ph.j;
import rc.f;
import ua.v0;
import x9.a1;

/* loaded from: classes.dex */
public class ActivityCleanMemoryWhitelist extends g implements View.OnKeyListener {
    public static final /* synthetic */ int F = 0;
    public ConstraintLayout C;
    public TvRecyclerView D;
    public a1 E;

    @Override // android.view.View.OnKeyListener
    public final boolean onKey(View view, int i10, KeyEvent keyEvent) {
        return i10 == 20 && this.E.b() == 0;
    }

    @Override // da.g
    public final int t() {
        return R.layout.activity_clean_memory_whitelist;
    }

    @Override // da.g
    public final void u() {
        ConstraintLayout constraintLayout = (ConstraintLayout) findViewById(R.id.v_btn_return);
        this.C = constraintLayout;
        constraintLayout.setOnKeyListener(this);
        final int i10 = 0;
        this.C.setOnClickListener(new View.OnClickListener(this) { // from class: ua.a1

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityCleanMemoryWhitelist f15560b;

            {
                this.f15560b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ActivityCleanMemoryWhitelist activityCleanMemoryWhitelist = this.f15560b;
                switch (i10) {
                    case 0:
                        int i11 = ActivityCleanMemoryWhitelist.F;
                        activityCleanMemoryWhitelist.finish();
                        break;
                    case 1:
                        for (int i12 = 0; i12 < activityCleanMemoryWhitelist.E.b(); i12++) {
                            NamePackBoolSelectBean namePackBoolSelectBean = (NamePackBoolSelectBean) activityCleanMemoryWhitelist.E.t(i12);
                            if (namePackBoolSelectBean.isSelected) {
                                namePackBoolSelectBean.isSelected = false;
                                activityCleanMemoryWhitelist.E.e(i12);
                            }
                        }
                        wa.u uVar = wa.t.f17728a;
                        uVar.f17756w.clear();
                        uVar.j();
                        break;
                    default:
                        int i13 = ActivityCleanMemoryWhitelist.F;
                        activityCleanMemoryWhitelist.getClass();
                        HashSet hashSet = new HashSet();
                        for (int i14 = 0; i14 < activityCleanMemoryWhitelist.E.b(); i14++) {
                            NamePackBoolSelectBean namePackBoolSelectBean2 = (NamePackBoolSelectBean) activityCleanMemoryWhitelist.E.t(i14);
                            if (namePackBoolSelectBean2.isSelected) {
                                hashSet.add(namePackBoolSelectBean2.pack);
                            } else if (namePackBoolSelectBean2.isSystem) {
                                namePackBoolSelectBean2.isSelected = true;
                                activityCleanMemoryWhitelist.E.e(i14);
                                hashSet.add(namePackBoolSelectBean2.pack);
                            }
                        }
                        wa.u uVar2 = wa.t.f17728a;
                        HashSet hashSet2 = uVar2.f17756w;
                        hashSet2.clear();
                        hashSet2.addAll(hashSet);
                        uVar2.j();
                        break;
                }
            }
        });
        ConstraintLayout constraintLayout2 = (ConstraintLayout) findViewById(R.id.v_btn_check_all_no);
        constraintLayout2.setOnKeyListener(this);
        final int i11 = 1;
        constraintLayout2.setOnClickListener(new View.OnClickListener(this) { // from class: ua.a1

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityCleanMemoryWhitelist f15560b;

            {
                this.f15560b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ActivityCleanMemoryWhitelist activityCleanMemoryWhitelist = this.f15560b;
                switch (i11) {
                    case 0:
                        int i112 = ActivityCleanMemoryWhitelist.F;
                        activityCleanMemoryWhitelist.finish();
                        break;
                    case 1:
                        for (int i12 = 0; i12 < activityCleanMemoryWhitelist.E.b(); i12++) {
                            NamePackBoolSelectBean namePackBoolSelectBean = (NamePackBoolSelectBean) activityCleanMemoryWhitelist.E.t(i12);
                            if (namePackBoolSelectBean.isSelected) {
                                namePackBoolSelectBean.isSelected = false;
                                activityCleanMemoryWhitelist.E.e(i12);
                            }
                        }
                        wa.u uVar = wa.t.f17728a;
                        uVar.f17756w.clear();
                        uVar.j();
                        break;
                    default:
                        int i13 = ActivityCleanMemoryWhitelist.F;
                        activityCleanMemoryWhitelist.getClass();
                        HashSet hashSet = new HashSet();
                        for (int i14 = 0; i14 < activityCleanMemoryWhitelist.E.b(); i14++) {
                            NamePackBoolSelectBean namePackBoolSelectBean2 = (NamePackBoolSelectBean) activityCleanMemoryWhitelist.E.t(i14);
                            if (namePackBoolSelectBean2.isSelected) {
                                hashSet.add(namePackBoolSelectBean2.pack);
                            } else if (namePackBoolSelectBean2.isSystem) {
                                namePackBoolSelectBean2.isSelected = true;
                                activityCleanMemoryWhitelist.E.e(i14);
                                hashSet.add(namePackBoolSelectBean2.pack);
                            }
                        }
                        wa.u uVar2 = wa.t.f17728a;
                        HashSet hashSet2 = uVar2.f17756w;
                        hashSet2.clear();
                        hashSet2.addAll(hashSet);
                        uVar2.j();
                        break;
                }
            }
        });
        ConstraintLayout constraintLayout3 = (ConstraintLayout) findViewById(R.id.v_btn_check_system_app);
        constraintLayout3.setOnKeyListener(this);
        final int i12 = 2;
        constraintLayout3.setOnClickListener(new View.OnClickListener(this) { // from class: ua.a1

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityCleanMemoryWhitelist f15560b;

            {
                this.f15560b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ActivityCleanMemoryWhitelist activityCleanMemoryWhitelist = this.f15560b;
                switch (i12) {
                    case 0:
                        int i112 = ActivityCleanMemoryWhitelist.F;
                        activityCleanMemoryWhitelist.finish();
                        break;
                    case 1:
                        for (int i122 = 0; i122 < activityCleanMemoryWhitelist.E.b(); i122++) {
                            NamePackBoolSelectBean namePackBoolSelectBean = (NamePackBoolSelectBean) activityCleanMemoryWhitelist.E.t(i122);
                            if (namePackBoolSelectBean.isSelected) {
                                namePackBoolSelectBean.isSelected = false;
                                activityCleanMemoryWhitelist.E.e(i122);
                            }
                        }
                        wa.u uVar = wa.t.f17728a;
                        uVar.f17756w.clear();
                        uVar.j();
                        break;
                    default:
                        int i13 = ActivityCleanMemoryWhitelist.F;
                        activityCleanMemoryWhitelist.getClass();
                        HashSet hashSet = new HashSet();
                        for (int i14 = 0; i14 < activityCleanMemoryWhitelist.E.b(); i14++) {
                            NamePackBoolSelectBean namePackBoolSelectBean2 = (NamePackBoolSelectBean) activityCleanMemoryWhitelist.E.t(i14);
                            if (namePackBoolSelectBean2.isSelected) {
                                hashSet.add(namePackBoolSelectBean2.pack);
                            } else if (namePackBoolSelectBean2.isSystem) {
                                namePackBoolSelectBean2.isSelected = true;
                                activityCleanMemoryWhitelist.E.e(i14);
                                hashSet.add(namePackBoolSelectBean2.pack);
                            }
                        }
                        wa.u uVar2 = wa.t.f17728a;
                        HashSet hashSet2 = uVar2.f17756w;
                        hashSet2.clear();
                        hashSet2.addAll(hashSet);
                        uVar2.j();
                        break;
                }
            }
        });
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_list);
        this.D = tvRecyclerView;
        tvRecyclerView.setLayoutManager(new V7GridLayoutManager(this, 6));
        a1 a1Var = new a1(this);
        this.E = a1Var;
        this.D.setAdapter(a1Var);
        this.E.f2881e = new j(14, this);
        new c(0, new v0(1)).d(f.f13757b).a(b.a()).b(new ka.c(12, this));
    }
}
