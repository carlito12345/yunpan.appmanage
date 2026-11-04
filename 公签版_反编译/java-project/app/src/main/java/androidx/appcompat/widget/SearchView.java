package androidx.appcompat.widget;

import android.app.PendingIntent;
import android.app.SearchableInfo;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.Cursor;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.ImageSpan;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputMethodManager;
import android.widget.ImageView;
import androidx.leanback.widget.d0;
import androidx.leanback.widget.g0;
import com.desay_svautomotive.libsvcarinfo.CarSettingID;
import com.yunpan.appmanage.R;
import ha.aa;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.WeakHashMap;
import q7.u;
import w.a2;
import w.a3;
import w.n;
import w.t2;
import w.u2;
import w.v2;
import w.w2;
import w.x2;
import w.y2;
import w.z1;
import x0.b1;
import x0.j0;

/* loaded from: classes.dex */
public class SearchView extends z1 implements u.b {
    public static final ne.b W0;
    public y2 A;
    public final Rect B;
    public final Rect C;
    public final int[] D;
    public final int[] E;
    public final ImageView F;
    public final Drawable G;
    public final int H;
    public final int I;
    public final Intent K;
    public final Intent L;
    public final CharSequence M;
    public int M0;
    public View.OnFocusChangeListener N;
    public boolean N0;
    public View.OnClickListener O;
    public CharSequence O0;
    public boolean P;
    public boolean P0;
    public int Q0;
    public boolean R;
    public SearchableInfo R0;
    public c1.c S;
    public Bundle S0;
    public boolean T;
    public final t2 T0;
    public final t2 U0;
    public CharSequence V;
    public final WeakHashMap V0;

    /* renamed from: h0, reason: collision with root package name */
    public boolean f973h0;

    /* renamed from: q, reason: collision with root package name */
    public final SearchAutoComplete f974q;
    public final View r;

    /* renamed from: s, reason: collision with root package name */
    public final View f975s;

    /* renamed from: t, reason: collision with root package name */
    public final View f976t;

    /* renamed from: t0, reason: collision with root package name */
    public boolean f977t0;

    /* renamed from: v, reason: collision with root package name */
    public final ImageView f978v;

    /* renamed from: w, reason: collision with root package name */
    public final ImageView f979w;

    /* renamed from: x, reason: collision with root package name */
    public final ImageView f980x;

    /* renamed from: y, reason: collision with root package name */
    public final ImageView f981y;
    public final View z;

    public static class SearchAutoComplete extends n {

        /* renamed from: e, reason: collision with root package name */
        public int f982e;

        /* renamed from: f, reason: collision with root package name */
        public SearchView f983f;

        /* renamed from: g, reason: collision with root package name */
        public boolean f984g;

        /* renamed from: h, reason: collision with root package name */
        public final d f985h;

        public SearchAutoComplete(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f985h = new d(this);
            this.f982e = getThreshold();
        }

        private int getSearchViewTextMinWidthDp() {
            Configuration configuration = getResources().getConfiguration();
            int i10 = configuration.screenWidthDp;
            int i11 = configuration.screenHeightDp;
            if (i10 >= 960 && i11 >= 720 && configuration.orientation == 2) {
                return 256;
            }
            if (i10 >= 600) {
                return 192;
            }
            if (i10 < 640 || i11 < 480) {
                return CarSettingID.Recv.BCS_ATS_DRV_MODE_REQ;
            }
            return 192;
        }

        public final void a() throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
            if (Build.VERSION.SDK_INT >= 29) {
                c.b(this, 1);
                if (enoughToFilter()) {
                    showDropDown();
                    return;
                }
                return;
            }
            ne.b bVar = SearchView.W0;
            bVar.getClass();
            ne.b.a();
            Method method = bVar.f11353c;
            if (method != null) {
                try {
                    method.invoke(this, Boolean.TRUE);
                } catch (Exception unused) {
                }
            }
        }

        @Override // android.widget.AutoCompleteTextView
        public final boolean enoughToFilter() {
            return this.f982e <= 0 || super.enoughToFilter();
        }

        @Override // w.n, android.widget.TextView, android.view.View
        public final InputConnection onCreateInputConnection(EditorInfo editorInfo) {
            InputConnection inputConnectionOnCreateInputConnection = super.onCreateInputConnection(editorInfo);
            if (this.f984g) {
                d dVar = this.f985h;
                removeCallbacks(dVar);
                post(dVar);
            }
            return inputConnectionOnCreateInputConnection;
        }

        @Override // android.view.View
        public final void onFinishInflate() {
            super.onFinishInflate();
            setMinWidth((int) TypedValue.applyDimension(1, getSearchViewTextMinWidthDp(), getResources().getDisplayMetrics()));
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        public final void onFocusChanged(boolean z, int i10, Rect rect) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
            super.onFocusChanged(z, i10, rect);
            SearchView searchView = this.f983f;
            searchView.y(searchView.R);
            searchView.post(searchView.T0);
            if (searchView.f974q.hasFocus()) {
                searchView.n();
            }
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        public final boolean onKeyPreIme(int i10, KeyEvent keyEvent) {
            if (i10 == 4) {
                if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                    KeyEvent.DispatcherState keyDispatcherState = getKeyDispatcherState();
                    if (keyDispatcherState != null) {
                        keyDispatcherState.startTracking(keyEvent, this);
                    }
                    return true;
                }
                if (keyEvent.getAction() == 1) {
                    KeyEvent.DispatcherState keyDispatcherState2 = getKeyDispatcherState();
                    if (keyDispatcherState2 != null) {
                        keyDispatcherState2.handleUpEvent(keyEvent);
                    }
                    if (keyEvent.isTracking() && !keyEvent.isCanceled()) {
                        this.f983f.clearFocus();
                        setImeVisibility(false);
                        return true;
                    }
                }
            }
            return super.onKeyPreIme(i10, keyEvent);
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        public final void onWindowFocusChanged(boolean z) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
            super.onWindowFocusChanged(z);
            if (z && this.f983f.hasFocus() && getVisibility() == 0) {
                this.f984g = true;
                Context context = getContext();
                ne.b bVar = SearchView.W0;
                if (context.getResources().getConfiguration().orientation == 2) {
                    a();
                }
            }
        }

        @Override // android.widget.AutoCompleteTextView
        public final void performCompletion() {
        }

        @Override // android.widget.AutoCompleteTextView
        public final void replaceText(CharSequence charSequence) {
        }

        public void setImeVisibility(boolean z) {
            InputMethodManager inputMethodManager = (InputMethodManager) getContext().getSystemService("input_method");
            d dVar = this.f985h;
            if (!z) {
                this.f984g = false;
                removeCallbacks(dVar);
                inputMethodManager.hideSoftInputFromWindow(getWindowToken(), 0);
            } else {
                if (!inputMethodManager.isActive(this)) {
                    this.f984g = true;
                    return;
                }
                this.f984g = false;
                removeCallbacks(dVar);
                inputMethodManager.showSoftInput(this, 0);
            }
        }

        public void setSearchView(SearchView searchView) {
            this.f983f = searchView;
        }

        @Override // android.widget.AutoCompleteTextView
        public void setThreshold(int i10) {
            super.setThreshold(i10);
            this.f982e = i10;
        }
    }

    static {
        W0 = Build.VERSION.SDK_INT < 29 ? new ne.b() : null;
    }

    public SearchView(Context context) {
        this(context, null);
    }

    private int getPreferredHeight() {
        return getContext().getResources().getDimensionPixelSize(R.dimen.abc_search_view_preferred_height);
    }

    private int getPreferredWidth() {
        return getContext().getResources().getDimensionPixelSize(R.dimen.abc_search_view_preferred_width);
    }

    private void setQuery(CharSequence charSequence) {
        SearchAutoComplete searchAutoComplete = this.f974q;
        searchAutoComplete.setText(charSequence);
        searchAutoComplete.setSelection(TextUtils.isEmpty(charSequence) ? 0 : charSequence.length());
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void clearFocus() {
        this.f977t0 = true;
        super.clearFocus();
        SearchAutoComplete searchAutoComplete = this.f974q;
        searchAutoComplete.clearFocus();
        searchAutoComplete.setImeVisibility(false);
        this.f977t0 = false;
    }

    @Override // u.b
    public final void d() {
        if (this.P0) {
            return;
        }
        this.P0 = true;
        SearchAutoComplete searchAutoComplete = this.f974q;
        int imeOptions = searchAutoComplete.getImeOptions();
        this.Q0 = imeOptions;
        searchAutoComplete.setImeOptions(imeOptions | 33554432);
        searchAutoComplete.setText("");
        setIconified(false);
    }

    @Override // u.b
    public final void e() {
        SearchAutoComplete searchAutoComplete = this.f974q;
        searchAutoComplete.setText("");
        searchAutoComplete.setSelection(searchAutoComplete.length());
        this.O0 = "";
        clearFocus();
        y(true);
        searchAutoComplete.setImeOptions(this.Q0);
        this.P0 = false;
    }

    public int getImeOptions() {
        return this.f974q.getImeOptions();
    }

    public int getInputType() {
        return this.f974q.getInputType();
    }

    public int getMaxWidth() {
        return this.M0;
    }

    public CharSequence getQuery() {
        return this.f974q.getText();
    }

    public CharSequence getQueryHint() {
        CharSequence charSequence = this.V;
        if (charSequence != null) {
            return charSequence;
        }
        SearchableInfo searchableInfo = this.R0;
        return (searchableInfo == null || searchableInfo.getHintId() == 0) ? this.M : getContext().getText(this.R0.getHintId());
    }

    public int getSuggestionCommitIconResId() {
        return this.I;
    }

    public int getSuggestionRowLayout() {
        return this.H;
    }

    public c1.c getSuggestionsAdapter() {
        return this.S;
    }

    public final Intent l(String str, String str2, Uri uri, String str3) {
        Intent intent = new Intent(str);
        intent.addFlags(268435456);
        if (uri != null) {
            intent.setData(uri);
        }
        intent.putExtra("user_query", this.O0);
        if (str3 != null) {
            intent.putExtra("query", str3);
        }
        if (str2 != null) {
            intent.putExtra("intent_extra_data_key", str2);
        }
        Bundle bundle = this.S0;
        if (bundle != null) {
            intent.putExtra("app_data", bundle);
        }
        intent.setComponent(this.R0.getSearchActivity());
        return intent;
    }

    public final Intent m(Intent intent, SearchableInfo searchableInfo) {
        ComponentName searchActivity = searchableInfo.getSearchActivity();
        Intent intent2 = new Intent("android.intent.action.SEARCH");
        intent2.setComponent(searchActivity);
        PendingIntent activity = PendingIntent.getActivity(getContext(), 0, intent2, 1107296256);
        Bundle bundle = new Bundle();
        Bundle bundle2 = this.S0;
        if (bundle2 != null) {
            bundle.putParcelable("app_data", bundle2);
        }
        Intent intent3 = new Intent(intent);
        Resources resources = getResources();
        String string = searchableInfo.getVoiceLanguageModeId() != 0 ? resources.getString(searchableInfo.getVoiceLanguageModeId()) : "free_form";
        String string2 = searchableInfo.getVoicePromptTextId() != 0 ? resources.getString(searchableInfo.getVoicePromptTextId()) : null;
        String string3 = searchableInfo.getVoiceLanguageId() != 0 ? resources.getString(searchableInfo.getVoiceLanguageId()) : null;
        int voiceMaxResults = searchableInfo.getVoiceMaxResults() != 0 ? searchableInfo.getVoiceMaxResults() : 1;
        intent3.putExtra("android.speech.extra.LANGUAGE_MODEL", string);
        intent3.putExtra("android.speech.extra.PROMPT", string2);
        intent3.putExtra("android.speech.extra.LANGUAGE", string3);
        intent3.putExtra("android.speech.extra.MAX_RESULTS", voiceMaxResults);
        intent3.putExtra("calling_package", searchActivity != null ? searchActivity.flattenToShortString() : null);
        intent3.putExtra("android.speech.extra.RESULTS_PENDINGINTENT", activity);
        intent3.putExtra("android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE", bundle);
        return intent3;
    }

    public final void n() throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        int i10 = Build.VERSION.SDK_INT;
        SearchAutoComplete searchAutoComplete = this.f974q;
        if (i10 >= 29) {
            c.a(searchAutoComplete);
            return;
        }
        ne.b bVar = W0;
        bVar.getClass();
        ne.b.a();
        Method method = bVar.f11351a;
        if (method != null) {
            try {
                method.invoke(searchAutoComplete, null);
            } catch (Exception unused) {
            }
        }
        bVar.getClass();
        ne.b.a();
        Method method2 = bVar.f11352b;
        if (method2 != null) {
            try {
                method2.invoke(searchAutoComplete, null);
            } catch (Exception unused2) {
            }
        }
    }

    public final void o() {
        SearchAutoComplete searchAutoComplete = this.f974q;
        if (!TextUtils.isEmpty(searchAutoComplete.getText())) {
            searchAutoComplete.setText("");
            searchAutoComplete.requestFocus();
            searchAutoComplete.setImeVisibility(true);
        } else if (this.P) {
            clearFocus();
            y(true);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        removeCallbacks(this.T0);
        post(this.U0);
        super.onDetachedFromWindow();
    }

    @Override // w.z1, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i10, int i11, int i12, int i13) {
        super.onLayout(z, i10, i11, i12, i13);
        if (z) {
            int[] iArr = this.D;
            SearchAutoComplete searchAutoComplete = this.f974q;
            searchAutoComplete.getLocationInWindow(iArr);
            int[] iArr2 = this.E;
            getLocationInWindow(iArr2);
            int i14 = iArr[1] - iArr2[1];
            int i15 = iArr[0] - iArr2[0];
            int width = searchAutoComplete.getWidth() + i15;
            int height = searchAutoComplete.getHeight() + i14;
            Rect rect = this.B;
            rect.set(i15, i14, width, height);
            int i16 = rect.left;
            int i17 = rect.right;
            int i18 = i13 - i11;
            Rect rect2 = this.C;
            rect2.set(i16, 0, i17, i18);
            y2 y2Var = this.A;
            if (y2Var == null) {
                y2 y2Var2 = new y2(rect2, rect, searchAutoComplete);
                this.A = y2Var2;
                setTouchDelegate(y2Var2);
            } else {
                y2Var.f17317b.set(rect2);
                Rect rect3 = y2Var.f17319d;
                rect3.set(rect2);
                int i19 = -y2Var.f17320e;
                rect3.inset(i19, i19);
                y2Var.f17318c.set(rect);
            }
        }
    }

    @Override // w.z1, android.view.View
    public final void onMeasure(int i10, int i11) {
        int i12;
        if (this.R) {
            super.onMeasure(i10, i11);
            return;
        }
        int mode = View.MeasureSpec.getMode(i10);
        int size = View.MeasureSpec.getSize(i10);
        if (mode == Integer.MIN_VALUE) {
            int i13 = this.M0;
            size = i13 > 0 ? Math.min(i13, size) : Math.min(getPreferredWidth(), size);
        } else if (mode == 0) {
            size = this.M0;
            if (size <= 0) {
                size = getPreferredWidth();
            }
        } else if (mode == 1073741824 && (i12 = this.M0) > 0) {
            size = Math.min(i12, size);
        }
        int mode2 = View.MeasureSpec.getMode(i11);
        int size2 = View.MeasureSpec.getSize(i11);
        if (mode2 == Integer.MIN_VALUE) {
            size2 = Math.min(getPreferredHeight(), size2);
        } else if (mode2 == 0) {
            size2 = getPreferredHeight();
        }
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 1073741824));
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof x2)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        x2 x2Var = (x2) parcelable;
        super.onRestoreInstanceState(x2Var.f4709a);
        y(x2Var.f17299c);
        requestLayout();
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        x2 x2Var = new x2(super.onSaveInstanceState());
        x2Var.f17299c = this.R;
        return x2Var;
    }

    @Override // android.view.View
    public final void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        post(this.T0);
    }

    public final void p(int i10) {
        String strH;
        Cursor cursor = this.S.f2848c;
        if (cursor != null && cursor.moveToPosition(i10)) {
            Intent intentL = null;
            try {
                try {
                    int i11 = a3.z;
                    String strH2 = a3.h(cursor, cursor.getColumnIndex("suggest_intent_action"));
                    if (strH2 == null) {
                        strH2 = this.R0.getSuggestIntentAction();
                    }
                    if (strH2 == null) {
                        strH2 = "android.intent.action.SEARCH";
                    }
                    String strH3 = a3.h(cursor, cursor.getColumnIndex("suggest_intent_data"));
                    if (strH3 == null) {
                        strH3 = this.R0.getSuggestIntentData();
                    }
                    if (strH3 != null && (strH = a3.h(cursor, cursor.getColumnIndex("suggest_intent_data_id"))) != null) {
                        strH3 = strH3 + "/" + Uri.encode(strH);
                    }
                    intentL = l(strH2, a3.h(cursor, cursor.getColumnIndex("suggest_intent_extra_data")), strH3 == null ? null : Uri.parse(strH3), a3.h(cursor, cursor.getColumnIndex("suggest_intent_query")));
                } catch (RuntimeException unused) {
                }
            } catch (RuntimeException unused2) {
                cursor.getPosition();
            }
            if (intentL != null) {
                try {
                    getContext().startActivity(intentL);
                } catch (RuntimeException unused3) {
                    intentL.toString();
                }
            }
        }
        SearchAutoComplete searchAutoComplete = this.f974q;
        searchAutoComplete.setImeVisibility(false);
        searchAutoComplete.dismissDropDown();
    }

    public final void q(int i10) {
        Editable text = this.f974q.getText();
        Cursor cursor = this.S.f2848c;
        if (cursor == null) {
            return;
        }
        if (!cursor.moveToPosition(i10)) {
            setQuery(text);
            return;
        }
        String strC = this.S.c(cursor);
        if (strC != null) {
            setQuery(strC);
        } else {
            setQuery(text);
        }
    }

    public final void r(CharSequence charSequence) {
        setQuery(charSequence);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean requestFocus(int i10, Rect rect) {
        if (this.f977t0 || !isFocusable()) {
            return false;
        }
        if (this.R) {
            return super.requestFocus(i10, rect);
        }
        boolean zRequestFocus = this.f974q.requestFocus(i10, rect);
        if (zRequestFocus) {
            y(false);
        }
        return zRequestFocus;
    }

    public final void s() {
        SearchAutoComplete searchAutoComplete = this.f974q;
        Editable text = searchAutoComplete.getText();
        if (text == null || TextUtils.getTrimmedLength(text) <= 0) {
            return;
        }
        if (this.R0 != null) {
            getContext().startActivity(l("android.intent.action.SEARCH", null, null, text.toString()));
        }
        searchAutoComplete.setImeVisibility(false);
        searchAutoComplete.dismissDropDown();
    }

    public void setAppSearchData(Bundle bundle) {
        this.S0 = bundle;
    }

    public void setIconified(boolean z) {
        if (z) {
            o();
            return;
        }
        y(false);
        SearchAutoComplete searchAutoComplete = this.f974q;
        searchAutoComplete.requestFocus();
        searchAutoComplete.setImeVisibility(true);
        View.OnClickListener onClickListener = this.O;
        if (onClickListener != null) {
            onClickListener.onClick(this);
        }
    }

    public void setIconifiedByDefault(boolean z) {
        if (this.P == z) {
            return;
        }
        this.P = z;
        y(z);
        v();
    }

    public void setImeOptions(int i10) {
        this.f974q.setImeOptions(i10);
    }

    public void setInputType(int i10) {
        this.f974q.setInputType(i10);
    }

    public void setMaxWidth(int i10) {
        this.M0 = i10;
        requestLayout();
    }

    public void setOnQueryTextFocusChangeListener(View.OnFocusChangeListener onFocusChangeListener) {
        this.N = onFocusChangeListener;
    }

    public void setOnSearchClickListener(View.OnClickListener onClickListener) {
        this.O = onClickListener;
    }

    public void setQueryHint(CharSequence charSequence) {
        this.V = charSequence;
        v();
    }

    public void setQueryRefinementEnabled(boolean z) {
        this.f973h0 = z;
        c1.c cVar = this.S;
        if (cVar instanceof a3) {
            ((a3) cVar).f17010q = z ? 2 : 1;
        }
    }

    public void setSearchableInfo(SearchableInfo searchableInfo) {
        this.R0 = searchableInfo;
        Intent intent = null;
        SearchAutoComplete searchAutoComplete = this.f974q;
        if (searchableInfo != null) {
            searchAutoComplete.setThreshold(searchableInfo.getSuggestThreshold());
            searchAutoComplete.setImeOptions(this.R0.getImeOptions());
            int inputType = this.R0.getInputType();
            if ((inputType & 15) == 1) {
                inputType &= -65537;
                if (this.R0.getSuggestAuthority() != null) {
                    inputType |= 589824;
                }
            }
            searchAutoComplete.setInputType(inputType);
            c1.c cVar = this.S;
            if (cVar != null) {
                cVar.b(null);
            }
            if (this.R0.getSuggestAuthority() != null) {
                a3 a3Var = new a3(getContext(), this, this.R0, this.V0);
                this.S = a3Var;
                searchAutoComplete.setAdapter(a3Var);
                ((a3) this.S).f17010q = this.f973h0 ? 2 : 1;
            }
            v();
        }
        SearchableInfo searchableInfo2 = this.R0;
        boolean z = false;
        if (searchableInfo2 != null && searchableInfo2.getVoiceSearchEnabled()) {
            if (this.R0.getVoiceSearchLaunchWebSearch()) {
                intent = this.K;
            } else if (this.R0.getVoiceSearchLaunchRecognizer()) {
                intent = this.L;
            }
            if (intent != null) {
                z = getContext().getPackageManager().resolveActivity(intent, 65536) != null;
            }
        }
        this.N0 = z;
        if (z) {
            searchAutoComplete.setPrivateImeOptions("nm");
        }
        y(this.R);
    }

    public void setSubmitButtonEnabled(boolean z) {
        this.T = z;
        y(this.R);
    }

    public void setSuggestionsAdapter(c1.c cVar) {
        this.S = cVar;
        this.f974q.setAdapter(cVar);
    }

    public final void t() {
        boolean zIsEmpty = TextUtils.isEmpty(this.f974q.getText());
        int i10 = (!zIsEmpty || (this.P && !this.P0)) ? 0 : 8;
        ImageView imageView = this.f980x;
        imageView.setVisibility(i10);
        Drawable drawable = imageView.getDrawable();
        if (drawable != null) {
            drawable.setState(!zIsEmpty ? ViewGroup.ENABLED_STATE_SET : ViewGroup.EMPTY_STATE_SET);
        }
    }

    public final void u() {
        int[] iArr = this.f974q.hasFocus() ? ViewGroup.FOCUSED_STATE_SET : ViewGroup.EMPTY_STATE_SET;
        Drawable background = this.f975s.getBackground();
        if (background != null) {
            background.setState(iArr);
        }
        Drawable background2 = this.f976t.getBackground();
        if (background2 != null) {
            background2.setState(iArr);
        }
        invalidate();
    }

    public final void v() {
        Drawable drawable;
        CharSequence queryHint = getQueryHint();
        if (queryHint == null) {
            queryHint = "";
        }
        boolean z = this.P;
        SearchAutoComplete searchAutoComplete = this.f974q;
        if (z && (drawable = this.G) != null) {
            double textSize = searchAutoComplete.getTextSize();
            Double.isNaN(textSize);
            int i10 = (int) (textSize * 1.25d);
            drawable.setBounds(0, 0, i10, i10);
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("   ");
            spannableStringBuilder.setSpan(new ImageSpan(drawable), 1, 2, 33);
            spannableStringBuilder.append(queryHint);
            queryHint = spannableStringBuilder;
        }
        searchAutoComplete.setHint(queryHint);
    }

    public final void w() {
        this.f976t.setVisibility(((this.T || this.N0) && !this.R && (this.f979w.getVisibility() == 0 || this.f981y.getVisibility() == 0)) ? 0 : 8);
    }

    public final void x(boolean z) {
        boolean z4 = this.T;
        this.f979w.setVisibility((!z4 || !(z4 || this.N0) || this.R || !hasFocus() || (!z && this.N0)) ? 8 : 0);
    }

    public final void y(boolean z) {
        this.R = z;
        int i10 = 8;
        int i11 = z ? 0 : 8;
        boolean zIsEmpty = TextUtils.isEmpty(this.f974q.getText());
        this.f978v.setVisibility(i11);
        x(!zIsEmpty);
        this.r.setVisibility(z ? 8 : 0);
        ImageView imageView = this.F;
        imageView.setVisibility((imageView.getDrawable() == null || this.P) ? 8 : 0);
        t();
        if (this.N0 && !this.R && zIsEmpty) {
            this.f979w.setVisibility(8);
            i10 = 0;
        }
        this.f981y.setVisibility(i10);
        w();
    }

    public SearchView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.searchViewStyle);
    }

    public SearchView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.B = new Rect();
        this.C = new Rect();
        this.D = new int[2];
        this.E = new int[2];
        this.T0 = new t2(this, 0);
        this.U0 = new t2(this, 1);
        this.V0 = new WeakHashMap();
        a aVar = new a(this);
        b bVar = new b(this);
        g0 g0Var = new g0(1, this);
        u uVar = new u(2, this);
        a2 a2Var = new a2(1, this);
        aa aaVar = new aa(this, 6);
        int[] iArr = p.a.f12533u;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i10, 0);
        s4.a aVar2 = new s4.a(context, typedArrayObtainStyledAttributes);
        b1.w(this, context, iArr, attributeSet, typedArrayObtainStyledAttributes, i10);
        LayoutInflater.from(context).inflate(typedArrayObtainStyledAttributes.getResourceId(19, R.layout.abc_search_view), (ViewGroup) this, true);
        SearchAutoComplete searchAutoComplete = (SearchAutoComplete) findViewById(R.id.search_src_text);
        this.f974q = searchAutoComplete;
        searchAutoComplete.setSearchView(this);
        this.r = findViewById(R.id.search_edit_frame);
        View viewFindViewById = findViewById(R.id.search_plate);
        this.f975s = viewFindViewById;
        View viewFindViewById2 = findViewById(R.id.submit_area);
        this.f976t = viewFindViewById2;
        ImageView imageView = (ImageView) findViewById(R.id.search_button);
        this.f978v = imageView;
        ImageView imageView2 = (ImageView) findViewById(R.id.search_go_btn);
        this.f979w = imageView2;
        ImageView imageView3 = (ImageView) findViewById(R.id.search_close_btn);
        this.f980x = imageView3;
        ImageView imageView4 = (ImageView) findViewById(R.id.search_voice_btn);
        this.f981y = imageView4;
        ImageView imageView5 = (ImageView) findViewById(R.id.search_mag_icon);
        this.F = imageView5;
        j0.q(viewFindViewById, aVar2.e(20));
        j0.q(viewFindViewById2, aVar2.e(25));
        imageView.setImageDrawable(aVar2.e(23));
        imageView2.setImageDrawable(aVar2.e(15));
        imageView3.setImageDrawable(aVar2.e(12));
        imageView4.setImageDrawable(aVar2.e(28));
        imageView5.setImageDrawable(aVar2.e(23));
        this.G = aVar2.e(22);
        q4.a.a0(imageView, getResources().getString(R.string.abc_searchview_description_search));
        this.H = typedArrayObtainStyledAttributes.getResourceId(26, R.layout.abc_search_dropdown_item_icons_2line);
        this.I = typedArrayObtainStyledAttributes.getResourceId(13, 0);
        imageView.setOnClickListener(aVar);
        imageView3.setOnClickListener(aVar);
        imageView2.setOnClickListener(aVar);
        imageView4.setOnClickListener(aVar);
        searchAutoComplete.setOnClickListener(aVar);
        searchAutoComplete.addTextChangedListener(aaVar);
        searchAutoComplete.setOnEditorActionListener(g0Var);
        searchAutoComplete.setOnItemClickListener(uVar);
        searchAutoComplete.setOnItemSelectedListener(a2Var);
        searchAutoComplete.setOnKeyListener(bVar);
        searchAutoComplete.setOnFocusChangeListener(new d0(2, this));
        setIconifiedByDefault(typedArrayObtainStyledAttributes.getBoolean(18, true));
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(2, -1);
        if (dimensionPixelSize != -1) {
            setMaxWidth(dimensionPixelSize);
        }
        this.M = typedArrayObtainStyledAttributes.getText(14);
        this.V = typedArrayObtainStyledAttributes.getText(21);
        int i11 = typedArrayObtainStyledAttributes.getInt(6, -1);
        if (i11 != -1) {
            setImeOptions(i11);
        }
        int i12 = typedArrayObtainStyledAttributes.getInt(5, -1);
        if (i12 != -1) {
            setInputType(i12);
        }
        setFocusable(typedArrayObtainStyledAttributes.getBoolean(1, true));
        aVar2.r();
        Intent intent = new Intent("android.speech.action.WEB_SEARCH");
        this.K = intent;
        intent.addFlags(268435456);
        intent.putExtra("android.speech.extra.LANGUAGE_MODEL", "web_search");
        Intent intent2 = new Intent("android.speech.action.RECOGNIZE_SPEECH");
        this.L = intent2;
        intent2.addFlags(268435456);
        View viewFindViewById3 = findViewById(searchAutoComplete.getDropDownAnchor());
        this.z = viewFindViewById3;
        if (viewFindViewById3 != null) {
            viewFindViewById3.addOnLayoutChangeListener(new v6.a(1, this));
        }
        y(this.P);
        v();
    }

    public void setOnCloseListener(u2 u2Var) {
    }

    public void setOnQueryTextListener(v2 v2Var) {
    }

    public void setOnSuggestionListener(w2 w2Var) {
    }
}
