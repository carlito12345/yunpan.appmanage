package ka;

import android.content.ComponentName;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7LinearLayoutManager;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.util.j;
import com.yunpan.appmanage.util.k;
import java.text.DecimalFormat;
import rc.f;
import x9.m3;

/* loaded from: classes.dex */
public final class d extends Fragment {

    /* renamed from: a, reason: collision with root package name */
    public final int f10225a;

    /* renamed from: b, reason: collision with root package name */
    public final String f10226b;

    /* renamed from: c, reason: collision with root package name */
    public TvRecyclerView f10227c;

    /* renamed from: d, reason: collision with root package name */
    public m3 f10228d;

    /* renamed from: e, reason: collision with root package name */
    public TextView f10229e;

    /* renamed from: f, reason: collision with root package name */
    public ProgressBar f10230f;

    /* renamed from: g, reason: collision with root package name */
    public final ma.b f10231g;

    public d(int i10, ma.b bVar) {
        this.f10225a = i10;
        DecimalFormat decimalFormat = k.f4034u0;
        this.f10226b = j.f4033a.f4075x;
        this.f10231g = bVar;
    }

    public static boolean g(String str, String str2, boolean z) {
        DecimalFormat decimalFormat = k.f4034u0;
        int componentEnabledSetting = j.f4033a.f4037b.getComponentEnabledSetting(new ComponentName(str, str2));
        if (componentEnabledSetting == 2) {
            return true;
        }
        if (componentEnabledSetting == 1) {
            return false;
        }
        return z;
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_list, viewGroup, false);
        TvRecyclerView tvRecyclerView = (TvRecyclerView) viewInflate.findViewById(R.id.v_list);
        this.f10227c = tvRecyclerView;
        tvRecyclerView.setLayoutManager(new V7LinearLayoutManager(getContext(), 1, false));
        m3 m3Var = new m3(getContext());
        this.f10228d = m3Var;
        this.f10227c.setAdapter(m3Var);
        this.f10228d.f2881e = new a(this);
        this.f10227c.setOnInBorderKeyEventListener(new b(this));
        this.f10230f = (ProgressBar) viewInflate.findViewById(R.id.v_loading);
        this.f10229e = (TextView) viewInflate.findViewById(R.id.v_ts);
        new mc.c(0, new a(this)).d(f.f13757b).a(fc.b.a()).b(new c(0, this));
        return viewInflate;
    }
}
