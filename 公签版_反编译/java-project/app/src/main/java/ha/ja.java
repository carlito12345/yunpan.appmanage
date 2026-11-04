package ha;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.yunpan.appmanage.R;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class ja extends a4 {

    /* renamed from: g, reason: collision with root package name */
    public final View f7283g;

    /* renamed from: h, reason: collision with root package name */
    public final String f7284h;

    /* renamed from: i, reason: collision with root package name */
    public RecyclerView f7285i;

    /* renamed from: j, reason: collision with root package name */
    public x9.m1 f7286j;

    /* renamed from: k, reason: collision with root package name */
    public final List f7287k;
    public final ia l;

    public ja(Activity activity, Context context, View view, List list, ia iaVar) {
        super(activity, context, R.layout.dialog_menu_pop);
        this.f7284h = null;
        this.f7287k = list;
        this.l = iaVar;
        this.f7283g = view;
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        String str = this.f7284h;
        if (str != null) {
            ((TextView) findViewById(R.id.v_title)).setText(str);
        }
        this.f7285i = (RecyclerView) findViewById(R.id.v_list);
        int[] iArr = new int[2];
        View view = this.f7283g;
        view.getLocationInWindow(iArr);
        System.out.getClass();
        int i10 = iArr[0];
        int height = view.getHeight() + iArr[1];
        ConstraintLayout constraintLayout = (ConstraintLayout) findViewById(R.id.v_root2);
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) constraintLayout.getLayoutParams();
        DisplayMetrics displayMetrics = this.f6725b.getResources().getDisplayMetrics();
        int i11 = displayMetrics.widthPixels;
        int i12 = displayMetrics.heightPixels;
        if (i10 > (i11 * 2) / 3) {
            if (height > i12 / 2) {
                layoutParams.addRule(21, -1);
                layoutParams.addRule(12, -1);
                layoutParams.rightMargin = (i11 - i10) - view.getWidth();
                layoutParams.bottomMargin = i12 - iArr[1];
            } else {
                layoutParams.addRule(21, -1);
                layoutParams.addRule(10, -1);
                layoutParams.rightMargin = (i11 - i10) - view.getWidth();
                layoutParams.topMargin = height;
            }
        } else if (height > i12 / 2) {
            layoutParams.addRule(20, -1);
            layoutParams.addRule(12, -1);
            layoutParams.leftMargin = i10;
            layoutParams.bottomMargin = i12 - iArr[1];
        } else {
            layoutParams.addRule(20, -1);
            layoutParams.addRule(10, -1);
            layoutParams.leftMargin = i10;
            layoutParams.topMargin = height;
        }
        constraintLayout.setLayoutParams(layoutParams);
        x9.m1 m1Var = new x9.m1();
        this.f7286j = m1Var;
        m1Var.E(this.f7287k);
        this.f7285i.setLayoutManager(new LinearLayoutManager());
        this.f7285i.setAdapter(this.f7286j);
        this.f7285i.postDelayed(new a2.h(29, this), 100L);
        this.f7286j.f2881e = new p7(7, this);
    }

    public ja(Activity activity, da.g gVar, View view, ArrayList arrayList, ua.k3 k3Var) {
        super(activity, gVar, R.layout.dialog_menu_pop_delect);
        this.f7287k = arrayList;
        this.l = k3Var;
        this.f7283g = view;
        this.f7284h = "删除方案";
    }
}
