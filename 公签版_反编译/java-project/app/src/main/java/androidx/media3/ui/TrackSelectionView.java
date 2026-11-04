package androidx.media3.ui;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.CheckedTextView;
import android.widget.LinearLayout;
import androidx.leanback.widget.h0;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import l5.x;
import r1.r0;
import r1.s0;
import r1.w0;
import v3.m0;
import v3.n0;

/* loaded from: classes.dex */
public class TrackSelectionView extends LinearLayout {

    /* renamed from: a, reason: collision with root package name */
    public final int f2012a;

    /* renamed from: b, reason: collision with root package name */
    public final LayoutInflater f2013b;

    /* renamed from: c, reason: collision with root package name */
    public final CheckedTextView f2014c;

    /* renamed from: d, reason: collision with root package name */
    public final CheckedTextView f2015d;

    /* renamed from: e, reason: collision with root package name */
    public final h0 f2016e;

    /* renamed from: f, reason: collision with root package name */
    public final ArrayList f2017f;

    /* renamed from: g, reason: collision with root package name */
    public final HashMap f2018g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f2019h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f2020i;

    /* renamed from: j, reason: collision with root package name */
    public m0 f2021j;

    /* renamed from: k, reason: collision with root package name */
    public CheckedTextView[][] f2022k;
    public boolean l;

    public TrackSelectionView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        setOrientation(1);
        setSaveFromParentEnabled(false);
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{R.attr.selectableItemBackground});
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, 0);
        this.f2012a = resourceId;
        typedArrayObtainStyledAttributes.recycle();
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(context);
        this.f2013b = layoutInflaterFrom;
        h0 h0Var = new h0(5, this);
        this.f2016e = h0Var;
        this.f2021j = new x(getResources());
        this.f2017f = new ArrayList();
        this.f2018g = new HashMap();
        CheckedTextView checkedTextView = (CheckedTextView) layoutInflaterFrom.inflate(R.layout.simple_list_item_single_choice, (ViewGroup) this, false);
        this.f2014c = checkedTextView;
        checkedTextView.setBackgroundResource(resourceId);
        checkedTextView.setText(com.yunpan.appmanage.R.string.exo_track_selection_none);
        checkedTextView.setEnabled(false);
        checkedTextView.setFocusable(true);
        checkedTextView.setOnClickListener(h0Var);
        checkedTextView.setVisibility(8);
        addView(checkedTextView);
        addView(layoutInflaterFrom.inflate(com.yunpan.appmanage.R.layout.exo_list_divider, (ViewGroup) this, false));
        CheckedTextView checkedTextView2 = (CheckedTextView) layoutInflaterFrom.inflate(R.layout.simple_list_item_single_choice, (ViewGroup) this, false);
        this.f2015d = checkedTextView2;
        checkedTextView2.setBackgroundResource(resourceId);
        checkedTextView2.setText(com.yunpan.appmanage.R.string.exo_track_selection_auto);
        checkedTextView2.setEnabled(false);
        checkedTextView2.setFocusable(true);
        checkedTextView2.setOnClickListener(h0Var);
        addView(checkedTextView2);
    }

    public final void a() {
        this.f2014c.setChecked(this.l);
        boolean z = this.l;
        HashMap map = this.f2018g;
        this.f2015d.setChecked(!z && map.isEmpty());
        for (int i10 = 0; i10 < this.f2022k.length; i10++) {
            s0 s0Var = (s0) map.get(((w0) this.f2017f.get(i10)).f13620b);
            int i11 = 0;
            while (true) {
                CheckedTextView[] checkedTextViewArr = this.f2022k[i10];
                if (i11 < checkedTextViewArr.length) {
                    if (s0Var != null) {
                        Object tag = checkedTextViewArr[i11].getTag();
                        tag.getClass();
                        this.f2022k[i10][i11].setChecked(s0Var.f13559b.contains(Integer.valueOf(((n0) tag).f16527b)));
                    } else {
                        checkedTextViewArr[i11].setChecked(false);
                    }
                    i11++;
                }
            }
        }
    }

    public final void b() {
        for (int childCount = getChildCount() - 1; childCount >= 3; childCount--) {
            removeViewAt(childCount);
        }
        ArrayList arrayList = this.f2017f;
        boolean zIsEmpty = arrayList.isEmpty();
        CheckedTextView checkedTextView = this.f2015d;
        CheckedTextView checkedTextView2 = this.f2014c;
        if (zIsEmpty) {
            checkedTextView2.setEnabled(false);
            checkedTextView.setEnabled(false);
            return;
        }
        checkedTextView2.setEnabled(true);
        checkedTextView.setEnabled(true);
        this.f2022k = new CheckedTextView[arrayList.size()][];
        boolean z = this.f2020i && arrayList.size() > 1;
        for (int i10 = 0; i10 < arrayList.size(); i10++) {
            w0 w0Var = (w0) arrayList.get(i10);
            boolean z4 = this.f2019h && w0Var.f13621c;
            CheckedTextView[][] checkedTextViewArr = this.f2022k;
            int i11 = w0Var.f13619a;
            checkedTextViewArr[i10] = new CheckedTextView[i11];
            n0[] n0VarArr = new n0[i11];
            for (int i12 = 0; i12 < w0Var.f13619a; i12++) {
                n0VarArr[i12] = new n0(w0Var, i12);
            }
            for (int i13 = 0; i13 < i11; i13++) {
                LayoutInflater layoutInflater = this.f2013b;
                if (i13 == 0) {
                    addView(layoutInflater.inflate(com.yunpan.appmanage.R.layout.exo_list_divider, (ViewGroup) this, false));
                }
                CheckedTextView checkedTextView3 = (CheckedTextView) layoutInflater.inflate((z4 || z) ? R.layout.simple_list_item_multiple_choice : R.layout.simple_list_item_single_choice, (ViewGroup) this, false);
                checkedTextView3.setBackgroundResource(this.f2012a);
                m0 m0Var = this.f2021j;
                n0 n0Var = n0VarArr[i13];
                checkedTextView3.setText(((x) m0Var).d(n0Var.f16526a.f13620b.f13556d[n0Var.f16527b]));
                checkedTextView3.setTag(n0VarArr[i13]);
                if (w0Var.b(i13)) {
                    checkedTextView3.setFocusable(true);
                    checkedTextView3.setOnClickListener(this.f2016e);
                } else {
                    checkedTextView3.setFocusable(false);
                    checkedTextView3.setEnabled(false);
                }
                this.f2022k[i10][i13] = checkedTextView3;
                addView(checkedTextView3);
            }
        }
        a();
    }

    public boolean getIsDisabled() {
        return this.l;
    }

    public Map<r0, s0> getOverrides() {
        return this.f2018g;
    }

    public void setAllowAdaptiveSelections(boolean z) {
        if (this.f2019h != z) {
            this.f2019h = z;
            b();
        }
    }

    public void setAllowMultipleOverrides(boolean z) {
        if (this.f2020i != z) {
            this.f2020i = z;
            if (!z) {
                HashMap map = this.f2018g;
                if (map.size() > 1) {
                    ArrayList arrayList = this.f2017f;
                    HashMap map2 = new HashMap();
                    for (int i10 = 0; i10 < arrayList.size(); i10++) {
                        s0 s0Var = (s0) map.get(((w0) arrayList.get(i10)).f13620b);
                        if (s0Var != null && map2.isEmpty()) {
                            map2.put(s0Var.f13558a, s0Var);
                        }
                    }
                    map.clear();
                    map.putAll(map2);
                }
            }
            b();
        }
    }

    public void setShowDisableOption(boolean z) {
        this.f2014c.setVisibility(z ? 0 : 8);
    }

    public void setTrackNameProvider(m0 m0Var) {
        m0Var.getClass();
        this.f2021j = m0Var;
        b();
    }
}
