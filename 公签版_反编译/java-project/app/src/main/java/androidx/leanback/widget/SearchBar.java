package androidx.leanback.widget;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.media.SoundPool;
import android.os.Handler;
import android.speech.SpeechRecognizer;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.hjq.permissions.permission.PermissionNames;
import com.yunpan.appmanage.R;

/* loaded from: classes.dex */
public class SearchBar extends RelativeLayout {
    public static final /* synthetic */ int z = 0;

    /* renamed from: a, reason: collision with root package name */
    public SearchEditText f1549a;

    /* renamed from: b, reason: collision with root package name */
    public SpeechOrbView f1550b;

    /* renamed from: c, reason: collision with root package name */
    public ImageView f1551c;

    /* renamed from: d, reason: collision with root package name */
    public String f1552d;

    /* renamed from: e, reason: collision with root package name */
    public String f1553e;

    /* renamed from: f, reason: collision with root package name */
    public String f1554f;

    /* renamed from: g, reason: collision with root package name */
    public Drawable f1555g;

    /* renamed from: h, reason: collision with root package name */
    public final Handler f1556h;

    /* renamed from: i, reason: collision with root package name */
    public final InputMethodManager f1557i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f1558j;

    /* renamed from: k, reason: collision with root package name */
    public Drawable f1559k;
    public final int l;

    /* renamed from: m, reason: collision with root package name */
    public final int f1560m;

    /* renamed from: n, reason: collision with root package name */
    public final int f1561n;

    /* renamed from: p, reason: collision with root package name */
    public final int f1562p;

    /* renamed from: q, reason: collision with root package name */
    public final int f1563q;
    public final int r;

    /* renamed from: s, reason: collision with root package name */
    public SpeechRecognizer f1564s;

    /* renamed from: t, reason: collision with root package name */
    public boolean f1565t;

    /* renamed from: v, reason: collision with root package name */
    public SoundPool f1566v;

    /* renamed from: w, reason: collision with root package name */
    public final SparseIntArray f1567w;

    /* renamed from: x, reason: collision with root package name */
    public boolean f1568x;

    /* renamed from: y, reason: collision with root package name */
    public final Context f1569y;

    public SearchBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f1556h = new Handler();
        this.f1558j = false;
        this.f1567w = new SparseIntArray();
        this.f1568x = false;
        this.f1569y = context;
        Resources resources = getResources();
        LayoutInflater.from(getContext()).inflate(R.layout.lb_search_bar, (ViewGroup) this, true);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, getResources().getDimensionPixelSize(R.dimen.lb_search_bar_height));
        layoutParams.addRule(10, -1);
        setLayoutParams(layoutParams);
        setBackgroundColor(0);
        setClipChildren(false);
        this.f1552d = "";
        this.f1557i = (InputMethodManager) context.getSystemService("input_method");
        this.f1560m = resources.getColor(R.color.lb_search_bar_text_speech_mode);
        this.l = resources.getColor(R.color.lb_search_bar_text);
        this.r = resources.getInteger(R.integer.lb_search_bar_speech_mode_background_alpha);
        this.f1563q = resources.getInteger(R.integer.lb_search_bar_text_mode_background_alpha);
        this.f1562p = resources.getColor(R.color.lb_search_bar_hint_speech_mode);
        this.f1561n = resources.getColor(R.color.lb_search_bar_hint);
    }

    public final void a() {
        if (this.f1568x) {
            return;
        }
        if (!hasFocus()) {
            requestFocus();
        }
        if (this.f1564s == null) {
            return;
        }
        if (getContext().checkCallingOrSelfPermission(PermissionNames.RECORD_AUDIO) != 0) {
            throw new IllegalStateException("android.permission.RECORD_AUDIO required for search");
        }
        this.f1568x = true;
        this.f1549a.setText("");
        Intent intent = new Intent("android.speech.action.RECOGNIZE_SPEECH");
        intent.putExtra("android.speech.extra.LANGUAGE_MODEL", "free_form");
        intent.putExtra("android.speech.extra.PARTIAL_RESULTS", true);
        this.f1564s.setRecognitionListener(new i0(this));
        this.f1565t = true;
        this.f1564s.startListening(intent);
    }

    public final void b() {
        if (this.f1568x) {
            this.f1549a.setText(this.f1552d);
            this.f1549a.setHint(this.f1553e);
            this.f1568x = false;
            if (this.f1564s == null) {
                return;
            }
            this.f1550b.c();
            if (this.f1565t) {
                this.f1564s.cancel();
                this.f1565t = false;
            }
            this.f1564s.setRecognitionListener(null);
        }
    }

    public final void c() throws Resources.NotFoundException {
        String string = getResources().getString(R.string.lb_search_bar_hint);
        if (!TextUtils.isEmpty(this.f1554f)) {
            string = this.f1550b.isFocused() ? getResources().getString(R.string.lb_search_bar_hint_with_title_speech, this.f1554f) : getResources().getString(R.string.lb_search_bar_hint_with_title, this.f1554f);
        } else if (this.f1550b.isFocused()) {
            string = getResources().getString(R.string.lb_search_bar_hint_speech);
        }
        this.f1553e = string;
        SearchEditText searchEditText = this.f1549a;
        if (searchEditText != null) {
            searchEditText.setHint(string);
        }
    }

    public final void d(boolean z4) throws Resources.NotFoundException {
        if (z4) {
            this.f1559k.setAlpha(this.r);
            boolean zIsFocused = this.f1550b.isFocused();
            int i10 = this.f1562p;
            if (zIsFocused) {
                this.f1549a.setTextColor(i10);
                this.f1549a.setHintTextColor(i10);
            } else {
                this.f1549a.setTextColor(this.f1560m);
                this.f1549a.setHintTextColor(i10);
            }
        } else {
            this.f1559k.setAlpha(this.f1563q);
            this.f1549a.setTextColor(this.l);
            this.f1549a.setHintTextColor(this.f1561n);
        }
        c();
    }

    public Drawable getBadgeDrawable() {
        return this.f1555g;
    }

    public CharSequence getHint() {
        return this.f1553e;
    }

    public String getTitle() {
        return this.f1554f;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f1566v = new SoundPool(2, 1, 0);
        int[] iArr = {R.raw.lb_voice_failure, R.raw.lb_voice_open, R.raw.lb_voice_no_input, R.raw.lb_voice_success};
        for (int i10 = 0; i10 < 4; i10++) {
            int i11 = iArr[i10];
            this.f1567w.put(i11, this.f1566v.load(this.f1569y, i11, 1));
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        b();
        this.f1566v.release();
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public final void onFinishInflate() throws Resources.NotFoundException {
        super.onFinishInflate();
        this.f1559k = ((RelativeLayout) findViewById(R.id.lb_search_bar_items)).getBackground();
        this.f1549a = (SearchEditText) findViewById(R.id.lb_search_text_editor);
        ImageView imageView = (ImageView) findViewById(R.id.lb_search_bar_badge);
        this.f1551c = imageView;
        Drawable drawable = this.f1555g;
        if (drawable != null) {
            imageView.setImageDrawable(drawable);
        }
        this.f1549a.setOnFocusChangeListener(new d0(0, this));
        this.f1549a.addTextChangedListener(new f0(this, new e0(this, 0)));
        this.f1549a.setOnKeyboardDismissListener(new a1.i(5, this));
        int i10 = 0;
        this.f1549a.setOnEditorActionListener(new g0(i10, this));
        this.f1549a.setPrivateImeOptions("escapeNorth,voiceDismiss");
        SpeechOrbView speechOrbView = (SpeechOrbView) findViewById(R.id.lb_search_bar_speech_orb);
        this.f1550b = speechOrbView;
        speechOrbView.setOnOrbClickedListener(new h0(i10, this));
        this.f1550b.setOnFocusChangeListener(new d0(1, this));
        d(hasFocus());
        c();
    }

    public void setBadgeDrawable(Drawable drawable) {
        this.f1555g = drawable;
        ImageView imageView = this.f1551c;
        if (imageView != null) {
            imageView.setImageDrawable(drawable);
            if (drawable != null) {
                this.f1551c.setVisibility(0);
            } else {
                this.f1551c.setVisibility(8);
            }
        }
    }

    @Override // android.view.View
    public void setNextFocusDownId(int i10) {
        this.f1550b.setNextFocusDownId(i10);
        this.f1549a.setNextFocusDownId(i10);
    }

    public void setPermissionListener(k0 k0Var) {
    }

    public void setSearchAffordanceColors(n0 n0Var) {
        SpeechOrbView speechOrbView = this.f1550b;
        if (speechOrbView != null) {
            speechOrbView.setNotListeningOrbColors(n0Var);
        }
    }

    public void setSearchAffordanceColorsInListening(n0 n0Var) {
        SpeechOrbView speechOrbView = this.f1550b;
        if (speechOrbView != null) {
            speechOrbView.setListeningOrbColors(n0Var);
        }
    }

    public void setSearchBarListener(j0 j0Var) {
    }

    public void setSearchQuery(String str) {
        b();
        this.f1549a.setText(str);
        setSearchQueryInternal(str);
    }

    public void setSearchQueryInternal(String str) {
        if (TextUtils.equals(this.f1552d, str)) {
            return;
        }
        this.f1552d = str;
    }

    @Deprecated
    public void setSpeechRecognitionCallback(q0 q0Var) {
    }

    public void setSpeechRecognizer(SpeechRecognizer speechRecognizer) {
        b();
        SpeechRecognizer speechRecognizer2 = this.f1564s;
        if (speechRecognizer2 != null) {
            speechRecognizer2.setRecognitionListener(null);
            if (this.f1565t) {
                this.f1564s.cancel();
                this.f1565t = false;
            }
        }
        this.f1564s = speechRecognizer;
    }

    public void setTitle(String str) throws Resources.NotFoundException {
        this.f1554f = str;
        c();
    }
}
