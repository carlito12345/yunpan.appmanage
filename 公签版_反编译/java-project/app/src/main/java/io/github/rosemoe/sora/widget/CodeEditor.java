package io.github.rosemoe.sora.widget;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.icu.lang.UCharacter;
import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
import android.os.TransactionTooLargeException;
import android.text.Editable;
import android.text.method.MetaKeyKeyListener;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import android.util.TypedValue;
import android.view.ContextMenu;
import android.view.ContextThemeWrapper;
import android.view.DragEvent;
import android.view.GestureDetector;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.PointerIcon;
import android.view.ScaleGestureDetector;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.inputmethod.CursorAnchorInfo;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.ExtractedText;
import android.view.inputmethod.ExtractedTextRequest;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputMethodManager;
import android.widget.EdgeEffect;
import android.widget.OverScroller;
import android.widget.Toast;
import cc.e;
import com.alibaba.sdk.android.oss.signer.SignParameters;
import com.yunpan.appmanage.R;
import db.a0;
import db.t;
import db.w;
import eb.o;
import f2.e0;
import fb.a;
import ha.db;
import ha.jd;
import j$.util.Objects;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Stack;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.ReentrantLock;
import l5.y;
import mb.g;
import mb.h;
import mb.i;
import mb.j;
import mb.m;
import mb.n;
import mb.q;
import tb.d;
import tb.f;
import tb.l;
import tb.r;
import tb.u;
import tb.x;
import ua.i1;
import vb.k;
import vb.p;
import vb.s;
import vb.v;
import wb.c;
import yb.b;

/* loaded from: classes.dex */
public class CodeEditor extends View implements i, a {
    public float A;
    public e A1;
    public float B;
    public d B1;
    public float C;
    public final tb.e C1;
    public float D;
    public Bundle D1;
    public boolean E;
    public final b E1;
    public boolean F;
    public final l F1;
    public boolean G;
    public boolean G1;
    public boolean H;
    public float H1;
    public boolean I;
    public float I1;
    public boolean J1;
    public boolean K;
    public boolean K1;
    public boolean L;
    public m L1;
    public boolean M;
    public boolean M0;
    public final ac.b M1;
    public volatile boolean N;
    public boolean N0;
    public final HashMap N1;
    public boolean O;
    public boolean O0;
    public int P;
    public boolean P0;
    public boolean Q0;
    public int R;
    public boolean R0;
    public int S;
    public boolean S0;
    public boolean T;
    public boolean T0;
    public boolean U0;
    public boolean V;
    public boolean V0;
    public boolean W0;
    public boolean X0;
    public boolean Y0;
    public boolean Z0;

    /* renamed from: a, reason: collision with root package name */
    public final kf.d f8701a;

    /* renamed from: a1, reason: collision with root package name */
    public boolean f8702a1;

    /* renamed from: b, reason: collision with root package name */
    public s4.a f8703b;

    /* renamed from: b1, reason: collision with root package name */
    public final cc.d f8704b1;

    /* renamed from: c, reason: collision with root package name */
    public final s f8705c;

    /* renamed from: c1, reason: collision with root package name */
    public final cc.d f8706c1;

    /* renamed from: d, reason: collision with root package name */
    public final p f8707d;

    /* renamed from: d1, reason: collision with root package name */
    public final cc.d f8708d1;

    /* renamed from: e, reason: collision with root package name */
    public final ArrayList f8709e;

    /* renamed from: e1, reason: collision with root package name */
    public final ClipboardManager f8710e1;

    /* renamed from: f, reason: collision with root package name */
    public final y f8711f;

    /* renamed from: f1, reason: collision with root package name */
    public final InputMethodManager f8712f1;

    /* renamed from: g, reason: collision with root package name */
    public mb.b f8713g;
    public j g1;

    /* renamed from: h, reason: collision with root package name */
    public final f f8714h;

    /* renamed from: h0, reason: collision with root package name */
    public boolean f8715h0;

    /* renamed from: h1, reason: collision with root package name */
    public g f8716h1;

    /* renamed from: i, reason: collision with root package name */
    public final db.p f8717i;

    /* renamed from: i1, reason: collision with root package name */
    public final Matrix f8718i1;

    /* renamed from: j, reason: collision with root package name */
    public c f8719j;

    /* renamed from: j1, reason: collision with root package name */
    public zb.a f8720j1;

    /* renamed from: k, reason: collision with root package name */
    public int f8721k;

    /* renamed from: k1, reason: collision with root package name */
    public cc.c f8722k1;
    public int l;

    /* renamed from: l1, reason: collision with root package name */
    public String f8723l1;

    /* renamed from: m, reason: collision with root package name */
    public int f8724m;

    /* renamed from: m1, reason: collision with root package name */
    public gb.b f8725m1;

    /* renamed from: n, reason: collision with root package name */
    public int f8726n;

    /* renamed from: n1, reason: collision with root package name */
    public cc.b f8727n1;

    /* renamed from: o1, reason: collision with root package name */
    public long f8728o1;

    /* renamed from: p, reason: collision with root package name */
    public int f8729p;

    /* renamed from: p1, reason: collision with root package name */
    public final k f8730p1;

    /* renamed from: q, reason: collision with root package name */
    public final float f8731q;

    /* renamed from: q1, reason: collision with root package name */
    public final u f8732q1;
    public float r;

    /* renamed from: r1, reason: collision with root package name */
    public Paint.Align f8733r1;

    /* renamed from: s, reason: collision with root package name */
    public float f8734s;

    /* renamed from: s1, reason: collision with root package name */
    public final GestureDetector f8735s1;

    /* renamed from: t, reason: collision with root package name */
    public float f8736t;

    /* renamed from: t0, reason: collision with root package name */
    public boolean f8737t0;

    /* renamed from: t1, reason: collision with root package name */
    public final ScaleGestureDetector f8738t1;

    /* renamed from: u1, reason: collision with root package name */
    public final CursorAnchorInfo.Builder f8739u1;

    /* renamed from: v, reason: collision with root package name */
    public float f8740v;

    /* renamed from: v1, reason: collision with root package name */
    public final EdgeEffect f8741v1;

    /* renamed from: w, reason: collision with root package name */
    public float f8742w;

    /* renamed from: w1, reason: collision with root package name */
    public final EdgeEffect f8743w1;

    /* renamed from: x, reason: collision with root package name */
    public float f8744x;

    /* renamed from: x1, reason: collision with root package name */
    public ExtractedTextRequest f8745x1;

    /* renamed from: y, reason: collision with root package name */
    public final float f8746y;

    /* renamed from: y1, reason: collision with root package name */
    public final r f8747y1;
    public float z;

    /* renamed from: z1, reason: collision with root package name */
    public cc.a f8748z1;

    static {
        sb.d.a("CodeEditor");
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0207  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0212  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x02d6  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x032b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public CodeEditor(Context context, AttributeSet attributeSet) throws Throwable {
        TypedArray typedArrayObtainStyledAttributes;
        float scaledVerticalScrollFactor;
        boolean z;
        int i10;
        super(context, attributeSet, R.attr.codeEditorStyle, 0);
        this.f8701a = new kf.d(this);
        this.f8709e = new ArrayList(2);
        this.f8724m = 0;
        this.A = 1.0f;
        this.B = 0.0f;
        this.D = 0.5f;
        this.f8727n1 = cc.b.WAVY_LINE;
        this.f8728o1 = 0L;
        this.N1 = new HashMap();
        TypedArray typedArray = null;
        this.f8717i = new db.p(null);
        this.Y0 = true;
        this.E1 = new b(this);
        this.F1 = new l(this);
        this.f8711f = new y(this);
        Context context2 = getContext();
        if (Build.VERSION.SDK_INT >= 26) {
            scaledVerticalScrollFactor = ViewConfiguration.get(context2).getScaledVerticalScrollFactor();
        } else {
            try {
                typedArrayObtainStyledAttributes = context2.obtainStyledAttributes(new int[]{android.R.attr.listPreferredItemHeight});
            } catch (Exception unused) {
                typedArrayObtainStyledAttributes = null;
            } catch (Throwable th2) {
                th = th2;
            }
            try {
                float dimension = typedArrayObtainStyledAttributes.getDimension(0, 32.0f);
                typedArrayObtainStyledAttributes.recycle();
                scaledVerticalScrollFactor = dimension;
            } catch (Exception unused2) {
                if (typedArrayObtainStyledAttributes != null) {
                    typedArrayObtainStyledAttributes.recycle();
                }
                scaledVerticalScrollFactor = 32.0f;
                this.f8746y = scaledVerticalScrollFactor;
                this.L1 = m.LF;
                this.f8722k1 = dc.a.f4567a;
                Context context3 = getContext();
                SparseIntArray sparseIntArray = cb.a.f2985a;
                int i11 = R.string.sora_editor_editor_formatting;
                int i12 = sparseIntArray.get(R.string.sora_editor_editor_formatting);
                this.f8723l1 = context3.getString(i12 != 0 ? i12 : i11);
                this.C1 = new tb.e();
                float fApplyDimension = TypedValue.applyDimension(1, 10.0f, Resources.getSystem().getDisplayMetrics()) / 10.0f;
                this.f8731q = fApplyDimension;
                this.r = fApplyDimension;
                this.f8740v = 1.5f * fApplyDimension;
                this.f8744x = fApplyDimension;
                float f10 = fApplyDimension * 2.0f;
                this.f8736t = f10;
                this.f8734s = f10;
                this.f8718i1 = new Matrix();
                this.A1 = new dc.b(getContext());
                this.f8747y1 = new r(this);
                this.f8748z1 = new dc.c(this);
                setCursorBlinkPeriod(500);
                this.f8739u1 = new CursorAnchorInfo.Builder();
                setTextSize(18.0f);
                setLineInfoTextSize(TypedValue.applyDimension(2, 21.0f, Resources.getSystem().getDisplayMetrics()));
                zb.a aVar = zb.a.f19542c;
                this.f8720j1 = aVar;
                aVar.a(this);
                this.f8732q1 = new u(this);
                GestureDetector gestureDetector = new GestureDetector(getContext(), this.f8732q1);
                this.f8735s1 = gestureDetector;
                gestureDetector.setOnDoubleTapListener(this.f8732q1);
                this.f8738t1 = new ScaleGestureDetector(getContext(), this.f8732q1);
                this.f8708d1 = new cc.d();
                this.f8704b1 = new cc.d();
                this.f8706c1 = new cc.d();
                this.f8733r1 = Paint.Align.RIGHT;
                this.E = false;
                this.f8715h0 = true;
                this.f8742w = 1.0f;
                this.f8712f1 = (InputMethodManager) getContext().getSystemService("input_method");
                this.f8710e1 = (ClipboardManager) getContext().getSystemService("clipboard");
                setUndoEnabled(true);
                this.l = -1;
                setScalable(true);
                setFocusable(true);
                setFocusableInTouchMode(true);
                this.f8714h = new f(this);
                this.f8730p1 = new k(this);
                this.f8741v1 = new EdgeEffect(getContext());
                this.f8743w1 = new EdgeEffect(getContext());
                this.f8705c = new s(this);
                this.f8707d = new p(this);
                new i1(this);
                setEditorLanguage(null);
                setText(null);
                setTabWidth(4);
                setHighlightCurrentLine(true);
                setVerticalScrollBarEnabled(true);
                setHighlightCurrentBlock(true);
                setDisplayLnPanel(true);
                setHorizontalScrollBarEnabled(true);
                setFirstLineNumberAlwaysVisible(true);
                setCursorAnimationEnabled(true);
                setEditable(true);
                setLineNumberEnabled(true);
                setHardwareAcceleratedDrawAllowed(true);
                setInterceptParentHorizontalScrollIfNeeded(false);
                setTypefaceText(Typeface.DEFAULT);
                setSoftKeyboardEnabled(true);
                setDisableSoftKbdIfHardKbdAvailable(true);
                if (Build.VERSION.SDK_INT >= 26) {
                }
                if (getContext() instanceof ContextThemeWrapper) {
                }
                this.f8738t1.setQuickScaleEnabled(false);
                this.M1 = new ac.b(this);
                TypedArray typedArrayObtainStyledAttributes2 = getContext().obtainStyledAttributes(attributeSet, cb.b.f2986a, R.attr.codeEditorStyle, 0);
                setHorizontalScrollbarThumbDrawable(typedArrayObtainStyledAttributes2.getDrawable(15));
                setHorizontalScrollbarTrackDrawable(typedArrayObtainStyledAttributes2.getDrawable(17));
                setVerticalScrollbarThumbDrawable(typedArrayObtainStyledAttributes2.getDrawable(16));
                setVerticalScrollbarTrackDrawable(typedArrayObtainStyledAttributes2.getDrawable(18));
                setLnPanelPositionMode(typedArrayObtainStyledAttributes2.getInt(11, 1));
                setLnPanelPosition(typedArrayObtainStyledAttributes2.getInt(10, 15));
                setDividerWidth(typedArrayObtainStyledAttributes2.getDimension(3, getDividerWidth()));
                f0(typedArrayObtainStyledAttributes2.getDimension(2, this.f8734s), typedArrayObtainStyledAttributes2.getDimension(2, this.f8736t));
                setPinLineNumber(typedArrayObtainStyledAttributes2.getBoolean(12, false));
                setHighlightCurrentBlock(typedArrayObtainStyledAttributes2.getBoolean(5, true));
                setHighlightCurrentLine(typedArrayObtainStyledAttributes2.getBoolean(6, true));
                setHighlightBracketPair(typedArrayObtainStyledAttributes2.getBoolean(4, true));
                setLigatureEnabled(typedArrayObtainStyledAttributes2.getBoolean(8, true));
                setLineNumberEnabled(typedArrayObtainStyledAttributes2.getBoolean(9, this.V));
                k kVar = this.f8730p1;
                z = typedArrayObtainStyledAttributes2.getBoolean(0, true);
                kVar.E = z;
                kVar.A.d(z);
                if (!z) {
                }
                this.C1.f14913d = typedArrayObtainStyledAttributes2.getBoolean(19, true);
                setRenderFunctionCharacters(typedArrayObtainStyledAttributes2.getBoolean(13, this.Y0));
                setScalable(typedArrayObtainStyledAttributes2.getBoolean(14, this.F));
                setTextSizePx(typedArrayObtainStyledAttributes2.getDimension(22, getTextSizePx()));
                setCursorBlinkPeriod(typedArrayObtainStyledAttributes2.getInt(1, getCursorBlink().f14908e));
                setTabWidth(typedArrayObtainStyledAttributes2.getInt(20, getTabWidth()));
                i10 = typedArrayObtainStyledAttributes2.getInt(24, 0);
                if (i10 != 0) {
                }
                setText(typedArrayObtainStyledAttributes2.getString(21));
                typedArrayObtainStyledAttributes2.recycle();
            } catch (Throwable th3) {
                th = th3;
                typedArray = typedArrayObtainStyledAttributes;
                if (typedArray != null) {
                    typedArray.recycle();
                }
                throw th;
            }
        }
        this.f8746y = scaledVerticalScrollFactor;
        this.L1 = m.LF;
        this.f8722k1 = dc.a.f4567a;
        Context context32 = getContext();
        SparseIntArray sparseIntArray2 = cb.a.f2985a;
        int i112 = R.string.sora_editor_editor_formatting;
        int i122 = sparseIntArray2.get(R.string.sora_editor_editor_formatting);
        this.f8723l1 = context32.getString(i122 != 0 ? i122 : i112);
        this.C1 = new tb.e();
        float fApplyDimension2 = TypedValue.applyDimension(1, 10.0f, Resources.getSystem().getDisplayMetrics()) / 10.0f;
        this.f8731q = fApplyDimension2;
        this.r = fApplyDimension2;
        this.f8740v = 1.5f * fApplyDimension2;
        this.f8744x = fApplyDimension2;
        float f102 = fApplyDimension2 * 2.0f;
        this.f8736t = f102;
        this.f8734s = f102;
        this.f8718i1 = new Matrix();
        this.A1 = new dc.b(getContext());
        this.f8747y1 = new r(this);
        this.f8748z1 = new dc.c(this);
        setCursorBlinkPeriod(500);
        this.f8739u1 = new CursorAnchorInfo.Builder();
        setTextSize(18.0f);
        setLineInfoTextSize(TypedValue.applyDimension(2, 21.0f, Resources.getSystem().getDisplayMetrics()));
        zb.a aVar2 = zb.a.f19542c;
        this.f8720j1 = aVar2;
        aVar2.a(this);
        this.f8732q1 = new u(this);
        GestureDetector gestureDetector2 = new GestureDetector(getContext(), this.f8732q1);
        this.f8735s1 = gestureDetector2;
        gestureDetector2.setOnDoubleTapListener(this.f8732q1);
        this.f8738t1 = new ScaleGestureDetector(getContext(), this.f8732q1);
        this.f8708d1 = new cc.d();
        this.f8704b1 = new cc.d();
        this.f8706c1 = new cc.d();
        this.f8733r1 = Paint.Align.RIGHT;
        this.E = false;
        this.f8715h0 = true;
        this.f8742w = 1.0f;
        this.f8712f1 = (InputMethodManager) getContext().getSystemService("input_method");
        this.f8710e1 = (ClipboardManager) getContext().getSystemService("clipboard");
        setUndoEnabled(true);
        this.l = -1;
        setScalable(true);
        setFocusable(true);
        setFocusableInTouchMode(true);
        this.f8714h = new f(this);
        this.f8730p1 = new k(this);
        this.f8741v1 = new EdgeEffect(getContext());
        this.f8743w1 = new EdgeEffect(getContext());
        this.f8705c = new s(this);
        this.f8707d = new p(this);
        new i1(this);
        setEditorLanguage(null);
        setText(null);
        setTabWidth(4);
        setHighlightCurrentLine(true);
        setVerticalScrollBarEnabled(true);
        setHighlightCurrentBlock(true);
        setDisplayLnPanel(true);
        setHorizontalScrollBarEnabled(true);
        setFirstLineNumberAlwaysVisible(true);
        setCursorAnimationEnabled(true);
        setEditable(true);
        setLineNumberEnabled(true);
        setHardwareAcceleratedDrawAllowed(true);
        setInterceptParentHorizontalScrollIfNeeded(false);
        setTypefaceText(Typeface.DEFAULT);
        setSoftKeyboardEnabled(true);
        setDisableSoftKbdIfHardKbdAvailable(true);
        if (Build.VERSION.SDK_INT >= 26) {
            setDefaultFocusHighlightEnabled(false);
        }
        if (getContext() instanceof ContextThemeWrapper) {
            ContextThemeWrapper contextThemeWrapper = (ContextThemeWrapper) getContext();
            TypedValue typedValue = new TypedValue();
            contextThemeWrapper.getTheme().resolveAttribute(android.R.attr.colorPrimary, typedValue, true);
            setEdgeEffectColor(typedValue.data);
        }
        this.f8738t1.setQuickScaleEnabled(false);
        this.M1 = new ac.b(this);
        TypedArray typedArrayObtainStyledAttributes22 = getContext().obtainStyledAttributes(attributeSet, cb.b.f2986a, R.attr.codeEditorStyle, 0);
        setHorizontalScrollbarThumbDrawable(typedArrayObtainStyledAttributes22.getDrawable(15));
        setHorizontalScrollbarTrackDrawable(typedArrayObtainStyledAttributes22.getDrawable(17));
        setVerticalScrollbarThumbDrawable(typedArrayObtainStyledAttributes22.getDrawable(16));
        setVerticalScrollbarTrackDrawable(typedArrayObtainStyledAttributes22.getDrawable(18));
        setLnPanelPositionMode(typedArrayObtainStyledAttributes22.getInt(11, 1));
        setLnPanelPosition(typedArrayObtainStyledAttributes22.getInt(10, 15));
        setDividerWidth(typedArrayObtainStyledAttributes22.getDimension(3, getDividerWidth()));
        f0(typedArrayObtainStyledAttributes22.getDimension(2, this.f8734s), typedArrayObtainStyledAttributes22.getDimension(2, this.f8736t));
        setPinLineNumber(typedArrayObtainStyledAttributes22.getBoolean(12, false));
        setHighlightCurrentBlock(typedArrayObtainStyledAttributes22.getBoolean(5, true));
        setHighlightCurrentLine(typedArrayObtainStyledAttributes22.getBoolean(6, true));
        setHighlightBracketPair(typedArrayObtainStyledAttributes22.getBoolean(4, true));
        setLigatureEnabled(typedArrayObtainStyledAttributes22.getBoolean(8, true));
        setLineNumberEnabled(typedArrayObtainStyledAttributes22.getBoolean(9, this.V));
        k kVar2 = this.f8730p1;
        z = typedArrayObtainStyledAttributes22.getBoolean(0, true);
        kVar2.E = z;
        kVar2.A.d(z);
        if (!z) {
            kVar2.e();
            kVar2.f();
        }
        this.C1.f14913d = typedArrayObtainStyledAttributes22.getBoolean(19, true);
        setRenderFunctionCharacters(typedArrayObtainStyledAttributes22.getBoolean(13, this.Y0));
        setScalable(typedArrayObtainStyledAttributes22.getBoolean(14, this.F));
        setTextSizePx(typedArrayObtainStyledAttributes22.getDimension(22, getTextSizePx()));
        setCursorBlinkPeriod(typedArrayObtainStyledAttributes22.getInt(1, getCursorBlink().f14908e));
        setTabWidth(typedArrayObtainStyledAttributes22.getInt(20, getTabWidth()));
        i10 = typedArrayObtainStyledAttributes22.getInt(24, 0);
        if (i10 != 0) {
            k0(true, i10 > 1);
        }
        setText(typedArrayObtainStyledAttributes22.getString(21));
        typedArrayObtainStyledAttributes22.recycle();
    }

    /* JADX WARN: Removed duplicated region for block: B:112:0x01b2 A[PHI: r9
  0x01b2: PHI (r9v7 int) = (r9v3 int), (r9v5 int), (r9v8 int) binds: [B:214:0x02b2, B:111:0x01b1, B:93:0x017d] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:206:0x029f A[PHI: r9
  0x029f: PHI (r9v6 int) = (r9v3 int), (r9v8 int) binds: [B:205:0x029d, B:93:0x017d] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:220:0x02bf A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:236:0x02c7 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0125 A[PHI: r9
  0x0125: PHI (r9v12 int) = 
  (r9v3 int)
  (r9v2 int)
  (r9v4 int)
  (r9v2 int)
  (r9v2 int)
  (r9v2 int)
  (r9v2 int)
  (r9v2 int)
  (r9v2 int)
  (r9v2 int)
  (r9v2 int)
  (r9v2 int)
  (r9v2 int)
  (r9v2 int)
  (r9v2 int)
  (r9v2 int)
  (r9v13 int)
 binds: [B:217:0x02b9, B:183:0x0267, B:184:0x0269, B:181:0x025f, B:161:0x022e, B:148:0x0213, B:130:0x01e2, B:117:0x01c0, B:119:0x01c6, B:102:0x0198, B:99:0x018c, B:80:0x014f, B:72:0x0138, B:73:0x013a, B:69:0x012e, B:70:0x0130, B:66:0x0124] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void A() {
        boolean z;
        int iB;
        int iCharCount;
        int iCharCount2;
        boolean zC;
        int iCharCount3;
        boolean zC2;
        j jVar = this.g1;
        if (jVar.a()) {
            g gVar = this.f8716h1;
            mb.b bVar = jVar.f11081c;
            int i10 = bVar.f11057b;
            int i11 = bVar.f11058c;
            mb.b bVar2 = jVar.f11082d;
            gVar.h(i10, i11, bVar2.f11057b, bVar2.f11058c);
            return;
        }
        mb.b bVar3 = jVar.f11081c;
        int i12 = bVar3.f11058c;
        int i13 = bVar3.f11057b;
        tb.e eVar = this.C1;
        if (eVar.f14911b || (eVar.f14912c != 1 && i12 > 0 && this.f8716h1.c(i13, i12 - 1) == ' ')) {
            h hVarO = this.f8716h1.o(jVar.f11081c.f11057b);
            int i14 = i12 - 1;
            int i15 = i14;
            while (true) {
                if (i15 >= 0) {
                    char cCharAt = hVarO.charAt(i15);
                    if (cCharAt != ' ' && cCharAt != '\t') {
                        break;
                    } else {
                        i15--;
                    }
                } else {
                    int i16 = this.f8716h1.o(i13).f11076c;
                    int i17 = i12;
                    while (true) {
                        if (i17 < i16) {
                            char cCharAt2 = hVarO.charAt(i17);
                            if (cCharAt2 != ' ' && cCharAt2 != '\t') {
                                z = false;
                                break;
                            }
                            i17++;
                        } else {
                            z = true;
                            break;
                        }
                    }
                    tb.e eVar2 = this.C1;
                    if (eVar2.f14911b && z) {
                        if (i13 == 0) {
                            this.f8716h1.h(i13, 0, i13, i12);
                            return;
                        }
                        g gVar2 = this.f8716h1;
                        int i18 = i13 - 1;
                        gVar2.h(i18, gVar2.o(i18).f11076c, i13, i16);
                        return;
                    }
                    if (eVar2.f14912c != 1 && i12 > 0 && this.f8716h1.c(i13, i14) == ' ') {
                        g gVar3 = this.f8716h1;
                        int tabWidth = this.C1.f14912c;
                        if (tabWidth == -1) {
                            tabWidth = getTabWidth();
                        }
                        gVar3.h(i13, Math.max(0, i12 - tabWidth), i13, i12);
                        return;
                    }
                }
            }
        }
        if (Build.VERSION.SDK_INT >= 24) {
            h hVarO2 = this.f8716h1.o(jVar.f11081c.f11057b);
            if (i12 <= 1) {
                iB = 0;
            } else {
                int iCharCount4 = i12;
                int i19 = 0;
                int iCharCount5 = 0;
                int iCharCount6 = 0;
                do {
                    int iCodePointBefore = Character.codePointBefore(hVarO2, iCharCount4);
                    iCharCount4 -= Character.charCount(iCodePointBefore);
                    pb.a aVar = pb.a.f12660b;
                    pb.a aVar2 = pb.a.f12661c;
                    switch (i19) {
                        case 0:
                            iCharCount5 = Character.charCount(iCodePointBefore);
                            i19 = 10;
                            if (iCodePointBefore == 10) {
                                i19 = 1;
                            } else {
                                int i20 = Build.VERSION.SDK_INT;
                                if ((i20 >= 28 ? aVar2 : aVar).b(iCodePointBefore)) {
                                    i19 = 6;
                                } else {
                                    if (!(127462 <= iCodePointBefore && iCodePointBefore <= 127487)) {
                                        if ((i20 >= 28 ? aVar2 : aVar).d(iCodePointBefore)) {
                                            i19 = 4;
                                        } else if (iCodePointBefore == 8419) {
                                            i19 = 2;
                                        } else {
                                            i19 = (i20 >= 28 ? aVar2 : aVar).a(iCodePointBefore) ? 7 : iCodePointBefore == 917631 ? 12 : 13;
                                        }
                                    }
                                }
                            }
                            if (iCharCount4 <= 0) {
                            }
                            iB = i12 - iCharCount5;
                            break;
                        case 1:
                            if (iCodePointBefore == 13) {
                                iCharCount5++;
                            }
                            if (iCharCount4 <= 0) {
                            }
                            iB = i12 - iCharCount5;
                            break;
                        case 2:
                            if ((Build.VERSION.SDK_INT >= 28 ? aVar2 : aVar).b(iCodePointBefore)) {
                                iCharCount6 = Character.charCount(iCodePointBefore);
                                i19 = 3;
                                if (iCharCount4 <= 0) {
                                }
                                iB = i12 - iCharCount5;
                                break;
                            } else {
                                if ((48 <= iCodePointBefore && iCodePointBefore <= 57) || iCodePointBefore == 35 || iCodePointBefore == 42) {
                                    iCharCount = Character.charCount(iCodePointBefore);
                                    iCharCount5 += iCharCount;
                                }
                                if (iCharCount4 <= 0) {
                                }
                                iB = i12 - iCharCount5;
                            }
                            break;
                        case 3:
                            if ((48 <= iCodePointBefore && iCodePointBefore <= 57) || iCodePointBefore == 35 || iCodePointBefore == 42) {
                                iCharCount2 = Character.charCount(iCodePointBefore);
                                iCharCount = iCharCount2 + iCharCount6;
                                iCharCount5 += iCharCount;
                            }
                            if (iCharCount4 <= 0) {
                            }
                            iB = i12 - iCharCount5;
                            break;
                        case 4:
                            int i21 = Build.VERSION.SDK_INT;
                            if ((i21 >= 28 ? aVar2 : aVar).b(iCodePointBefore)) {
                                iCharCount6 = Character.charCount(iCodePointBefore);
                                i19 = 5;
                                if (iCharCount4 <= 0) {
                                }
                                iB = i12 - iCharCount5;
                                break;
                            } else {
                                if (iCodePointBefore == 129309 || iCodePointBefore == 129340) {
                                    zC = true;
                                } else {
                                    zC = (i21 >= 28 ? aVar2 : aVar).c(iCodePointBefore);
                                }
                                if (zC) {
                                    iCharCount3 = Character.charCount(iCodePointBefore);
                                    iCharCount5 += iCharCount3;
                                    if (iCharCount4 <= 0) {
                                    }
                                    iB = i12 - iCharCount5;
                                }
                                if (iCharCount4 <= 0) {
                                }
                                iB = i12 - iCharCount5;
                            }
                            break;
                        case 5:
                            if (iCodePointBefore == 129309 || iCodePointBefore == 129340) {
                                zC2 = true;
                            } else {
                                zC2 = (Build.VERSION.SDK_INT >= 28 ? aVar2 : aVar).c(iCodePointBefore);
                            }
                            if (zC2) {
                                iCharCount2 = Character.charCount(iCodePointBefore);
                                iCharCount = iCharCount2 + iCharCount6;
                                iCharCount5 += iCharCount;
                            }
                            if (iCharCount4 <= 0) {
                            }
                            iB = i12 - iCharCount5;
                            break;
                        case 6:
                            int i22 = Build.VERSION.SDK_INT;
                            if ((i22 >= 28 ? aVar2 : aVar).a(iCodePointBefore)) {
                                iCharCount3 = Character.charCount(iCodePointBefore);
                                iCharCount5 += iCharCount3;
                                if (iCharCount4 <= 0) {
                                }
                                iB = i12 - iCharCount5;
                                break;
                            } else {
                                if (!(i22 >= 28 ? aVar2 : aVar).b(iCodePointBefore) && UCharacter.getCombiningClass(iCodePointBefore) == 0) {
                                    iCharCount = Character.charCount(iCodePointBefore);
                                    iCharCount5 += iCharCount;
                                }
                                if (iCharCount4 <= 0) {
                                }
                                iB = i12 - iCharCount5;
                            }
                            break;
                        case 7:
                            if (iCodePointBefore == 8205) {
                                i19 = 8;
                            }
                            if (iCharCount4 <= 0) {
                            }
                            iB = i12 - iCharCount5;
                            break;
                        case 8:
                            int i23 = Build.VERSION.SDK_INT;
                            if ((i23 >= 28 ? aVar2 : aVar).a(iCodePointBefore)) {
                                iCharCount5 += Character.charCount(iCodePointBefore) + 1;
                                if ((i23 >= 28 ? aVar2 : aVar).d(iCodePointBefore)) {
                                }
                                if (iCharCount4 <= 0) {
                                }
                                iB = i12 - iCharCount5;
                                break;
                            } else {
                                if ((i23 >= 28 ? aVar2 : aVar).b(iCodePointBefore)) {
                                    iCharCount6 = Character.charCount(iCodePointBefore);
                                    i19 = 9;
                                }
                                if (iCharCount4 <= 0) {
                                }
                                iB = i12 - iCharCount5;
                            }
                            break;
                        case 9:
                            if ((Build.VERSION.SDK_INT >= 28 ? aVar2 : aVar).a(iCodePointBefore)) {
                                iCharCount5 += Character.charCount(iCodePointBefore) + iCharCount6 + 1;
                                i19 = 7;
                                iCharCount6 = 0;
                            }
                            if (iCharCount4 <= 0) {
                            }
                            iB = i12 - iCharCount5;
                            break;
                        case 10:
                            if (127462 <= iCodePointBefore && iCodePointBefore <= 127487) {
                                iCharCount5 += 2;
                                i19 = 11;
                            }
                            if (iCharCount4 <= 0) {
                            }
                            iB = i12 - iCharCount5;
                            break;
                        case 11:
                            if (127462 <= iCodePointBefore && iCodePointBefore <= 127487) {
                                iCharCount5 -= 2;
                                i19 = 10;
                            }
                            if (iCharCount4 <= 0) {
                            }
                            iB = i12 - iCharCount5;
                            break;
                        case 12:
                            if (917536 > iCodePointBefore || iCodePointBefore > 917630) {
                                if ((Build.VERSION.SDK_INT >= 28 ? aVar2 : aVar).a(iCodePointBefore)) {
                                    iCharCount = Character.charCount(iCodePointBefore);
                                    iCharCount5 += iCharCount;
                                } else {
                                    i19 = 13;
                                    iCharCount5 = 2;
                                }
                            } else {
                                iCharCount5 += 2;
                            }
                            if (iCharCount4 <= 0) {
                            }
                            iB = i12 - iCharCount5;
                            break;
                        default:
                            throw new IllegalArgumentException(g.b.i("state ", i19, " is unknown"));
                    }
                } while (i19 != 13);
                iB = i12 - iCharCount5;
            }
        } else {
            iB = n.a().b(i12, this.f8716h1.o(jVar.f11081c.f11057b));
        }
        mb.b bVar4 = jVar.f11081c;
        int i24 = bVar4.f11058c;
        if (iB > i24) {
            i24 = iB;
            iB = i24;
        }
        if (iB != i24) {
            g gVar4 = this.f8716h1;
            int i25 = bVar4.f11057b;
            gVar4.h(i25, iB, i25, i24);
            return;
        }
        int i26 = bVar4.f11057b;
        if (i26 <= 0 || iB != 0) {
            return;
        }
        g gVar5 = this.f8716h1;
        int i27 = i26 - 1;
        gVar5.h(i27, gVar5.o(i27).f11076c, jVar.f11081c.f11057b, 0);
    }

    public final void B(String str, boolean z) {
        j cursor = getCursor();
        if (cursor.a()) {
            mb.b bVarA = cursor.f11081c.a();
            mb.b bVarA2 = cursor.f11082d.a().a();
            g text = getText();
            int i10 = bVarA.f11057b;
            int i11 = bVarA.f11058c;
            int i12 = bVarA2.f11057b;
            int i13 = bVarA2.f11058c;
            text.u(false);
            try {
                g gVarA = text.A(i10, i11, i12, i13);
                text.E(false);
                g0(bVarA2.f11057b, bVarA2.f11058c);
                u(str + ((Object) gVarA), false, true);
                if (z) {
                    mb.b bVarA3 = cursor.f11082d.a();
                    i0(bVarA2.f11057b, bVarA2.f11058c, bVarA3.f11057b, bVarA3.f11058c);
                }
            } catch (Throwable th2) {
                text.E(false);
                throw th2;
            }
        }
    }

    public final void C(int i10, int i11) {
        float width;
        tb.m scroller = getScroller();
        float[] fArrS = this.f8719j.s(i10, i11);
        float fS = S() + fArrS[1];
        float f10 = fArrS[0];
        boolean zIsFinished = scroller.f14985b.isFinished();
        OverScroller overScroller = scroller.f14985b;
        float offsetY = zIsFinished ? getOffsetY() : overScroller.getFinalY();
        float offsetX = overScroller.isFinished() ? getOffsetX() : overScroller.getFinalX();
        this.C1.getClass();
        float rowHeight = f10 - ((float) (getRowHeight() * 2)) < offsetY ? f10 - (getRowHeight() * 2) : offsetY;
        if (f10 > getHeight() + offsetY) {
            rowHeight = (getRowHeight() * 1.0f) + (f10 - getHeight());
        }
        float fMeasureText = i11 == 0 ? 0.0f : getTextPaint().measureText("a");
        if (fS < (this.R0 ? S() : 0.0f) + offsetX) {
            int width2 = getWidth() / 2;
            width = ((this.R0 ? -S() : 0.0f) + fS) - fMeasureText;
            float f11 = width2;
            if (Math.abs(width - offsetX) < f11) {
                width = Math.max(1.0f, offsetX - f11);
            }
        } else {
            width = offsetX;
        }
        if (fS + fMeasureText > offsetX + getWidth()) {
            width = ((fMeasureText * 0.8f) + fS) - getWidth();
        }
        float fMax = Math.max(0.0f, Math.min(getScrollMaxX(), width));
        float fMax2 = Math.max(0.0f, Math.min(getScrollMaxY(), rowHeight));
        if (Math.abs(fMax - getOffsetX()) < Math.abs(1.0f) && Math.abs(fMax2 - getOffsetY()) < Math.abs(1.0f)) {
            invalidate();
            return;
        }
        boolean z = System.currentTimeMillis() - this.f8728o1 >= 100;
        this.f8728o1 = System.currentTimeMillis();
        if (z) {
            overScroller.forceFinished(true);
            scroller.a();
            scroller.b(getOffsetX(), getOffsetY(), (int) (fMax - getOffsetX()), (int) (fMax2 - getOffsetY()), scroller.f14984a.getProps().f14919j);
            this.C1.getClass();
        } else {
            scroller.b(getOffsetX(), getOffsetY(), (int) (fMax - getOffsetX()), (int) (fMax2 - getOffsetY()), 0);
            overScroller.abortAnimation();
            scroller.a();
        }
        this.f8717i.a(new w(this, getOffsetX(), getOffsetY(), (int) fMax, (int) fMax2, 3));
        invalidate();
    }

    /* JADX WARN: Removed duplicated region for block: B:28:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void D() {
        mb.b bVar = this.f8713g;
        if (bVar != null) {
            g gVar = this.f8716h1;
            gVar.getClass();
            int i10 = bVar.f11057b;
            int i11 = bVar.f11058c;
            int i12 = bVar.f11056a;
            boolean z = false;
            gVar.u(false);
            if (i10 >= 0) {
                try {
                    if (i10 < gVar.f11064a.size()) {
                        h hVarO = gVar.o(i10);
                        if (i11 <= hVarO.f11076c + hVarO.d().f11098b && i11 >= 0) {
                            boolean z4 = gVar.n().A(i10, i11).f11056a == i12;
                            gVar.E(false);
                            z = z4;
                        }
                        if (z) {
                            return;
                        }
                    }
                    if (z) {
                    }
                } finally {
                    gVar.E(false);
                }
            } else if (z) {
            }
        }
        this.f8713g = this.g1.f11082d.a();
    }

    public final void E() {
        C(getCursor().f11082d.f11057b, getCursor().f11082d.f11058c);
    }

    public final void F(x xVar) {
        D();
        mb.b selectingTarget = getSelectingTarget();
        xVar.getClass();
        ue.d.e(selectingTarget, "pos");
        mb.b bVar = (mb.b) xVar.f15057a.f(this, selectingTarget);
        mb.b bVar2 = this.f8713g;
        j0(bVar2.f11057b, bVar2.f11058c, bVar.f11057b, bVar.f11058c, 7, false);
        if (xVar == x.f15048i) {
            this.f8732q1.j(0.0f, -getHeight(), true);
        } else if (xVar == x.f15049j) {
            this.f8732q1.j(0.0f, getHeight(), true);
        }
        if (this.g1.f11081c.a().equals(this.f8713g)) {
            E();
        } else {
            mb.b bVar3 = this.g1.f11081c;
            C(bVar3.f11057b, bVar3.f11058c);
        }
    }

    public final ExtractedText G(ExtractedTextRequest extractedTextRequest) {
        getProps().getClass();
        getProps().getClass();
        j cursor = getCursor();
        ExtractedText extractedText = new ExtractedText();
        int i10 = cursor.f11081c.f11056a;
        int i11 = cursor.f11082d.f11056a;
        if (extractedTextRequest.hintMaxChars == 0) {
            extractedTextRequest.hintMaxChars = this.C1.f14916g;
        }
        int i12 = extractedTextRequest.hintMaxChars;
        int iMin = i12 < i10 ? Math.min(i10 - (i12 / 2), i10) : 0;
        extractedText.text = this.f8714h.c(iMin, extractedTextRequest.hintMaxChars + iMin, extractedTextRequest.flags);
        extractedText.startOffset = iMin;
        extractedText.selectionStart = i10 - iMin;
        extractedText.selectionEnd = i11 - iMin;
        qb.a keyMetaStates = getKeyMetaStates();
        if (keyMetaStates.b() && !keyMetaStates.a()) {
            extractedText.flags |= 2;
        }
        return extractedText;
    }

    public final long H(float f10, float f11) {
        eb.j jVarN = this.f8719j.n(f10 - S(), f11);
        return sb.h.g(jVarN.f4863a, jVarN.f4864b);
    }

    public final long I(float f10, float f11) {
        float fMax = Math.max(0.0f, f11);
        this.F1.getClass();
        return H(f10 + getOffsetX(), fMax + getOffsetY());
    }

    public final int J(int i10) {
        int lineSpacingPixels = getLineSpacingPixels();
        Paint.FontMetricsInt fontMetricsInt = this.F1.r;
        return (((i10 + 1) * Math.max(1, (fontMetricsInt.descent - fontMetricsInt.ascent) + lineSpacingPixels)) - fontMetricsInt.descent) - (lineSpacingPixels / 2);
    }

    public final int K(int i10) {
        return (i10 + 1) * getRowHeight();
    }

    public final int L(int i10) {
        return (getLineSpacingPixels() / 2) + (getRowHeight() * i10);
    }

    public final void M(boolean z) {
        j cursor = getCursor();
        if (!z || cursor.a()) {
            String strY = y();
            g text = getText();
            int tabWidth = getTabWidth();
            text.b();
            for (int i10 = cursor.f11081c.f11057b; i10 <= cursor.f11082d.f11057b; i10++) {
                long jA = mb.k.a(text.o(i10));
                int i11 = (int) (jA >> 32);
                int i12 = (int) (jA & 4294967295L);
                int i13 = (i12 * tabWidth) + i11;
                int i14 = i11 + i12;
                int i15 = tabWidth - (i13 % tabWidth);
                if (i11 > 0 && i12 > 0) {
                    if (i15 == 0) {
                        i15 = tabWidth;
                    }
                    text.w(i10, 0, bf.h.P((i15 + i13) / tabWidth, strY), i10, i14);
                } else if (i15 == tabWidth) {
                    text.r(i10, i14, strY);
                } else {
                    text.r(i10, i14, bf.h.P(i15, " "));
                }
            }
            text.k();
        }
    }

    public final boolean N() {
        if (!this.G || this.N) {
            return false;
        }
        O();
        return true;
    }

    public final void O() {
        this.f8725m1.getClass();
    }

    public final boolean P() {
        this.C1.getClass();
        return this.K || this.L;
    }

    public final boolean Q(float f10, float f11) {
        long jI = I(f10, f11);
        o oVarD = this.F1.d(this.f8719j.l(this.f8716h1.l((int) (jI >> 32), (int) (jI & 4294967295L))));
        eb.k kVar = new eb.k(oVarD, new eb.i());
        oVarD.k(kVar, true);
        float f12 = kVar.f4865a;
        float fS = S();
        float offsetX = getOffsetX() + f10;
        return offsetX >= fS && offsetX <= f12 + fS;
    }

    public final float R() {
        float fMax = 0.0f;
        if (!this.V) {
            return 0.0f;
        }
        int i10 = 0;
        for (int lineCount = getLineCount(); lineCount > 0; lineCount /= 10) {
            i10++;
        }
        float[] fArrF = sb.h.f(19);
        this.F1.f14963c.getTextWidths("0 1 2 3 4 5 6 7 8 9", fArrF);
        sb.h.i(fArrF);
        for (int i11 = 0; i11 < 19; i11 += 2) {
            fMax = Math.max(fMax, fArrF[i11]);
        }
        return (fMax * i10) + this.C;
    }

    public final float S() {
        if (!this.V) {
            return this.f8731q * 5.0f;
        }
        float fR = R() + this.f8734s + this.f8736t + this.r;
        this.F1.z();
        return fR + 0;
    }

    public final void T(x xVar, boolean z) {
        if (z) {
            F(xVar);
        } else {
            U(xVar);
        }
    }

    public final void U(x xVar) {
        mb.b bVarA;
        if (this.g1.a()) {
            if (xVar == x.f15044e) {
                mb.b bVar = this.g1.f11081c;
                h0(bVar.f11057b, bVar.f11058c, 7, true);
                return;
            } else if (xVar == x.f15045f) {
                mb.b bVar2 = this.g1.f11082d;
                h0(bVar2.f11057b, bVar2.f11058c, 7, true);
                return;
            }
        }
        int iOrdinal = xVar.f15058b.ordinal();
        if (iOrdinal == 0) {
            bVarA = this.g1.f11081c.a();
        } else if (iOrdinal != 1) {
            D();
            bVarA = this.f8713g;
        } else {
            bVarA = this.g1.f11082d.a();
        }
        ue.d.e(bVarA, "pos");
        mb.b bVar3 = (mb.b) xVar.f15057a.f(this, bVarA);
        if (xVar == x.f15048i) {
            this.f8732q1.j(0.0f, -getHeight(), true);
        } else if (xVar == x.f15049j) {
            this.f8732q1.j(0.0f, getHeight(), true);
        }
        h0(bVar3.f11057b, bVar3.f11058c, 7, true);
    }

    public final void V() {
        ExtractedTextRequest extractedTextRequest = this.f8745x1;
        if (extractedTextRequest != null) {
            this.f8712f1.updateExtractedText(this, this.f8745x1.token, G(extractedTextRequest));
        }
        p0();
        o0();
        if (this.f8714h.f14933b.a()) {
            c0();
        }
    }

    public final void W(int i10) {
        this.f8717i.a(new db.x(this, i10));
        getCursorRange();
    }

    public final void X() {
        ClipData primaryClip;
        String strA;
        f fVar;
        try {
            if (!this.f8710e1.hasPrimaryClip() || (primaryClip = this.f8710e1.getPrimaryClip()) == null || (strA = sb.h.a(primaryClip)) == null || (fVar = this.f8714h) == null) {
                return;
            }
            fVar.commitText(strA, 1);
            this.C1.getClass();
            V();
        } catch (Exception e7) {
            Toast.makeText(getContext(), e7.toString(), 0).show();
        }
    }

    public final void Y(Runnable runnable, long j10) {
        sb.c.f14469a.postDelayed(new tb.c(this, runnable, 1), j10);
    }

    public final void Z(Runnable runnable) {
        sb.c.f14469a.post(new tb.c(this, runnable, 0));
    }

    public final void a0() {
        g gVar = this.f8716h1;
        mb.w wVar = gVar.f11072i;
        if (wVar.f11126b) {
            int i10 = wVar.f11130f;
            ArrayList arrayList = wVar.f11125a;
            if (i10 < arrayList.size() && !wVar.f11131g) {
                wVar.f11131g = true;
                ((q) arrayList.get(wVar.f11130f)).c(gVar);
                wVar.f11130f++;
                wVar.f11131g = false;
            }
        }
        V();
    }

    @Override // mb.i
    public final void b(g gVar) {
        this.C1.getClass();
        ((dc.c) this.f8748z1).d();
        this.M = this.g1.f11081c.a().equals(this.f8713g);
    }

    public final void b0() {
        if (this.X0) {
            requestLayout();
        }
    }

    @Override // mb.i
    public final void c(g gVar, int i10, int i11, int i12, int i13, CharSequence charSequence) {
        s4.a aVar;
        int i14;
        b bVar = this.E1;
        androidx.room.s sVar = bVar.f19112a;
        if (i10 != i12) {
            int i15 = i12 - i10;
            a0.n nVar = (a0.n) sVar.f2427c;
            if (i15 == 1) {
                if (i10 >= 0) {
                    int i16 = nVar.f46b;
                    if (i10 <= i16) {
                        nVar.a(i16 + 1);
                        int[] iArr = nVar.f45a;
                        int i17 = nVar.f46b;
                        if (i10 != i17) {
                            je.i.e0(i10 + 1, i10, iArr, iArr, i17);
                        }
                        iArr[i10] = 0;
                        nVar.f46b++;
                    }
                } else {
                    nVar.getClass();
                }
                throw new IndexOutOfBoundsException("Index must be between 0 and size");
            }
            int[] iArr2 = new int[i15];
            nVar.getClass();
            if (i10 < 0 || i10 > (i14 = nVar.f46b)) {
                throw new IndexOutOfBoundsException("");
            }
            if (i15 != 0) {
                nVar.a(i14 + i15);
                int[] iArr3 = nVar.f45a;
                int i18 = nVar.f46b;
                if (i10 != i18) {
                    je.i.e0(i10 + i15, i10, iArr3, iArr3, i18);
                }
                je.i.g0(i10, 0, iArr2, iArr3, 12);
                nVar.f46b += i15;
            }
            Iterator it = ((ArrayList) sVar.f2428d).iterator();
            while (it.hasNext()) {
                yb.a aVar2 = (yb.a) it.next();
                int i19 = aVar2.f19109a;
                if (i19 > i10) {
                    aVar2.f19109a = i19 + i15;
                }
            }
        } else {
            sVar.getClass();
        }
        if (Build.VERSION.SDK_INT >= 29 && (aVar = bVar.f19113b) != null) {
            Iterator it2 = ((ArrayList) aVar.f14294c).iterator();
            while (it2.hasNext()) {
                yb.c cVar = (yb.c) it2.next();
                int i20 = cVar.f19114a;
                if (i20 == i10) {
                    cVar.f19116c = true;
                } else if (i20 > i10) {
                    cVar.f19114a = (i12 - i10) + i20;
                }
            }
        }
        this.F1.C();
        this.f8711f.getClass();
        mb.b bVarA = this.f8716h1.n().A(i10, i11);
        mb.b bVarA2 = this.f8716h1.n().A(i12, i13);
        this.f8719j.c(gVar, i10, i11, i12, i13, charSequence);
        l lVar = this.F1;
        lVar.c(i10, i12, lVar.z, false);
        s();
        this.f8725m1.getClass();
        u uVar = this.f8732q1;
        if (uVar.m()) {
            uVar.f15030q = 0L;
            uVar.f15016a.invalidate();
        }
        if (this.G && !this.g1.a() && !this.f8714h.f14933b.a() && this.S == 0) {
            ((dc.c) this.f8748z1).c();
            ((dc.c) this.f8748z1).e();
        }
        this.f8713g = this.M ? this.g1.f11081c.a() : this.g1.f11082d.a();
        this.f8717i.a(new db.d(this, 2, bVarA, bVarA2, charSequence, this.f8716h1.f11072i.f11131g));
        W(1);
        bVarA.a();
        bVarA2.a();
        this.E = false;
        E();
        n0();
    }

    public final void c0() {
        f fVar = this.f8714h;
        if (fVar != null) {
            g text = fVar.f14932a.getText();
            while (text.f11068e > 0) {
                text.k();
            }
            mb.d dVar = fVar.f14933b;
            dVar.f11063c = -1;
            dVar.f11061a = -1;
            dVar.f11062b = false;
            fVar.f14934c = false;
        }
        InputMethodManager inputMethodManager = this.f8712f1;
        if (inputMethodManager != null) {
            inputMethodManager.restartInput(this);
        }
    }

    @Override // android.view.View
    public final int computeHorizontalScrollExtent() {
        return 0;
    }

    @Override // android.view.View
    public final int computeHorizontalScrollOffset() {
        return Math.max(0, Math.min(getScrollMaxX(), getOffsetX()));
    }

    @Override // android.view.View
    public final int computeHorizontalScrollRange() {
        return getScrollMaxX();
    }

    @Override // android.view.View
    public final void computeScroll() {
        tb.m mVar = this.f8732q1.f15017b;
        boolean zComputeScrollOffset = mVar.f14985b.computeScrollOffset();
        if (zComputeScrollOffset) {
            mVar.a();
        }
        if (zComputeScrollOffset) {
            OverScroller overScroller = mVar.f14985b;
            if (!overScroller.isFinished() && (overScroller.getStartX() != overScroller.getFinalX() || overScroller.getStartY() != overScroller.getFinalY())) {
                this.H1 = overScroller.getFinalX();
                this.I1 = overScroller.getFinalY();
                this.K1 = ((float) Math.abs(overScroller.getStartX() - overScroller.getFinalX())) > getDpUnit() * 5.0f;
                this.J1 = ((float) Math.abs(overScroller.getStartY() - overScroller.getFinalY())) > getDpUnit() * 5.0f;
            }
            if (overScroller.getCurrX() > 0 || this.H1 > 0.0f || !this.f8743w1.isFinished() || !this.K1) {
                int scrollMaxX = getScrollMaxX();
                if (overScroller.getCurrX() >= scrollMaxX && this.H1 >= scrollMaxX && this.f8743w1.isFinished() && this.K1) {
                    this.f8743w1.onAbsorb((int) overScroller.getCurrVelocity());
                    this.f8732q1.f15025j = true;
                }
            } else {
                this.f8743w1.onAbsorb((int) overScroller.getCurrVelocity());
                this.f8732q1.f15025j = false;
            }
            if (overScroller.getCurrY() > 0 || this.I1 > 0.0f || !this.f8741v1.isFinished() || !this.J1) {
                int scrollMaxY = getScrollMaxY();
                if (overScroller.getCurrY() >= scrollMaxY && this.I1 >= scrollMaxY && this.f8741v1.isFinished() && this.J1) {
                    this.f8741v1.onAbsorb((int) overScroller.getCurrVelocity());
                    this.f8732q1.f15024i = true;
                }
            } else {
                this.f8741v1.onAbsorb((int) overScroller.getCurrVelocity());
                this.f8732q1.f15024i = false;
            }
            postInvalidateOnAnimation();
        }
    }

    @Override // android.view.View
    public final int computeVerticalScrollExtent() {
        return 0;
    }

    @Override // android.view.View
    public final int computeVerticalScrollOffset() {
        return Math.max(0, Math.min(getScrollMaxY(), getOffsetY()));
    }

    @Override // android.view.View
    public final int computeVerticalScrollRange() {
        return getScrollMaxY();
    }

    @Override // android.view.View
    public final AccessibilityNodeInfo createAccessibilityNodeInfo() {
        AccessibilityNodeInfo accessibilityNodeInfoCreateAccessibilityNodeInfo = super.createAccessibilityNodeInfo();
        if (isEnabled()) {
            int i10 = this.C1.f14917h;
            if (i10 > 0) {
                accessibilityNodeInfoCreateAccessibilityNodeInfo.setEditable(N());
                j jVar = this.g1;
                accessibilityNodeInfoCreateAccessibilityNodeInfo.setTextSelection(jVar.f11081c.f11056a, jVar.f11082d.f11056a);
                accessibilityNodeInfoCreateAccessibilityNodeInfo.setInputType(1);
                accessibilityNodeInfoCreateAccessibilityNodeInfo.setMultiLine(true);
                g text = getText();
                CharSequence charSequenceSubSequence = text;
                if (i10 <= 0) {
                    throw new IllegalArgumentException("size must be bigger than 0");
                }
                if (text != null) {
                    int i11 = text.f11067d;
                    charSequenceSubSequence = text;
                    if (i11 > i10) {
                        int i12 = i10 - 1;
                        if (Character.isHighSurrogate(text.charAt(i12)) && Character.isLowSurrogate(text.charAt(i10))) {
                            i10 = i12;
                        }
                        charSequenceSubSequence = text.subSequence(0, i10);
                    }
                }
                accessibilityNodeInfoCreateAccessibilityNodeInfo.setText(((g) charSequenceSubSequence).toString());
                accessibilityNodeInfoCreateAccessibilityNodeInfo.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_COPY);
                accessibilityNodeInfoCreateAccessibilityNodeInfo.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_CUT);
                accessibilityNodeInfoCreateAccessibilityNodeInfo.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_PASTE);
                accessibilityNodeInfoCreateAccessibilityNodeInfo.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_SET_TEXT);
            }
            accessibilityNodeInfoCreateAccessibilityNodeInfo.setLongClickable(true);
            int scrollMaxY = getScrollMaxY();
            if (scrollMaxY > 0) {
                accessibilityNodeInfoCreateAccessibilityNodeInfo.setScrollable(true);
                int offsetY = getOffsetY();
                if (offsetY > 0) {
                    accessibilityNodeInfoCreateAccessibilityNodeInfo.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_BACKWARD);
                    if (Build.VERSION.SDK_INT >= 23) {
                        accessibilityNodeInfoCreateAccessibilityNodeInfo.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_UP);
                    }
                }
                if (offsetY < scrollMaxY) {
                    accessibilityNodeInfoCreateAccessibilityNodeInfo.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_FORWARD);
                    if (Build.VERSION.SDK_INT >= 23) {
                        accessibilityNodeInfoCreateAccessibilityNodeInfo.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_DOWN);
                    }
                }
            }
        }
        return accessibilityNodeInfoCreateAccessibilityNodeInfo;
    }

    public final void d0() {
        i0(0, 0, getLineCount() - 1, getText().o(getLineCount() - 1).f11076c);
    }

    @Override // android.view.View
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        int x10 = (int) motionEvent.getX();
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f8724m = x10;
            if (this.f8737t0) {
                getParent().requestDisallowInterceptTouchEvent(true);
            }
        } else if (action == 2) {
            int i10 = x10 - this.f8724m;
            if (this.f8737t0 && !this.f8732q1.g() && ((i10 > 0 && getScroller().f14985b.getCurrX() == 0) || (i10 < 0 && getScroller().f14985b.getCurrX() == getScrollMaxX()))) {
                getParent().requestDisallowInterceptTouchEvent(false);
            }
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public final void e0(int i10, int i11) {
        mb.o oVarD = sb.h.d(getText(), i10, i11, this.C1.f14924q);
        mb.b bVar = oVarD.f11102a;
        int i12 = bVar.f11057b;
        int i13 = bVar.f11058c;
        mb.b bVar2 = oVarD.f11103b;
        j0(i12, i13, bVar2.f11057b, bVar2.f11058c, 5, true);
    }

    public final void f0(float f10, float f11) {
        if (f10 < 0.0f || f11 < 0.0f) {
            throw new IllegalArgumentException("margin can not be under zero");
        }
        this.f8734s = f10;
        this.f8736t = f11;
        b0();
        invalidate();
    }

    public final void g0(int i10, int i11) {
        h0(i10, i11, 0, true);
    }

    @Override // android.view.View
    public CharSequence getAccessibilityClassName() {
        return CodeEditor.class.getName();
    }

    public int getBlockIndex() {
        return this.l;
    }

    public float getBlockLineWidth() {
        return this.f8742w;
    }

    public ClipboardManager getClipboardManager() {
        return this.f8710e1;
    }

    public zb.a getColorScheme() {
        return this.f8720j1;
    }

    public int getCurrentCursorBlock() {
        return this.l;
    }

    public j getCursor() {
        return this.g1;
    }

    public cc.a getCursorAnimator() {
        return this.f8748z1;
    }

    public d getCursorBlink() {
        return this.B1;
    }

    public mb.o getCursorRange() {
        j jVar = this.g1;
        return new mb.o(jVar.f11081c.a(), jVar.f11082d.a());
    }

    public cc.b getDiagnosticIndicatorStyle() {
        return this.f8727n1;
    }

    public ib.a getDiagnostics() {
        return null;
    }

    public float getDividerMarginLeft() {
        return this.f8734s;
    }

    public float getDividerMarginRight() {
        return this.f8736t;
    }

    public float getDividerWidth() {
        return this.r;
    }

    public float getDpUnit() {
        return this.f8731q;
    }

    public int getEdgeEffectColor() {
        return this.f8741v1.getColor();
    }

    public boolean getEditable() {
        return this.G;
    }

    public gb.b getEditorLanguage() {
        return this.f8725m1;
    }

    public u getEventHandler() {
        return this.f8732q1;
    }

    public Bundle getExtraArguments() {
        return this.D1;
    }

    public int getFirstVisibleLine() {
        try {
            return this.f8719j.p(getFirstVisibleRow());
        } catch (IndexOutOfBoundsException unused) {
            return 0;
        }
    }

    public int getFirstVisibleRow() {
        return Math.max(0, getOffsetY() / getRowHeight());
    }

    public String getFormatTip() {
        return this.f8723l1;
    }

    public eb.c getGraphPaint() {
        return this.F1.f14967g;
    }

    public e getHandleStyle() {
        return this.A1;
    }

    public jb.b getHighlightTexts() {
        return null;
    }

    public EdgeEffect getHorizontalEdgeEffect() {
        return this.f8743w1;
    }

    @Override // android.view.View
    public Drawable getHorizontalScrollbarThumbDrawable() {
        return this.F1.f14977s;
    }

    @Override // android.view.View
    public Drawable getHorizontalScrollbarTrackDrawable() {
        return this.F1.f14978t;
    }

    public List<Object> getInlayHintRenderers() {
        return new ArrayList(this.N1.values());
    }

    public kb.a getInlayHints() {
        return null;
    }

    public InputMethodManager getInputMethodManager() {
        return this.f8712f1;
    }

    public int getInputType() {
        return this.f8726n;
    }

    public cc.d getInsertHandleDescriptor() {
        return this.f8708d1;
    }

    public float getInsertSelectionWidth() {
        return this.f8740v;
    }

    public qb.a getKeyMetaStates() {
        return (qb.a) this.f8701a.f10287c;
    }

    public int getLastVisibleLine() {
        try {
            return this.f8719j.p(getLastVisibleRow());
        } catch (IndexOutOfBoundsException unused) {
            return getLineCount() - 1;
        }
    }

    public int getLastVisibleRow() {
        return Math.max(0, Math.min(this.f8719j.a() - 1, (getHeight() + getOffsetY()) / getRowHeight()));
    }

    public wb.d getLayout() {
        return this.f8719j;
    }

    public cc.d getLeftHandleDescriptor() {
        return this.f8704b1;
    }

    public int getLineCount() {
        return this.f8716h1.f11064a.size();
    }

    public float getLineInfoTextSize() {
        return this.z;
    }

    public Paint.Align getLineNumberAlign() {
        return this.f8733r1;
    }

    public float getLineNumberMarginLeft() {
        return this.C;
    }

    public Paint.FontMetricsInt getLineNumberMetrics() {
        return this.F1.A;
    }

    public cc.c getLineNumberTipTextProvider() {
        return this.f8722k1;
    }

    public m getLineSeparator() {
        return this.L1;
    }

    public float getLineSpacingExtra() {
        return this.B;
    }

    public float getLineSpacingMultiplier() {
        return this.A;
    }

    public int getLineSpacingPixels() {
        Paint.FontMetricsInt fontMetricsInt = this.F1.r;
        return (((int) (((this.A - 1.0f) * (fontMetricsInt.descent - fontMetricsInt.ascent)) + this.B)) / 2) * 2;
    }

    public int getLnPanelPosition() {
        return this.P;
    }

    public int getLnPanelPositionMode() {
        return this.R;
    }

    public int getNonPrintablePaintingFlags() {
        return this.f8729p;
    }

    public int getOffsetX() {
        return this.f8732q1.f15017b.f14985b.getCurrX();
    }

    public int getOffsetY() {
        return this.f8732q1.f15017b.f14985b.getCurrY();
    }

    public eb.c getOtherPaint() {
        return this.F1.f14963c;
    }

    public tb.e getProps() {
        return this.C1;
    }

    public b getRenderContext() {
        return this.E1;
    }

    public l getRenderer() {
        return this.F1;
    }

    public cc.d getRightHandleDescriptor() {
        return this.f8706c1;
    }

    public int getRowHeight() {
        Paint.FontMetricsInt fontMetricsInt = this.F1.r;
        return Math.max(1, getLineSpacingPixels() + (fontMetricsInt.descent - fontMetricsInt.ascent));
    }

    public int getRowHeightOfText() {
        Paint.FontMetricsInt fontMetricsInt = this.F1.r;
        return fontMetricsInt.descent - fontMetricsInt.ascent;
    }

    public int getScrollMaxX() {
        return (int) Math.max(0.0f, (S() + this.f8719j.r()) - (getWidth() / 2.0f));
    }

    public int getScrollMaxY() {
        float height;
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        int iD = this.f8719j.d();
        if (layoutParams == null || layoutParams.height == -2) {
            height = getHeight();
        } else {
            height = (1.0f - this.D) * getHeight();
        }
        return Math.max(0, iD - ((int) height));
    }

    public tb.m getScroller() {
        return this.f8732q1.f15017b;
    }

    public r getSearcher() {
        return this.f8747y1;
    }

    public mb.b getSelectingTarget() {
        return this.g1.f11081c.a().equals(this.f8713g) ? this.g1.f11082d.a() : this.g1.f11081c.a();
    }

    public ac.b getSnippetController() {
        return this.M1;
    }

    public jb.d getStyles() {
        return null;
    }

    public int getTabWidth() {
        return this.f8721k;
    }

    public g getText() {
        return this.f8716h1;
    }

    public float getTextBorderWidth() {
        return this.f8744x;
    }

    public float getTextLetterSpacing() {
        return this.F1.f14962b.getLetterSpacing();
    }

    public eb.c getTextPaint() {
        return this.F1.f14962b;
    }

    public float getTextScaleX() {
        return this.F1.f14962b.getTextScaleX();
    }

    public float getTextSizePx() {
        return this.F1.f14962b.getTextSize();
    }

    public Typeface getTypefaceLineNumber() {
        return this.F1.f14963c.getTypeface();
    }

    public Typeface getTypefaceText() {
        return this.F1.f14962b.getTypeface();
    }

    public EdgeEffect getVerticalEdgeEffect() {
        return this.f8741v1;
    }

    public float getVerticalExtraSpaceFactor() {
        return this.D;
    }

    @Override // android.view.View
    public Drawable getVerticalScrollbarThumbDrawable() {
        return this.F1.f14979u;
    }

    @Override // android.view.View
    public Drawable getVerticalScrollbarTrackDrawable() {
        return this.F1.f14980v;
    }

    public final void h0(int i10, int i11, int i12, boolean z) {
        int i13;
        ((dc.c) this.f8748z1).d();
        if (i11 > 0 && Character.isHighSurrogate(this.f8716h1.c(i10, i11 - 1)) && (i13 = i11 + 1) <= this.f8716h1.o(i10).f11076c) {
            i11 = i13;
        }
        j jVar = this.g1;
        jVar.f11081c = jVar.f11080b.A(i10, i11).a();
        jVar.f11082d = jVar.f11080b.A(i10, i11).a();
        if (this.M0) {
            this.l = -1;
        }
        n0();
        p0();
        if (this.G && !this.f8732q1.g() && this.S == 0) {
            ((dc.c) this.f8748z1).c();
            ((dc.c) this.f8748z1).e();
        }
        this.f8713g = this.g1.f11082d.a();
        this.E1.a();
        if (z) {
            C(i10, i11);
        } else {
            invalidate();
        }
        W(i12);
    }

    public final void i0(int i10, int i11, int i12, int i13) {
        j0(i10, i11, i12, i13, 0, true);
    }

    @Override // android.view.View
    public final boolean isHorizontalScrollBarEnabled() {
        return this.P0;
    }

    @Override // android.view.View
    public final boolean isVerticalScrollBarEnabled() {
        return this.O0;
    }

    @Override // mb.i
    public final void j(g gVar) {
        this.E = true;
        this.f8719j.j(gVar);
    }

    public final void j0(int i10, int i11, int i12, int i13, int i14, boolean z) {
        int i15;
        int i16;
        requestFocus();
        int iL = getText().l(i10, i11);
        int iL2 = getText().l(i12, i13);
        if (iL == iL2) {
            h0(i10, i11, i14, z);
            return;
        }
        if (iL > iL2) {
            j0(i12, i13, i10, i11, i14, z);
            return;
        }
        ((dc.c) this.f8748z1).a();
        this.g1.a();
        if (i11 > 0) {
            if (Character.isHighSurrogate(this.f8716h1.c(i10, i11 - 1)) && (i16 = i11 + 1) <= this.f8716h1.o(i10).f11076c) {
                i11 = i16;
            }
        }
        if (i13 > 0) {
            if (Character.isHighSurrogate(this.f8716h1.c(i12, i13 - 1)) && (i15 = i13 + 1) <= this.f8716h1.o(i12).f11076c) {
                i13 = i15;
            }
        }
        j jVar = this.g1;
        jVar.f11081c = jVar.f11080b.A(i10, i11).a();
        j jVar2 = this.g1;
        jVar2.f11082d = jVar2.f11080b.A(i12, i13).a();
        n0();
        p0();
        this.E1.a();
        if (!this.g1.f11081c.a().equals(this.f8713g) && !this.g1.f11082d.a().equals(this.f8713g)) {
            this.f8713g = this.g1.f11082d.a();
        }
        if (!z) {
            invalidate();
        } else if (i14 == 6) {
            C(i10, i11);
            this.f8728o1 = 0L;
            C(i12, i13);
        } else {
            C(i12, i13);
        }
        W(i14);
    }

    @Override // mb.i
    public final void k(g gVar, int i10, int i11, int i12, int i13, StringBuilder sb2) {
        s4.a aVar;
        int iK0;
        b bVar = this.E1;
        androidx.room.s sVar = bVar.f19112a;
        if (i10 != i12) {
            ((a0.n) sVar.f2427c).c(i10, i12);
            ArrayList arrayList = (ArrayList) sVar.f2428d;
            ue.d.e(arrayList, "<this>");
            int iK02 = je.k.k0(arrayList);
            int i14 = 0;
            if (iK02 >= 0) {
                int i15 = 0;
                while (true) {
                    Object obj = arrayList.get(i14);
                    yb.a aVar2 = (yb.a) obj;
                    ue.d.e(aVar2, "it");
                    int i16 = aVar2.f19109a;
                    if (i10 > i16 || i16 > i12) {
                        if (i15 != i14) {
                            arrayList.set(i15, obj);
                        }
                        i15++;
                    }
                    if (i14 == iK02) {
                        break;
                    } else {
                        i14++;
                    }
                }
                i14 = i15;
            }
            if (i14 < arrayList.size() && i14 <= (iK0 = je.k.k0(arrayList))) {
                while (true) {
                    arrayList.remove(iK0);
                    if (iK0 == i14) {
                        break;
                    } else {
                        iK0--;
                    }
                }
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                yb.a aVar3 = (yb.a) it.next();
                int i17 = aVar3.f19109a;
                if (i17 > i12) {
                    aVar3.f19109a = i17 - (i12 - i10);
                }
            }
        } else {
            sVar.getClass();
        }
        if (Build.VERSION.SDK_INT >= 29 && (aVar = bVar.f19113b) != null) {
            ArrayList arrayList2 = new ArrayList();
            ArrayList arrayList3 = (ArrayList) aVar.f14294c;
            Iterator it2 = arrayList3.iterator();
            while (it2.hasNext()) {
                yb.c cVar = (yb.c) it2.next();
                int i18 = cVar.f19114a;
                if (i18 == i10) {
                    cVar.f19116c = true;
                } else if (i10 + 1 <= i18 && i18 <= i12) {
                    arrayList2.add(cVar);
                    cVar.f19115b.discardDisplayList();
                } else if (i18 > i12) {
                    cVar.f19114a = i18 - (i12 - i10);
                }
            }
            arrayList3.removeAll(je.j.o0(arrayList2));
            ((Stack) aVar.f14295d).addAll(arrayList2);
        }
        this.F1.C();
        this.f8711f.getClass();
        mb.b bVarA = this.f8716h1.n().A(i10, i11);
        mb.b bVarA2 = bVarA.a();
        bVarA2.f11058c = i13;
        bVarA2.f11057b = i12;
        bVarA2.f11056a = sb2.length() + bVarA.f11056a;
        this.f8719j.k(gVar, i10, i11, i12, i13, sb2);
        l lVar = this.F1;
        lVar.c(i10, i10 + 1, lVar.z, false);
        s();
        if (this.G && !this.g1.a() && !this.E && !this.f8714h.f14933b.a() && this.S == 0) {
            ((dc.c) this.f8748z1).c();
            ((dc.c) this.f8748z1).e();
        }
        this.f8725m1.getClass();
        this.f8713g = this.M ? this.g1.f11081c.a() : this.g1.f11082d.a();
        this.f8717i.a(new db.d(this, 3, bVarA, bVarA2, sb2, this.f8716h1.f11072i.f11131g));
        W(1);
        if (this.E) {
            return;
        }
        n0();
        E();
        u uVar = this.f8732q1;
        if (uVar.m()) {
            uVar.f15030q = 0L;
            uVar.f15016a.invalidate();
        }
    }

    public final void k0(boolean z, boolean z4) {
        if (this.H == z && this.S0 == z4) {
            return;
        }
        this.H = z;
        this.S0 = z4;
        b0();
        x(true);
        if (!z) {
            this.E1.a();
        }
        invalidate();
    }

    public final void l0(Class cls, db.q qVar) {
        this.f8717i.f(cls, qVar);
    }

    public final void m0() {
        mb.o oVar;
        int i10;
        g gVar = this.f8716h1;
        mb.w wVar = gVar.f11072i;
        if (!wVar.f11126b || (i10 = wVar.f11130f) <= 0 || wVar.f11131g) {
            oVar = null;
        } else {
            wVar.f11131g = true;
            q qVar = (q) wVar.f11125a.get(i10 - 1);
            qVar.d(gVar);
            wVar.f11130f--;
            wVar.f11131g = false;
            oVar = qVar.f11108a;
        }
        if (oVar != null) {
            try {
                mb.b bVar = oVar.f11102a;
                int i11 = bVar.f11057b;
                int i12 = bVar.f11058c;
                mb.b bVar2 = oVar.f11103b;
                j0(i11, i12, bVar2.f11057b, bVar2.f11058c, 1, true);
            } catch (IndexOutOfBoundsException unused) {
            }
        }
        V();
    }

    public final void n0() {
        o0();
        ExtractedTextRequest extractedTextRequest = this.f8745x1;
        if (extractedTextRequest != null) {
            this.f8712f1.updateExtractedText(this, this.f8745x1.token, G(extractedTextRequest));
        }
        if (this.f8716h1.f11068e > 1 || this.f8714h.f14933b.a()) {
            return;
        }
        p0();
    }

    public final float o0() {
        boolean z;
        mb.b bVar = this.g1.f11082d;
        float[] fArrS = this.f8719j.s(bVar.f11057b, bVar.f11058c);
        float fS = (S() + fArrS[1]) - getOffsetX();
        float offsetY = fArrS[0] - getOffsetY();
        float rowHeight = offsetY - getRowHeight();
        float fJ = J(Math.round(rowHeight / getRowHeight()));
        if (fS < 0.0f) {
            z = false;
            fS = 0.0f;
        } else if (fS > getWidth()) {
            fS = getWidth();
            z = false;
        } else {
            z = true;
        }
        mb.d dVar = this.f8714h.f14933b;
        if (!dVar.f11062b && this.C1.E) {
            CursorAnchorInfo.Builder builder = this.f8739u1;
            builder.reset();
            this.f8718i1.set(getMatrix());
            getLocationOnScreen(new int[2]);
            this.f8718i1.postTranslate(r6[0], r6[1]);
            builder.setMatrix(this.f8718i1);
            j jVar = this.g1;
            builder.setSelectionRange(jVar.f11081c.f11056a, jVar.f11082d.f11056a);
            if (dVar.a()) {
                int i10 = dVar.f11061a;
                builder.setComposingText(i10, this.f8716h1.C(i10, dVar.f11063c));
            }
            builder.setInsertionMarkerLocation(fS, rowHeight, fJ, offsetY, z ? 1 : 2);
            this.f8712f1.updateCursorAnchorInfo(this, builder.build());
        }
        return fS;
    }

    @Override // android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f8717i.a(new db.a(this, 1));
    }

    @Override // android.view.View
    public final boolean onCheckIsTextEditor() {
        return isEnabled() && N();
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.f8732q1.i();
        this.L = false;
        this.K = false;
    }

    @Override // android.view.View
    public final void onCreateContextMenu(ContextMenu contextMenu) {
        super.onCreateContextMenu(contextMenu);
        PointF pointF = this.f8732q1.H;
        if (pointF == null) {
            return;
        }
        long jI = I(pointF.x, pointF.y);
        this.f8717i.a(new db.e(this, contextMenu, this.f8716h1.n().A((int) (jI >> 32), (int) (jI & 4294967295L))));
    }

    @Override // android.view.View
    public final InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        if (!N() || !isEnabled()) {
            return null;
        }
        if (t()) {
            int i10 = this.f8726n;
            if (i10 == 0) {
                i10 = 131073;
            }
            editorInfo.inputType = i10;
        } else {
            editorInfo.inputType = 0;
        }
        editorInfo.initialSelStart = getCursor() != null ? getCursor().f11081c.f11056a : 0;
        editorInfo.initialSelEnd = getCursor() != null ? getCursor().f11082d.f11056a : 0;
        editorInfo.initialCapsMode = this.f8714h.getCursorCapsMode(0);
        this.C1.getClass();
        editorInfo.imeOptions = 301989888;
        this.f8717i.a(new db.a(this, editorInfo));
        f fVar = this.f8714h;
        g text = fVar.f14932a.getText();
        while (text.f11068e > 0) {
            text.k();
        }
        mb.d dVar = fVar.f14933b;
        dVar.f11063c = -1;
        dVar.f11061a = -1;
        dVar.f11062b = false;
        fVar.f14934c = false;
        this.f8716h1.f11068e = 0;
        setExtracting(null);
        return this.f8714h;
    }

    @Override // android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f8717i.a(new db.a(this, 1));
        d dVar = this.B1;
        dVar.f14906c = false;
        removeCallbacks(dVar);
    }

    @Override // android.view.View
    public final boolean onDragEvent(DragEvent dragEvent) {
        f fVar;
        int action = dragEvent.getAction();
        if (action != 1) {
            if (action != 2) {
                if (action != 3) {
                    if (action != 6) {
                        return super.onDragEvent(dragEvent);
                    }
                    this.f8732q1.L = null;
                    postInvalidate();
                    return true;
                }
                u uVar = this.f8732q1;
                mb.b bVar = uVar.L;
                if (bVar == null) {
                    return false;
                }
                uVar.L = null;
                g0(bVar.f11057b, bVar.f11058c);
                String strA = sb.h.a(dragEvent.getClipData());
                if (strA != null && (fVar = this.f8714h) != null) {
                    fVar.commitText(strA, 1);
                    this.C1.getClass();
                    V();
                }
                requestFocus();
                postInvalidate();
                super.onDragEvent(dragEvent);
                return true;
            }
            long jI = I(dragEvent.getX(), dragEvent.getY());
            this.f8732q1.L = getText().n().A((int) (jI >> 32), (int) (jI & 4294967295L));
            postInvalidate();
            this.f8732q1.k(null, dragEvent.getX(), dragEvent.getY());
        }
        return true;
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        l lVar = this.F1;
        lVar.getClass();
        int iSave = canvas.save();
        canvas.translate(lVar.f14975p.getOffsetX(), lVar.f14975p.getOffsetY());
        lVar.G = true;
        try {
            lVar.r(canvas);
            lVar.G = false;
            canvas.restoreToCount(iSave);
            if (!(this.U0 == this.B1.f14905b && this.f8732q1.f15017b.f14985b.isFinished()) && this.f8732q1.f15019d.f16777b.isShowing()) {
                this.U0 = this.B1.f14905b;
                v vVar = this.f8732q1.f15019d;
                Objects.requireNonNull(vVar);
                Z(new db(20, vVar));
            }
        } catch (Throwable th2) {
            lVar.G = false;
            throw th2;
        }
    }

    @Override // android.view.View
    public final void onFocusChanged(boolean z, int i10, Rect rect) {
        super.onFocusChanged(z, i10, rect);
        if (z) {
            d dVar = this.B1;
            boolean z4 = dVar.f14908e > 0;
            dVar.f14906c = z4;
            if (z4) {
                Z(dVar);
            }
        } else {
            d dVar2 = this.B1;
            dVar2.f14906c = false;
            dVar2.f14905b = false;
            u uVar = this.f8732q1;
            if (uVar.m()) {
                uVar.f15030q = 0L;
                uVar.f15016a.invalidate();
            }
            removeCallbacks(this.B1);
        }
        this.f8717i.a(new db.g(this, z));
        invalidate();
    }

    @Override // android.view.View
    public final boolean onGenericMotionEvent(MotionEvent motionEvent) {
        if (motionEvent.isFromSource(8194)) {
            if (motionEvent.getAction() == 9) {
                this.K = true;
            } else if (motionEvent.getAction() == 10) {
                this.K = false;
            }
            if (motionEvent.getActionMasked() == 11 || motionEvent.getActionMasked() == 12) {
                this.L = motionEvent.getButtonState() != 0;
            }
            int action = motionEvent.getAction();
            if (action == 7 || action == 9 || action == 10) {
                this.f8732q1.b(new jd(22), null, motionEvent);
                return true;
            }
        }
        if (motionEvent.getAction() == 8 && motionEvent.isFromSource(2)) {
            kf.d dVar = this.f8701a;
            if (!((qb.a) dVar.f10287c).f13185c) {
                float f10 = -motionEvent.getAxisValue(9);
                float f11 = -motionEvent.getAxisValue(10);
                float f12 = this.f8746y;
                float f13 = this.C1.H;
                float f14 = f11 * f12 * f13;
                float f15 = f10 * f12 * f13;
                qb.a aVar = (qb.a) dVar.f10287c;
                if (aVar.a()) {
                    float f16 = this.C1.B;
                    f14 *= f16;
                    f15 *= f16;
                }
                if (aVar.b()) {
                    float f17 = f15;
                    f15 = f14;
                    f14 = f17;
                }
                this.f8732q1.onScroll(motionEvent, motionEvent, f14, f15);
                return true;
            }
        }
        return super.onGenericMotionEvent(motionEvent);
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        int scrollMaxY = getScrollMaxY();
        accessibilityEvent.setScrollable(scrollMaxY > 0);
        accessibilityEvent.setMaxScrollX(getScrollMaxX());
        accessibilityEvent.setMaxScrollY(scrollMaxY);
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x01b4  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x022b  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x007d  */
    @Override // android.view.View, android.view.KeyEvent.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean onKeyDown(int i10, KeyEvent keyEvent) {
        Boolean boolValueOf;
        int i11;
        String str;
        g gVar;
        int i12;
        int i13;
        boolean zOnKeyDown;
        boolean z;
        char cCharAt;
        int deadChar;
        t tVar;
        boolean z4;
        t tVar2;
        kf.d dVar = this.f8701a;
        qb.a aVar = (qb.a) dVar.f10287c;
        aVar.getClass();
        int keyCode = keyEvent.getKeyCode();
        CodeEditor codeEditor = aVar.f13183a;
        Editable editable = aVar.f13184b;
        aVar.onKeyDown(codeEditor, editable, keyCode, keyEvent);
        aVar.f13185c = keyEvent.isCtrlPressed();
        CodeEditor codeEditor2 = (CodeEditor) dVar.f10286b;
        db.p pVar = codeEditor2.f8717i;
        db.i iVar = new db.i(codeEditor2, keyEvent, 2);
        keyEvent.isCtrlPressed();
        aVar.b();
        aVar.a();
        t tVar3 = new t(codeEditor2, keyEvent, 2);
        if ((pVar.a(iVar) & 2) != 0) {
            return iVar.c(false);
        }
        boolean zB = aVar.b();
        boolean zA = aVar.a();
        boolean zIsCtrlPressed = keyEvent.isCtrlPressed();
        if (dVar.E(i10, keyEvent) && (pVar.a(tVar3) & 2) != 0) {
            return tVar3.c(false) || iVar.c(false);
        }
        if (i10 == 122 || i10 == 123) {
            MetaKeyKeyListener.adjustMetaAfterKeypress(editable);
        } else {
            switch (i10) {
            }
        }
        f fVar = codeEditor2.f8714h;
        j cursor = codeEditor2.getCursor();
        g text = codeEditor2.getText();
        if (i10 != 4) {
            if (i10 == 61) {
                if (codeEditor2.N() && !zA && !zIsCtrlPressed) {
                    codeEditor2.getSnippetController().getClass();
                    if (zB) {
                        j cursor2 = codeEditor2.getCursor();
                        g text2 = codeEditor2.getText();
                        int tabWidth = codeEditor2.getTabWidth();
                        String strY = codeEditor2.y();
                        text2.b();
                        int i14 = cursor2.f11081c.f11057b;
                        while (i14 <= cursor2.f11082d.f11057b) {
                            long jA = mb.k.a(text2.q(i14));
                            j jVar = cursor2;
                            int i15 = (int) (jA >> 32);
                            int i16 = (int) (jA & 4294967295L);
                            int i17 = (i16 * tabWidth) + i15;
                            if (i17 == 0) {
                                i11 = i14;
                                str = strY;
                                gVar = text2;
                            } else {
                                int i18 = i15 + i16;
                                int i19 = i17 % tabWidth;
                                if (i15 <= 0 || i16 <= 0) {
                                    i11 = i14;
                                    str = strY;
                                    gVar = text2;
                                    if (i19 == 0) {
                                        if (i16 > 0) {
                                            i13 = i18;
                                            i12 = 1;
                                        } else {
                                            i12 = tabWidth;
                                            i13 = i18;
                                        }
                                        gVar.h(i11, i13 - i12, i11, i13);
                                    } else {
                                        gVar.h(i11, i18 - i19, i11, i18);
                                    }
                                } else {
                                    if (i19 == 0) {
                                        i19 = tabWidth;
                                    }
                                    i11 = i14;
                                    str = strY;
                                    text2.w(i14, 0, bf.h.P(Math.abs(i17 - i19) / tabWidth, strY), i11, i18);
                                    gVar = text2;
                                }
                            }
                            i14 = i11 + 1;
                            text2 = gVar;
                            cursor2 = jVar;
                            strY = str;
                        }
                        text2.k();
                    } else {
                        j cursor3 = codeEditor2.getCursor();
                        if (cursor3.a()) {
                            codeEditor2.M(true);
                        } else {
                            mb.b bVarA = cursor3.f11081c.a();
                            long jA2 = mb.k.a(codeEditor2.getText().o(bVarA.f11057b));
                            if (bVarA.f11058c <= ((int) (jA2 >> 32)) + ((int) (4294967295L & jA2))) {
                                codeEditor2.M(false);
                            } else if (codeEditor2.f8714h != null && codeEditor2.N()) {
                                if (codeEditor2.f8714h.f14933b.a()) {
                                    codeEditor2.c0();
                                }
                                codeEditor2.f8714h.a(codeEditor2.y());
                            }
                        }
                    }
                }
                boolValueOf = Boolean.valueOf(iVar.c(true));
            } else if (i10 == 62) {
                if (zIsCtrlPressed && !zA) {
                    codeEditor2.f8730p1.h();
                } else if (codeEditor2.N()) {
                    codeEditor2.u(" ", true, true);
                    codeEditor2.V();
                }
                boolValueOf = Boolean.valueOf(iVar.c(true));
            } else if (i10 == 66) {
                j cursor4 = codeEditor2.getCursor();
                g text3 = codeEditor2.getText();
                if (codeEditor2.N()) {
                    String str2 = codeEditor2.getLineSeparator().f11097a;
                    gb.b editorLanguage = codeEditor2.getEditorLanguage();
                    if (zB && !zA && !zIsCtrlPressed) {
                        boolValueOf = Boolean.valueOf(kf.d.P(codeEditor2, cursor4, text3, iVar, tVar3));
                    } else if (!zIsCtrlPressed || zB) {
                        ((gb.a) editorLanguage).getClass();
                        if (cursor4.a()) {
                            codeEditor2.u(str2, true, true);
                        } else {
                            codeEditor2.u(str2, true, true);
                        }
                        codeEditor2.V();
                        boolValueOf = Boolean.valueOf(iVar.c(true));
                    } else if (zA) {
                        int i20 = cursor4.f11081c.a().f11057b;
                        if (i20 == 0) {
                            text3.r(0, 0, str2);
                            codeEditor2.g0(0, 0);
                            codeEditor2.E();
                            boolValueOf = Boolean.valueOf(tVar3.c(true) || iVar.c(true));
                        } else {
                            int i21 = i20 - 1;
                            codeEditor2.g0(i21, text3.o(i21).f11076c);
                            boolValueOf = Boolean.valueOf(kf.d.P(codeEditor2, cursor4, text3, iVar, tVar3));
                        }
                    } else {
                        mb.b bVarA2 = cursor4.f11081c.a().a();
                        codeEditor2.u(str2, true, true);
                        codeEditor2.g0(bVarA2.f11057b, bVarA2.f11058c);
                        codeEditor2.E();
                        boolValueOf = Boolean.valueOf(tVar3.c(true) || iVar.c(true));
                    }
                } else {
                    boolValueOf = Boolean.valueOf(iVar.c(true));
                }
            } else if (i10 == 67) {
                if (codeEditor2.N()) {
                    if (!codeEditor2.g1.a() && zIsCtrlPressed) {
                        codeEditor2.F(x.f15046g);
                        if (codeEditor2.g1.a()) {
                            codeEditor2.A();
                        }
                    } else {
                        codeEditor2.A();
                    }
                    codeEditor2.V();
                }
                boolValueOf = Boolean.valueOf(iVar.c(true));
            } else if (i10 == 92) {
                if (zIsCtrlPressed) {
                    codeEditor2.T(x.f15050k, zB);
                } else {
                    codeEditor2.T(x.f15048i, zB);
                }
                boolValueOf = Boolean.valueOf(iVar.c(true));
            } else if (i10 == 93) {
                if (zIsCtrlPressed) {
                    codeEditor2.T(x.l, zB);
                } else {
                    codeEditor2.T(x.f15049j, zB);
                }
                boolValueOf = Boolean.valueOf(iVar.c(true));
            } else if (i10 == 111) {
                if (cursor.a()) {
                    mb.b bVarA3 = codeEditor2.getProps().f14926t ? cursor.f11082d.a() : cursor.f11081c.a();
                    codeEditor2.h0(bVarA3.f11057b, bVarA3.f11058c, 0, true);
                }
                boolValueOf = Boolean.valueOf(iVar.c(true));
            } else if (i10 == 112) {
                if (codeEditor2.N()) {
                    if (codeEditor2.g1.a()) {
                        codeEditor2.A();
                    } else if (zIsCtrlPressed) {
                        codeEditor2.F(x.f15047h);
                        if (codeEditor2.g1.a()) {
                            codeEditor2.A();
                        }
                    } else {
                        fVar.deleteSurroundingText(0, 1);
                    }
                    codeEditor2.V();
                }
                boolValueOf = Boolean.valueOf(iVar.c(true));
            } else if (i10 == 122) {
                if (zIsCtrlPressed) {
                    codeEditor2.T(x.f15053p, zB);
                } else {
                    codeEditor2.T(codeEditor2.getProps().I ? x.r : x.f15051m, zB);
                }
                boolValueOf = Boolean.valueOf(iVar.c(true));
            } else if (i10 == 123) {
                if (zIsCtrlPressed) {
                    codeEditor2.T(x.f15054q, zB);
                } else {
                    codeEditor2.T(codeEditor2.getProps().I ? x.f15055s : x.f15052n, zB);
                }
                boolValueOf = Boolean.valueOf(iVar.c(true));
            } else if (i10 == 278) {
                codeEditor2.v(true);
                boolValueOf = Boolean.valueOf(iVar.c(true));
            } else if (i10 != 279) {
                switch (i10) {
                    case 19:
                        if (!zIsCtrlPressed) {
                            codeEditor2.T(x.f15042c, zB);
                            boolValueOf = Boolean.valueOf(iVar.c(true));
                            break;
                        } else if (!zB) {
                            codeEditor2.getEventHandler().j(0.0f, -codeEditor2.getRowHeight(), false);
                            boolValueOf = Boolean.valueOf(iVar.c(true));
                            break;
                        } else {
                            mb.b bVarA4 = cursor.f11081c.a();
                            mb.b bVarA5 = cursor.f11082d.a();
                            int i22 = bVarA4.f11057b;
                            if (i22 != 0) {
                                String string = text.o(i22 - 1).toString();
                                text.b();
                                int i23 = bVarA4.f11057b;
                                text.h(i23 - 1, 0, i23, 0);
                                int i24 = bVarA5.f11057b - 1;
                                text.r(i24, text.o(i24).f11076c, codeEditor2.getLineSeparator().f11097a.concat(string));
                                text.k();
                                mb.b bVarA6 = text.n().A(bVarA4.f11057b - 1, bVarA4.f11058c);
                                mb.b bVarA7 = text.n().A(bVarA5.f11057b - 1, bVarA5.f11058c);
                                if (bVarA4.f11056a != bVarA5.f11056a) {
                                    mb.b bVar = codeEditor2.f8713g;
                                    codeEditor2.i0(bVarA6.f11057b, bVarA6.f11058c, bVarA7.f11057b, bVarA7.f11058c);
                                    if (bVar != null) {
                                        if (bVar.equals(bVarA4)) {
                                            codeEditor2.f8713g = bVarA6;
                                        } else {
                                            codeEditor2.f8713g = bVarA7;
                                        }
                                    }
                                } else {
                                    codeEditor2.g0(bVarA6.f11057b, bVarA6.f11058c);
                                }
                                boolValueOf = Boolean.valueOf(iVar.c(true));
                                break;
                            } else {
                                boolValueOf = Boolean.valueOf(iVar.c(true));
                                break;
                            }
                        }
                    case 20:
                        if (!zIsCtrlPressed) {
                            codeEditor2.T(x.f15043d, zB);
                            boolValueOf = Boolean.valueOf(iVar.c(true));
                            break;
                        } else if (!zB) {
                            codeEditor2.getEventHandler().j(0.0f, codeEditor2.getRowHeight(), false);
                            boolValueOf = Boolean.valueOf(iVar.c(true));
                            break;
                        } else {
                            mb.b bVarA8 = cursor.f11081c.a();
                            mb.b bVarA9 = cursor.f11082d.a();
                            int size = text.f11064a.size();
                            int i25 = bVarA9.f11057b;
                            if (i25 != size - 1) {
                                String string2 = text.o(i25 + 1).toString();
                                text.b();
                                int i26 = bVarA9.f11057b;
                                text.h(i26, text.o(i26).f11076c, bVarA9.f11057b + 1, string2.length());
                                text.r(bVarA8.f11057b, 0, string2.concat(codeEditor2.getLineSeparator().f11097a));
                                text.k();
                                mb.b bVarA10 = text.n().A(bVarA8.f11057b + 1, bVarA8.f11058c);
                                mb.b bVarA11 = text.n().A(bVarA9.f11057b + 1, bVarA9.f11058c);
                                if (bVarA8.f11056a != bVarA9.f11056a) {
                                    mb.b bVar2 = codeEditor2.f8713g;
                                    codeEditor2.i0(bVarA10.f11057b, bVarA10.f11058c, bVarA11.f11057b, bVarA11.f11058c);
                                    if (bVar2 != null) {
                                        if (bVar2.equals(bVarA8)) {
                                            codeEditor2.f8713g = bVarA10;
                                        } else {
                                            codeEditor2.f8713g = bVarA11;
                                        }
                                    }
                                } else {
                                    codeEditor2.g0(bVarA10.f11057b, bVarA10.f11058c);
                                }
                                boolValueOf = Boolean.valueOf(iVar.c(true));
                                break;
                            } else {
                                boolValueOf = Boolean.valueOf(iVar.c(true));
                                break;
                            }
                        }
                    case 21:
                        if (zIsCtrlPressed) {
                            codeEditor2.T(x.f15046g, zB);
                        } else {
                            codeEditor2.T(x.f15044e, zB);
                        }
                        boolValueOf = Boolean.valueOf(iVar.c(true));
                        break;
                    case 22:
                        if (zIsCtrlPressed) {
                            codeEditor2.T(x.f15047h, zB);
                        } else {
                            codeEditor2.T(x.f15045f, zB);
                        }
                        boolValueOf = Boolean.valueOf(iVar.c(true));
                        break;
                    default:
                        if (!keyEvent.isCtrlPressed() || keyEvent.isAltPressed()) {
                            g text4 = codeEditor2.getText();
                            j cursor5 = codeEditor2.getCursor();
                            int unicodeChar = keyEvent.getUnicodeChar(MetaKeyKeyListener.getMetaState(editable, keyEvent));
                            if (unicodeChar == 0 || !codeEditor2.N() || unicodeChar == 61184 || unicodeChar == 61185) {
                                zOnKeyDown = super.onKeyDown(i10, keyEvent);
                            } else {
                                if ((Integer.MIN_VALUE & unicodeChar) != 0) {
                                    unicodeChar &= Integer.MAX_VALUE;
                                    z = true;
                                } else {
                                    z = false;
                                }
                                int i27 = cursor5.f11081c.f11056a;
                                if (i27 + 1 == cursor5.f11082d.f11056a && (deadChar = KeyCharacterMap.getDeadChar((cCharAt = text4.charAt(i27)), unicodeChar)) != cCharAt && keyEvent.getRepeatCount() == 0) {
                                    unicodeChar = deadChar;
                                    z = false;
                                }
                                if (z) {
                                    j cursor6 = codeEditor2.getCursor();
                                    if (codeEditor2.g1.a()) {
                                        int i28 = cursor5.f11081c.f11056a;
                                        if (i28 + 1 == cursor5.f11082d.f11056a && text4.charAt(i28) == unicodeChar) {
                                            mb.b bVar3 = cursor5.f11082d;
                                            codeEditor2.h0(bVar3.f11057b, bVar3.f11058c, 9, true);
                                            codeEditor2.u(String.valueOf(Character.toChars(unicodeChar)), true, true);
                                            int iCharCount = Character.charCount(Character.codePointBefore(codeEditor2.getText().o(cursor6.f11082d.f11057b), cursor6.f11082d.f11058c));
                                            mb.b bVar4 = cursor6.f11082d;
                                            int i29 = bVar4.f11057b;
                                            int i30 = bVar4.f11058c;
                                            ((CodeEditor) dVar.f10286b).j0(i29, i30 - iCharCount, i29, i30, 9, true);
                                        }
                                    }
                                } else {
                                    codeEditor2.u(new String(Character.toChars(unicodeChar)), true, true);
                                    codeEditor2.V();
                                }
                                zOnKeyDown = true;
                            }
                            if (zOnKeyDown) {
                                MetaKeyKeyListener.adjustMetaAfterKeypress(editable);
                            }
                            boolValueOf = Boolean.valueOf(iVar.c(zOnKeyDown));
                            break;
                        } else {
                            f fVar2 = codeEditor2.f8714h;
                            g text5 = codeEditor2.getText();
                            j cursor7 = codeEditor2.getCursor();
                            if (i10 == 29) {
                                tVar = tVar3;
                                codeEditor2.d0();
                            } else if (i10 != 38) {
                                if (i10 == 31) {
                                    tVar2 = tVar3;
                                    codeEditor2.v(true);
                                } else if (i10 != 32) {
                                    switch (i10) {
                                        case 50:
                                            if (codeEditor2.N()) {
                                                codeEditor2.X();
                                            }
                                            tVar = tVar3;
                                            break;
                                        case 51:
                                            mb.b bVarA12 = codeEditor2.getCursor().f11081c.a();
                                            codeEditor2.e0(bVarA12.f11057b, bVarA12.f11058c);
                                            tVar = tVar3;
                                            break;
                                        case 52:
                                            if (codeEditor2.N()) {
                                                codeEditor2.z();
                                            } else {
                                                codeEditor2.v(true);
                                            }
                                            tVar = tVar3;
                                            break;
                                        case 53:
                                            if (codeEditor2.N()) {
                                                codeEditor2.a0();
                                            }
                                            tVar = tVar3;
                                            break;
                                        case 54:
                                            if (codeEditor2.N()) {
                                                codeEditor2.m0();
                                            }
                                            tVar = tVar3;
                                            break;
                                        default:
                                            boolValueOf = null;
                                            break;
                                    }
                                } else if (codeEditor2.N()) {
                                    j cursor8 = codeEditor2.getCursor();
                                    if (cursor8.a()) {
                                        codeEditor2.B("", true);
                                        tVar2 = tVar3;
                                    } else {
                                        mb.b bVarA13 = cursor8.f11081c.a();
                                        int i31 = bVarA13.f11057b;
                                        tVar2 = tVar3;
                                        codeEditor2.j0(i31, 0, i31, codeEditor2.getText().o(bVarA13.f11057b).f11076c, 0, true);
                                        codeEditor2.B(SignParameters.NEW_LINE, false);
                                    }
                                } else {
                                    tVar = tVar3;
                                }
                                tVar = tVar2;
                            } else {
                                tVar = tVar3;
                                if (!zB || cursor7.a()) {
                                    z4 = false;
                                    boolValueOf = Boolean.valueOf(!tVar.c(z4) || iVar.c(z4));
                                    break;
                                } else {
                                    int i32 = cursor7.f11081c.f11057b;
                                    codeEditor2.g0(i32, text5.o(i32).f11076c);
                                    fVar2.deleteSurroundingText(0, 1);
                                    codeEditor2.E();
                                }
                            }
                            z4 = true;
                            if (tVar.c(z4)) {
                                boolValueOf = Boolean.valueOf(!tVar.c(z4) || iVar.c(z4));
                            }
                        }
                        break;
                }
            } else {
                if (codeEditor2.N()) {
                    codeEditor2.X();
                }
                boolValueOf = Boolean.valueOf(iVar.c(true));
            }
        } else if (cursor.a()) {
            mb.b bVar5 = cursor.f11081c;
            codeEditor2.g0(bVar5.f11057b, bVar5.f11058c);
            boolValueOf = Boolean.valueOf(iVar.c(true));
        } else if (codeEditor2.W0) {
            codeEditor2.W0 = false;
            boolValueOf = Boolean.valueOf(iVar.c(true));
        } else {
            boolValueOf = Boolean.valueOf(iVar.c(false));
        }
        return boolValueOf != null ? iVar.c(boolValueOf.booleanValue()) : iVar.c(super.onKeyDown(i10, keyEvent));
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public final boolean onKeyMultiple(int i10, int i11, KeyEvent keyEvent) {
        CodeEditor codeEditor = (CodeEditor) this.f8701a.f10286b;
        db.i iVar = new db.i(codeEditor, keyEvent, 3);
        return (codeEditor.f8717i.a(iVar) & 2) != 0 ? iVar.c(false) : iVar.c(super.onKeyMultiple(i10, i11, keyEvent));
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public final boolean onKeyUp(int i10, KeyEvent keyEvent) {
        kf.d dVar = this.f8701a;
        qb.a aVar = (qb.a) dVar.f10287c;
        aVar.getClass();
        aVar.onKeyUp(aVar.f13183a, aVar.f13184b, keyEvent.getKeyCode(), keyEvent);
        aVar.f13185c = keyEvent.isCtrlPressed();
        CodeEditor codeEditor = (CodeEditor) dVar.f10286b;
        db.p pVar = codeEditor.f8717i;
        codeEditor.getCursor();
        boolean z = true;
        db.i iVar = new db.i(codeEditor, keyEvent, 1);
        if ((pVar.a(iVar) & 2) != 0) {
            return iVar.c(false);
        }
        if (dVar.E(i10, keyEvent)) {
            keyEvent.isCtrlPressed();
            aVar.b();
            aVar.a();
            t tVar = new t(codeEditor, keyEvent, 1);
            if ((pVar.a(tVar) & 2) != 0) {
                if (!tVar.c(false) && !iVar.c(false)) {
                    z = false;
                }
                return z;
            }
        }
        return iVar.c(super.onKeyUp(i10, keyEvent));
    }

    @Override // android.view.View
    public final void onMeasure(int i10, int i11) {
        int iMakeMeasureSpec;
        int iMakeMeasureSpec2;
        int i12;
        int i13;
        int iMakeMeasureSpec3;
        int i14;
        int i15 = 0;
        if (View.MeasureSpec.getMode(i10) == 1073741824 && View.MeasureSpec.getMode(i11) == 1073741824) {
            this.X0 = false;
            i12 = i10;
            i13 = i11;
        } else {
            float fS = S();
            float rowHeight = getRowHeight();
            boolean z = this.H;
            int i16 = this.f8721k;
            g gVar = this.f8716h1;
            eb.c cVar = this.F1.f14962b;
            int mode = View.MeasureSpec.getMode(i10);
            int mode2 = View.MeasureSpec.getMode(i11);
            int size = mode == 0 ? 1073741823 : View.MeasureSpec.getSize(i10);
            int size2 = mode2 == 0 ? 1073741823 : View.MeasureSpec.getSize(i11);
            u1.p pVar = new u1.p(i16);
            if (z) {
                if (mode != 1073741824) {
                    int[] iArr = mode2 != 1073741824 ? new int[gVar.f11064a.size()] : null;
                    int i17 = size2;
                    gVar.y(gVar.f11064a.size() - 1, new androidx.fragment.app.f(pVar, cVar, new androidx.leanback.widget.i(i15, 6), iArr, 5));
                    int iMin = (int) Math.min(size, r8.f1647b + fS);
                    int iMakeMeasureSpec4 = View.MeasureSpec.makeMeasureSpec(iMin, 1073741824);
                    if (iArr != null) {
                        int i18 = (int) (iMin - fS);
                        if (i18 <= 0) {
                            i14 = gVar.f11067d;
                        } else {
                            int i19 = 0;
                            for (double d10 : iArr) {
                                double d11 = i19;
                                Double.isNaN(d10);
                                double d12 = i18;
                                Double.isNaN(d12);
                                double dMax = Math.max(1.0d, Math.ceil((d10 * 1.0d) / d12));
                                Double.isNaN(d11);
                                i19 = (int) (dMax + d11);
                            }
                            i14 = i19;
                        }
                        iMakeMeasureSpec3 = View.MeasureSpec.makeMeasureSpec(Math.min((int) (rowHeight * i14), i17), 1073741824);
                    } else {
                        iMakeMeasureSpec3 = i11;
                    }
                    iMakeMeasureSpec2 = iMakeMeasureSpec3;
                    iMakeMeasureSpec = iMakeMeasureSpec4;
                } else {
                    int i20 = size2;
                    if (mode2 != 1073741824) {
                        androidx.leanback.widget.i iVar = new androidx.leanback.widget.i(0, 6);
                        int i21 = (int) (size - fS);
                        if (i21 <= 0) {
                            iVar.f1647b = gVar.f11067d;
                        } else {
                            gVar.y(gVar.f11064a.size() - 1, new e0(pVar, cVar, iVar, i21, 5));
                        }
                        iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(Math.min((int) (rowHeight * iVar.f1647b), i20), 1073741824);
                        iMakeMeasureSpec = i10;
                    } else {
                        iMakeMeasureSpec = i10;
                    }
                }
                long jG = sb.h.g(iMakeMeasureSpec, iMakeMeasureSpec2);
                i12 = (int) (jG >> 32);
                i13 = (int) (jG & 4294967295L);
                this.X0 = true;
            } else {
                int i22 = size2;
                if (mode != 1073741824) {
                    gVar.y(gVar.f11064a.size() - 1, new com.hjq.permissions.b(pVar, cVar, new androidx.leanback.widget.i(0, 6), 18));
                    iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec((int) Math.min(r5.f1647b + fS, size), 1073741824);
                } else {
                    iMakeMeasureSpec = i10;
                }
                iMakeMeasureSpec2 = mode2 != 1073741824 ? View.MeasureSpec.makeMeasureSpec(Math.min(i22, (int) (rowHeight * gVar.f11064a.size())), 1073741824) : i11;
                long jG2 = sb.h.g(iMakeMeasureSpec, iMakeMeasureSpec2);
                i12 = (int) (jG2 >> 32);
                i13 = (int) (jG2 & 4294967295L);
                this.X0 = true;
            }
        }
        super.onMeasure(i12, i13);
    }

    @Override // android.view.View
    public final PointerIcon onResolvePointerIcon(MotionEvent motionEvent, int i10) {
        int i11;
        if (Build.VERSION.SDK_INT < 24 || !motionEvent.isFromSource(8194)) {
            return super.onResolvePointerIcon(motionEvent, i10);
        }
        O();
        if (this.N) {
            return PointerIcon.getSystemIcon(getContext(), 1004);
        }
        if (this.f8732q1.g()) {
            return PointerIcon.getSystemIcon(getContext(), 1021);
        }
        if (getLeftHandleDescriptor().f2989a.contains(motionEvent.getX(), motionEvent.getY()) || getRightHandleDescriptor().f2989a.contains(motionEvent.getX(), motionEvent.getY()) || getInsertHandleDescriptor().f2989a.contains(motionEvent.getX(), motionEvent.getY())) {
            return PointerIcon.getSystemIcon(getContext(), 1020);
        }
        long jD0 = com.bumptech.glide.d.d0(this, motionEvent, i10);
        int i12 = (int) (jD0 >> 32);
        boolean z = ((int) (jD0 & 4294967295L)) == 0;
        if (i12 != 5 || !z) {
            return (i12 == 1 && ((i11 = this.C1.f14928w) == 1 || i11 == 2)) ? PointerIcon.getSystemIcon(getContext(), 1002) : super.onResolvePointerIcon(motionEvent, i10);
        }
        u uVar = this.f8732q1;
        if (uVar.K && !uVar.I) {
            return PointerIcon.getSystemIcon(getContext(), 1021);
        }
        this.F1.getClass();
        return PointerIcon.getSystemIcon(getContext(), 1008);
    }

    @Override // android.view.View
    public final void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        Rect rect = this.F1.f14964d;
        rect.right = i10;
        rect.bottom = i11;
        getVerticalEdgeEffect().setSize(i10, i11);
        getHorizontalEdgeEffect().setSize(i11, i10);
        getVerticalEdgeEffect().finish();
        getHorizontalEdgeEffect().finish();
        if (this.f8719j == null || (this.H && i10 != i12)) {
            x(true);
        } else {
            this.f8732q1.j(getOffsetX() > getScrollMaxX() ? getScrollMaxX() - getOffsetX() : 0.0f, getOffsetY() > getScrollMaxY() ? getScrollMaxY() - getOffsetY() : 0.0f, false);
        }
        this.J1 = false;
        this.K1 = false;
        if (i13 <= i11 || !this.C1.l) {
            return;
        }
        E();
    }

    /* JADX WARN: Removed duplicated region for block: B:112:0x027d  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        int i10;
        if (!isEnabled()) {
            return false;
        }
        if (!motionEvent.isFromSource(8194)) {
            O();
            u uVar = this.f8732q1;
            boolean z = uVar.f15031s || uVar.r || uVar.g();
            boolean zH = this.f8732q1.h(motionEvent);
            u uVar2 = this.f8732q1;
            boolean z4 = uVar2.f15031s || uVar2.r || uVar2.g();
            boolean zOnTouchEvent = this.f8738t1.onTouchEvent(motionEvent);
            boolean zOnTouchEvent2 = (z4 || z) ? false : this.f8735s1.onTouchEvent(motionEvent);
            if (motionEvent.getAction() == 1) {
                this.f8741v1.onRelease();
                this.f8743w1.onRelease();
            }
            return zOnTouchEvent || zOnTouchEvent2 || zH;
        }
        this.C1.getClass();
        u uVar3 = this.f8732q1;
        CodeEditor codeEditor = uVar3.f15016a;
        codeEditor.O();
        if (uVar3.f15031s || uVar3.r) {
            return uVar3.h(motionEvent);
        }
        uVar3.H = null;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            uVar3.C = motionEvent.getX();
            uVar3.D = motionEvent.getY();
            int buttonState = motionEvent.getButtonState();
            uVar3.E = buttonState;
            uVar3.I = true;
            if ((buttonState & 1) == 0) {
                return true;
            }
            if (uVar3.h(motionEvent) && (uVar3.f15031s || uVar3.r)) {
                return true;
            }
            if (SystemClock.uptimeMillis() - uVar3.F < ViewConfiguration.getDoubleTapTimeout()) {
                uVar3.G = true;
                uVar3.onDoubleTap(motionEvent);
                return true;
            }
            long jI = codeEditor.I(uVar3.C, uVar3.D);
            int i11 = (int) (jI >> 32);
            int i12 = (int) (jI & 4294967295L);
            mb.b bVarA = codeEditor.getText().n().A(i11, i12);
            if (codeEditor.g1.a()) {
                mb.o cursorRange = codeEditor.getCursorRange();
                cursorRange.getClass();
                int i13 = bVarA.f11056a;
                if (i13 < cursorRange.f11102a.f11056a || i13 >= cursorRange.f11103b.f11056a || !codeEditor.Q(uVar3.C, uVar3.D)) {
                    uVar3.K = false;
                    codeEditor.h0(i11, i12, 8, true);
                    codeEditor.requestFocus();
                } else {
                    uVar3.K = true;
                }
            }
            uVar3.L = bVarA;
            codeEditor.postInvalidate();
            return true;
        }
        if (actionMasked != 1) {
            if (actionMasked != 2) {
                if (actionMasked != 3) {
                    return true;
                }
                uVar3.i();
                uVar3.z = 0;
                return true;
            }
            if (uVar3.G) {
                return true;
            }
            float fAbs = Math.abs(motionEvent.getX() - uVar3.C);
            float f10 = uVar3.A;
            if (fAbs > f10 || Math.abs(motionEvent.getY() - uVar3.D) > f10) {
                uVar3.I = false;
            }
            if ((uVar3.E & 1) == 0) {
                return true;
            }
            long jI2 = codeEditor.I(motionEvent.getX(), motionEvent.getY());
            int i14 = (int) (jI2 >> 32);
            int i15 = (int) (jI2 & 4294967295L);
            mb.b bVarA2 = codeEditor.getText().n().A(i14, i15);
            if (!uVar3.I && !uVar3.K) {
                CodeEditor codeEditor2 = uVar3.f15016a;
                mb.b bVar = codeEditor2.f8713g;
                codeEditor2.j0(bVar.f11057b, bVar.f11058c, i14, i15, 8, true);
            }
            uVar3.L = bVarA2;
            codeEditor.postInvalidate();
            uVar3.l(motionEvent);
            return true;
        }
        if (motionEvent.getEventTime() - motionEvent.getDownTime() > ViewConfiguration.getTapTimeout() * 2.0f) {
            uVar3.I = false;
        }
        if (!uVar3.G) {
            if (uVar3.K && !uVar3.I && (uVar3.E & 1) != 0) {
                long jI3 = codeEditor.I(motionEvent.getX(), motionEvent.getY());
                mb.b bVarA3 = codeEditor.getText().n().A((int) (jI3 >> 32), (int) (4294967295L & jI3));
                mb.o cursorRange2 = codeEditor.getCursorRange();
                cursorRange2.getClass();
                int i16 = bVarA3.f11056a;
                if (i16 < cursorRange2.f11102a.f11056a || i16 >= cursorRange2.f11103b.f11056a) {
                    boolean z10 = codeEditor.getKeyMetaStates().f13185c;
                    mb.b bVar2 = cursorRange2.f11103b;
                    if (z10 || !bVar2.equals(bVarA3)) {
                        int i17 = bVar2.f11056a;
                        mb.b bVar3 = cursorRange2.f11102a;
                        int i18 = i17 - bVar3.f11056a;
                        if (codeEditor.getKeyMetaStates().f13185c) {
                            i10 = bVarA3.f11056a;
                        } else {
                            i10 = bVarA3.f11056a;
                            if (i10 >= bVar3.f11056a) {
                                i10 -= i18;
                            }
                        }
                        g text = codeEditor.getText();
                        String strC = text.C(bVar3.f11056a, bVar2.f11056a);
                        if (codeEditor.getKeyMetaStates().f13185c) {
                            text.r(bVarA3.f11057b, bVarA3.f11058c, strC);
                        } else {
                            text.b();
                            codeEditor.A();
                            bVarA3 = text.n().z(i10);
                            text.r(bVarA3.f11057b, bVarA3.f11058c, strC);
                            text.k();
                        }
                        mb.b bVarZ = text.n().z(i10 + i18);
                        uVar3.f15016a.j0(bVarA3.f11057b, bVarA3.f11058c, bVarZ.f11057b, bVarZ.f11058c, 8, true);
                    }
                }
            }
            if (uVar3.I) {
                int i19 = uVar3.E;
                if ((i19 & 1) != 0) {
                    uVar3.onSingleTapUp(motionEvent);
                    uVar3.F = motionEvent.getEventTime();
                } else if ((i19 & 2) != 0) {
                    uVar3.H = new PointF(motionEvent.getX(), motionEvent.getY());
                    if ((uVar3.b(new jd(26), null, motionEvent) & 2) == 0) {
                        int i20 = Build.VERSION.SDK_INT;
                        if (i20 >= 24) {
                            codeEditor.performContextClick(motionEvent.getX(), motionEvent.getY());
                        } else if (i20 >= 23) {
                            codeEditor.performContextClick();
                        }
                        if (codeEditor.getProps().F) {
                            if (i20 >= 24) {
                                codeEditor.showContextMenu(motionEvent.getX(), motionEvent.getY());
                            } else {
                                codeEditor.showContextMenu();
                            }
                        }
                    }
                }
            }
        }
        uVar3.i();
        uVar3.z = 0;
        return true;
    }

    public final void p0() {
        int i10;
        int i11;
        mb.d dVar;
        int i12;
        this.C1.getClass();
        mb.d dVar2 = this.f8714h.f14933b;
        if (dVar2.f11062b) {
            return;
        }
        if (dVar2.a()) {
            try {
                dVar = this.f8714h.f14933b;
                i10 = dVar.f11061a;
            } catch (IndexOutOfBoundsException unused) {
                i10 = -1;
            }
            try {
                i12 = dVar.f11063c;
                i11 = i10;
            } catch (IndexOutOfBoundsException unused2) {
                i11 = i10;
                i12 = -1;
                InputMethodManager inputMethodManager = this.f8712f1;
                j jVar = this.g1;
                inputMethodManager.updateSelection(this, jVar.f11081c.f11056a, jVar.f11082d.f11056a, i11, i12);
            }
            InputMethodManager inputMethodManager2 = this.f8712f1;
            j jVar2 = this.g1;
            inputMethodManager2.updateSelection(this, jVar2.f11081c.f11056a, jVar2.f11082d.f11056a, i11, i12);
        }
        i11 = -1;
        i12 = -1;
        InputMethodManager inputMethodManager22 = this.f8712f1;
        j jVar22 = this.g1;
        inputMethodManager22.updateSelection(this, jVar22.f11081c.f11056a, jVar22.f11082d.f11056a, i11, i12);
    }

    @Override // android.view.View
    public final boolean performAccessibilityAction(int i10, Bundle bundle) {
        if (i10 == 4096) {
            U(x.f15048i);
            return true;
        }
        if (i10 == 8192) {
            U(x.f15049j);
            return true;
        }
        if (i10 == 16384) {
            v(true);
            return true;
        }
        if (i10 == 32768) {
            X();
            return true;
        }
        if (i10 == 65536) {
            z();
            return true;
        }
        if (i10 == 2097152) {
            setText(bundle.getCharSequence("ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE"));
            return true;
        }
        if (Build.VERSION.SDK_INT >= 23) {
            if (i10 == 16908344) {
                U(x.f15049j);
                return true;
            }
            if (i10 == 16908346) {
                U(x.f15048i);
                return true;
            }
        }
        return super.performAccessibilityAction(i10, bundle);
    }

    @Override // android.view.View
    public final boolean removeCallbacks(Runnable runnable) {
        sb.c.f14469a.removeCallbacks(runnable);
        return super.removeCallbacks(runnable);
    }

    public final void s() {
        ViewGroup.LayoutParams layoutParams;
        if (!this.X0 || (layoutParams = getLayoutParams()) == null) {
            return;
        }
        if (layoutParams.width == -2) {
            requestLayout();
        } else {
            if (layoutParams.height != -2 || getHeight() == this.f8719j.d()) {
                return;
            }
            requestLayout();
        }
    }

    public void setBlockLineEnabled(boolean z) {
        this.f8715h0 = z;
        invalidate();
    }

    public void setBlockLineWidth(float f10) {
        this.f8742w = f10;
        invalidate();
    }

    public void setColorScheme(zb.a aVar) {
        zb.a aVar2 = this.f8720j1;
        if (aVar2 != null) {
            Iterator it = aVar2.f19544b.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                } else if (((WeakReference) it.next()).get() == this) {
                    it.remove();
                    break;
                }
            }
        }
        this.f8720j1 = aVar;
        aVar.a(this);
        invalidate();
    }

    public void setCursorAnimationEnabled(boolean z) {
        if (!z) {
            ((dc.c) this.f8748z1).a();
        }
        this.Q0 = z;
    }

    public void setCursorAnimator(cc.a aVar) {
        this.f8748z1 = aVar;
    }

    public void setCursorBlinkPeriod(int i10) {
        d dVar = this.B1;
        if (dVar == null) {
            this.B1 = new d(this, i10);
            return;
        }
        int i11 = dVar.f14908e;
        dVar.f14908e = i10;
        if (i10 <= 0) {
            dVar.f14905b = true;
            dVar.f14906c = false;
        } else {
            dVar.f14906c = true;
        }
        if (i11 <= 0 && dVar.f14906c && isAttachedToWindow()) {
            Z(this.B1);
        }
    }

    public void setCursorWidth(float f10) {
        if (f10 < 0.0f) {
            throw new IllegalArgumentException("width can not be under zero");
        }
        this.f8740v = f10;
        invalidate();
    }

    public void setDiagnosticIndicatorStyle(cc.b bVar) {
        this.f8727n1 = bVar;
        invalidate();
    }

    public void setDiagnostics(ib.a aVar) {
        invalidate();
    }

    public void setDisableSoftKbdIfHardKbdAvailable(boolean z) {
        if (this.f8702a1 == z) {
            return;
        }
        this.f8702a1 = z;
        this.f8712f1.hideSoftInputFromWindow(getWindowToken(), 0);
        c0();
    }

    public void setDisplayLnPanel(boolean z) {
        this.O = z;
        invalidate();
    }

    public void setDividerMargin(float f10) {
        f0(f10, f10);
    }

    public void setDividerWidth(float f10) {
        if (f10 < 0.0f) {
            throw new IllegalArgumentException("width can not be under zero");
        }
        this.r = f10;
        b0();
        invalidate();
    }

    public void setEdgeEffectColor(int i10) {
        this.f8741v1.setColor(i10);
        this.f8743w1.setColor(i10);
    }

    public void setEditable(boolean z) {
        this.G = z;
        if (z) {
            return;
        }
        this.f8712f1.hideSoftInputFromWindow(getWindowToken(), 0);
        this.M1.getClass();
    }

    public void setEditorLanguage(gb.b bVar) {
        if (bVar == null) {
            bVar = new gb.a();
        }
        this.f8711f.getClass();
        this.f8725m1 = bVar;
        g gVar = this.f8716h1;
        if (gVar != null && gVar.f11067d < 0) {
            throw new IllegalArgumentException("start > end");
        }
        s4.a aVar = this.f8703b;
        if (aVar != null) {
            aVar.f14295d = null;
        }
        s4.a aVar2 = gb.a.f6125a;
        this.f8703b = aVar2;
        if (aVar2 == null) {
            this.f8725m1.toString();
            this.f8703b = new s4.a(4);
        }
        this.f8703b.f14295d = this.C1.f14910a;
        this.E1.a();
        invalidate();
    }

    public void setExtracting(ExtractedTextRequest extractedTextRequest) {
        getProps().getClass();
        this.f8745x1 = extractedTextRequest;
    }

    public void setFirstLineNumberAlwaysVisible(boolean z) {
        this.T0 = z;
        if (this.H) {
            invalidate();
        }
    }

    public void setFontFeatureSettings(String str) {
        this.F1.f14962b.d(str);
        this.F1.f14963c.setFontFeatureSettings(str);
        this.F1.f14967g.setFontFeatureSettings(str);
        this.F1.C();
        invalidate();
    }

    public void setFormatTip(String str) {
        Objects.requireNonNull(str);
        this.f8723l1 = str;
    }

    public void setHardwareAcceleratedDrawAllowed(boolean z) {
        this.G1 = z;
        if (!z || this.H) {
            return;
        }
        this.E1.a();
    }

    public void setHighlightBracketPair(boolean z) {
        if (z) {
            this.f8711f.N();
        } else {
            this.f8711f.getClass();
        }
        invalidate();
    }

    public void setHighlightCurrentBlock(boolean z) {
        this.M0 = z;
        if (z) {
            this.l = -1;
        } else {
            this.l = -1;
        }
        invalidate();
    }

    public void setHighlightCurrentLine(boolean z) {
        this.N0 = z;
        invalidate();
    }

    public void setHighlightTexts(jb.b bVar) {
        new a0.o();
    }

    @Override // android.view.View
    public void setHorizontalScrollBarEnabled(boolean z) {
        this.P0 = z;
    }

    @Override // android.view.View
    public void setHorizontalScrollbarThumbDrawable(Drawable drawable) {
        this.F1.f14977s = drawable;
    }

    @Override // android.view.View
    public void setHorizontalScrollbarTrackDrawable(Drawable drawable) {
        this.F1.f14978t = drawable;
    }

    public void setInlayHints(kb.a aVar) {
        h5.m mVar = new h5.m(new a0.o());
        if (this.N) {
            x(true);
        } else {
            this.f8719j.i(mVar);
        }
        this.E1.a();
    }

    public void setInputType(int i10) {
        this.f8726n = i10;
        c0();
    }

    public void setInterceptParentHorizontalScrollIfNeeded(boolean z) {
        ViewParent parent;
        this.f8737t0 = z;
        if (z || (parent = getParent()) == null) {
            return;
        }
        parent.requestDisallowInterceptTouchEvent(false);
    }

    public void setLayoutBusy(boolean z) {
        if (!this.N || z) {
            if (this.N == z) {
                return;
            }
            this.N = z;
            this.f8717i.a(new db.a(this, 3));
            return;
        }
        if (this.H) {
            u uVar = this.f8732q1;
            if (uVar.V) {
                uVar.V = false;
                long j10 = uVar.T;
                float rowHeight = getRowHeight() * ((wb.n) this.f8719j).x((int) (j10 >> 32), (int) (j10 & 4294967295L));
                u uVar2 = this.f8732q1;
                float f10 = rowHeight - uVar2.X;
                tb.m mVar = uVar2.f15017b;
                int i10 = (int) f10;
                this.f8717i.a(new w(this, mVar.f14985b.getCurrX(), mVar.f14985b.getCurrY(), 0, i10, 5));
                mVar.b(0, i10, 0, 0, 0);
                mVar.f14985b.abortAnimation();
                mVar.a();
            }
        }
        this.N = false;
        c0();
        postInvalidate();
        this.f8717i.a(new db.a(this, 3));
    }

    public void setLigatureEnabled(boolean z) {
        setFontFeatureSettings(z ? null : "'liga' 0,'calt' 0,'hlig' 0,'dlig' 0,'clig' 0");
    }

    public void setLineInfoTextSize(float f10) {
        if (f10 <= 0.0f) {
            throw new IllegalArgumentException();
        }
        this.z = f10;
    }

    public void setLineNumberAlign(Paint.Align align) {
        if (align == null) {
            align = Paint.Align.LEFT;
        }
        this.f8733r1 = align;
        invalidate();
    }

    public void setLineNumberEnabled(boolean z) {
        if (z != this.V && this.H) {
            x(true);
        }
        this.V = z;
        invalidate();
    }

    public void setLineNumberMarginLeft(float f10) {
        this.C = f10;
        b0();
        invalidate();
    }

    public void setLineNumberTipTextProvider(cc.c cVar) {
        Objects.requireNonNull(cVar, "Provider can not be null");
        this.f8722k1 = cVar;
        invalidate();
    }

    public void setLineSeparator(m mVar) {
        Objects.requireNonNull(mVar);
        if (mVar == m.NONE) {
            throw new IllegalArgumentException();
        }
        this.L1 = mVar;
    }

    public void setLineSpacingExtra(float f10) {
        this.B = f10;
        invalidate();
    }

    public void setLineSpacingMultiplier(float f10) {
        this.A = f10;
        invalidate();
    }

    public void setLnPanelPosition(int i10) {
        this.P = i10;
        invalidate();
    }

    public void setLnPanelPositionMode(int i10) {
        this.R = i10;
        invalidate();
    }

    public void setNonPrintablePaintingFlags(int i10) {
        int i11 = this.f8729p;
        this.f8729p = i10;
        if ((i11 & 128) != (i10 & 128)) {
            x(true);
        }
        invalidate();
    }

    public void setPinLineNumber(boolean z) {
        this.R0 = z;
        if (this.V) {
            invalidate();
        }
    }

    public void setRenderFunctionCharacters(boolean z) {
        if (this.Y0 != z) {
            this.Y0 = z;
            this.F1.B();
            b0();
            x(true);
            invalidate();
        }
    }

    public void setScalable(boolean z) {
        this.F = z;
    }

    public void setScrollBarEnabled(boolean z) {
        this.P0 = z;
        this.O0 = z;
        invalidate();
    }

    public void setSelectionHandleStyle(e eVar) {
        Objects.requireNonNull(eVar);
        this.A1 = eVar;
        invalidate();
    }

    public void setSoftKeyboardEnabled(boolean z) {
        if (this.Z0 == z) {
            return;
        }
        this.Z0 = z;
        this.f8712f1.hideSoftInputFromWindow(getWindowToken(), 0);
        c0();
    }

    public void setStickyTextSelection(boolean z) {
        this.V0 = z;
    }

    public void setStyles(jb.d dVar) {
        if (this.M0) {
            this.l = -1;
        }
        this.E1.a();
        this.F1.C();
        invalidate();
    }

    public void setTabWidth(int i10) {
        if (i10 < 1) {
            throw new IllegalArgumentException("width can not be under 1");
        }
        this.f8721k = i10;
        this.E1.a();
        this.F1.C();
        b0();
        invalidate();
    }

    public void setText(CharSequence charSequence) {
        if (charSequence == null) {
            charSequence = "";
        }
        g gVar = this.f8716h1;
        if (gVar != null) {
            gVar.f11065b.remove(this);
            this.f8716h1.f11068e = 0;
        }
        this.D1 = new Bundle();
        if (charSequence instanceof g) {
            g gVar2 = (g) charSequence;
            this.f8716h1 = gVar2;
            gVar2.f11068e = 0;
            this.F1.C();
        } else {
            this.f8716h1 = new g(charSequence, true);
        }
        this.f8711f.getClass();
        j jVarM = this.f8716h1.m();
        this.g1 = jVarM;
        this.f8713g = jVarM.f11082d.a();
        u uVar = this.f8732q1;
        uVar.f15017b.b(0, 0, 0, 0, 0);
        uVar.r = false;
        uVar.f15031s = false;
        uVar.f15020e = -1;
        uVar.e();
        uVar.f15019d.a();
        this.f8716h1.a(this);
        this.f8716h1.z(this.I);
        g gVar3 = this.f8716h1;
        gVar3.f11071h.f11332b = true;
        b bVar = this.E1;
        int size = gVar3.f11064a.size();
        androidx.room.s sVar = bVar.f19112a;
        a0.n nVar = (a0.n) sVar.f2427c;
        int i10 = nVar.f46b;
        if (i10 > size) {
            nVar.c(size, i10);
        } else if (i10 < size) {
            int i11 = size - i10;
            for (int i12 = 0; i12 < i11; i12++) {
                nVar.a(nVar.f46b + 1);
                int[] iArr = nVar.f45a;
                int i13 = nVar.f46b;
                iArr[i13] = 0;
                nVar.f46b = i13 + 1;
            }
        }
        int i14 = nVar.f46b;
        Iterator it = (i14 <= Integer.MIN_VALUE ? ye.c.f19149d : new ye.c(0, i14 - 1)).iterator();
        while (((ye.b) it).f19147c) {
            int iA = ((ye.b) it).a();
            if (iA < 0 || iA >= nVar.f46b) {
                throw new IndexOutOfBoundsException("Index must be between 0 and size");
            }
            int[] iArr2 = nVar.f45a;
            int i15 = iArr2[iA];
            iArr2[iA] = 0;
        }
        ((ArrayList) sVar.f2428d).clear();
        l lVar = this.F1;
        CodeEditor codeEditor = lVar.f14975p;
        lVar.D = codeEditor.getCursor();
        lVar.F = codeEditor.getText();
        gb.b bVar2 = this.f8725m1;
        if (bVar2 != null) {
            if (this.f8716h1.f11067d < 0) {
                throw new IllegalArgumentException("start > end");
            }
            bVar2.getClass();
        }
        this.f8717i.a(new db.d(this, 1, new mb.b(), this.f8716h1.n().A(getLineCount() - 1, this.f8716h1.o(getLineCount() - 1).f11076c), this.f8716h1, false));
        x(true);
        InputMethodManager inputMethodManager = this.f8712f1;
        if (inputMethodManager != null) {
            inputMethodManager.restartInput(this);
        }
        requestLayout();
        this.E1.a();
        invalidate();
    }

    public void setTextBorderWidth(float f10) {
        if (f10 < 0.0f) {
            throw new IllegalArgumentException("width can not be under zero");
        }
        this.f8744x = f10;
        invalidate();
    }

    public void setTextLetterSpacing(float f10) {
        l lVar = this.F1;
        lVar.f14962b.setLetterSpacing(f10);
        lVar.f14963c.setLetterSpacing(f10);
        lVar.B();
        b0();
    }

    public void setTextScaleX(float f10) {
        l lVar = this.F1;
        lVar.f14962b.setTextScaleX(f10);
        lVar.f14963c.setTextScaleX(f10);
        lVar.B();
    }

    public void setTextSize(float f10) {
        Context context = getContext();
        setTextSizePx(TypedValue.applyDimension(2, f10, (context == null ? Resources.getSystem() : context.getResources()).getDisplayMetrics()));
    }

    public void setTextSizePx(float f10) {
        setTextSizePxDirect(f10);
        b0();
        x(true);
        invalidate();
    }

    public void setTextSizePxDirect(float f10) {
        float textSizePx = getTextSizePx();
        l lVar = this.F1;
        eb.c cVar = lVar.f14962b;
        cVar.setTextSize(f10);
        cVar.c();
        eb.c cVar2 = lVar.f14963c;
        cVar2.setTextSize(f10);
        CodeEditor codeEditor = lVar.f14975p;
        Objects.requireNonNull(codeEditor.getProps());
        eb.c cVar3 = lVar.f14967g;
        cVar3.setTextSize(0.85f * f10);
        lVar.r = cVar.getFontMetricsInt();
        lVar.A = cVar2.getFontMetricsInt();
        lVar.B = cVar3.getFontMetricsInt();
        codeEditor.getRenderContext().a();
        lVar.C();
        this.f8717i.a(new a0(this, textSizePx, f10));
    }

    public void setTypefaceLineNumber(Typeface typeface) {
        l lVar = this.F1;
        if (typeface == null) {
            lVar.getClass();
            typeface = Typeface.MONOSPACE;
        }
        eb.c cVar = lVar.f14963c;
        cVar.setTypeface(typeface);
        lVar.A = cVar.getFontMetricsInt();
        lVar.f14975p.invalidate();
        b0();
    }

    public void setTypefaceText(Typeface typeface) {
        l lVar = this.F1;
        if (typeface == null) {
            lVar.getClass();
            typeface = Typeface.DEFAULT;
        }
        eb.c cVar = lVar.f14962b;
        cVar.setTypeface(typeface);
        cVar.c();
        lVar.r = cVar.getFontMetricsInt();
        CodeEditor codeEditor = lVar.f14975p;
        codeEditor.getRenderContext().a();
        lVar.C();
        codeEditor.x(true);
        codeEditor.invalidate();
        b0();
    }

    public void setUndoEnabled(boolean z) {
        this.I = z;
        g gVar = this.f8716h1;
        if (gVar != null) {
            gVar.z(z);
        }
    }

    public void setVerticalExtraSpaceFactor(float f10) {
        if (f10 < 0.0f || f10 > 1.0f) {
            throw new IllegalArgumentException("the factor should be in range [0.0, 1.0]");
        }
        this.D = f10;
        this.f8732q1.j(0.0f, 0.0f, false);
    }

    @Override // android.view.View
    public void setVerticalScrollBarEnabled(boolean z) {
        this.O0 = z;
    }

    @Override // android.view.View
    public void setVerticalScrollbarThumbDrawable(Drawable drawable) {
        this.F1.f14979u = drawable;
    }

    @Override // android.view.View
    public void setVerticalScrollbarTrackDrawable(Drawable drawable) {
        this.F1.f14980v = drawable;
    }

    public void setWordwrap(boolean z) {
        k0(z, true);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0020 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:6:0x000b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean t() {
        boolean z;
        if (this.f8702a1) {
            Context context = getContext();
            if (context == null) {
                z = false;
                if (z) {
                    return false;
                }
            } else {
                Configuration configuration = context.getResources().getConfiguration();
                z = true;
                if (configuration.keyboard == 1 && configuration.hardKeyboardHidden != 1) {
                }
                if (z) {
                }
            }
        }
        return this.Z0;
    }

    public final void u(CharSequence charSequence, boolean z, boolean z4) {
        gb.b bVar;
        char cCharAt;
        int i10 = 1;
        tb.y yVar = null;
        if (z4 && getProps().f14913d && charSequence.length() > 0) {
            char cCharAt2 = charSequence.charAt(charSequence.length() - 1);
            char[] charArray = charSequence.length() > 1 ? charSequence.toString().toCharArray() : null;
            s4.a aVar = this.f8703b;
            mb.b bVarA = this.g1.f11081c.a();
            aVar.getClass();
            getText();
            tb.y yVarH = charArray == null ? aVar.h(cCharAt2) : null;
            if (yVarH != null) {
                int i11 = bVarA.f11056a;
                yVarH.f15060a = i11;
                yVarH.f15061b = i11;
                yVar = yVarH;
            } else {
                Iterator it = aVar.i(cCharAt2).iterator();
                while (it.hasNext()) {
                    ((tb.y) it.next()).getClass();
                }
            }
        }
        j jVar = this.g1;
        g gVar = this.f8716h1;
        try {
            this.f8725m1.getClass();
        } catch (AbstractMethodError unused) {
        }
        if (yVar != null && yVar != tb.y.f15059c) {
            jVar.a();
            gVar.b();
            mb.b bVarZ = gVar.n().z(yVar.f15061b);
            int i12 = bVarZ.f11057b;
            int i13 = bVarZ.f11058c;
            mb.b bVar2 = jVar.f11082d;
            gVar.w(i12, i13, "", bVar2.f11057b, bVar2.f11058c);
            gVar.r(bVarZ.f11057b, bVarZ.f11058c, "");
            gVar.k();
            mb.b bVarZ2 = gVar.n().z(yVar.f15060a);
            g0(bVarZ2.f11057b, bVarZ2.f11058c);
            return;
        }
        if (jVar.a()) {
            mb.b bVar3 = jVar.f11081c;
            int i14 = bVar3.f11057b;
            int i15 = bVar3.f11058c;
            mb.b bVar4 = jVar.f11082d;
            gVar.w(i14, i15, charSequence, bVar4.f11057b, bVar4.f11058c);
            return;
        }
        if (this.C1.f14915f && charSequence.length() != 0 && z) {
            char cCharAt3 = charSequence.charAt(0);
            if (cCharAt3 == '\n' || cCharAt3 == '\r') {
                String strQ = this.f8716h1.q(jVar.f11081c.f11057b);
                int i16 = 0;
                int i17 = 0;
                for (int i18 = 0; i18 < jVar.f11081c.f11058c && ((cCharAt = strQ.charAt(i18)) == '\t' || cCharAt == ' '); i18++) {
                    if (strQ.charAt(i18) == '\t') {
                        i17++;
                    } else {
                        i16++;
                    }
                }
                int i19 = (i17 * this.f8721k) + i16;
                try {
                    bVar = this.f8725m1;
                } catch (Exception unused2) {
                }
                if (this.f8716h1.f11067d < 0) {
                    throw new IllegalArgumentException("start > end");
                }
                int i20 = jVar.f11081c.f11057b;
                try {
                    bVar.getClass();
                } catch (AbstractMethodError unused3) {
                    bVar.getClass();
                }
                if (cCharAt3 == '\r' && charSequence.length() >= 2 && charSequence.charAt(1) == '\n') {
                    i10 = 2;
                }
                StringBuilder sb2 = new StringBuilder(charSequence);
                int i21 = this.f8721k;
                this.f8725m1.getClass();
                sb2.insert(i10, mb.k.b(i19, i21));
                charSequence = sb2;
            }
        }
        mb.b bVar5 = jVar.f11081c;
        gVar.r(bVar5.f11057b, bVar5.f11058c, charSequence);
    }

    public final void v(boolean z) {
        if (this.g1.a()) {
            g text = getText();
            j jVar = this.g1;
            w(jVar.f11081c.f11056a, jVar.f11082d.f11056a, text);
        } else {
            if (!z) {
                String str = getLineSeparator().f11097a;
                w(0, str.length(), str);
                return;
            }
            j cursor = getCursor();
            if (cursor.a()) {
                v(true);
                return;
            }
            int i10 = cursor.f11081c.a().f11057b;
            i0(i10, 0, i10, getText().o(i10).f11076c);
            v(false);
        }
    }

    public final void w(int i10, int i11, CharSequence charSequence) {
        if (i11 < i10) {
            return;
        }
        int i12 = i11 - i10;
        int i13 = this.C1.A;
        int i14 = R.string.sora_editor_clip_text_length_too_large;
        if (i12 > i13) {
            Context context = getContext();
            int i15 = cb.a.f2985a.get(R.string.sora_editor_clip_text_length_too_large);
            if (i15 != 0) {
                i14 = i15;
            }
            Toast.makeText(context, i14, 0).show();
            return;
        }
        try {
            String strC = charSequence instanceof g ? ((g) charSequence).C(i10, i11) : charSequence.subSequence(i10, i11).toString();
            this.f8710e1.setPrimaryClip(ClipData.newPlainText(strC, strC));
        } catch (RuntimeException e7) {
            if (!(e7.getCause() instanceof TransactionTooLargeException)) {
                Toast.makeText(getContext(), e7.getClass().toString(), 0).show();
                return;
            }
            Context context2 = getContext();
            int i16 = cb.a.f2985a.get(R.string.sora_editor_clip_text_length_too_large);
            if (i16 != 0) {
                i14 = i16;
            }
            Toast.makeText(context2, i14, 0).show();
        }
    }

    public final void x(boolean z) {
        c cVar = this.f8719j;
        if (cVar != null) {
            if ((cVar instanceof wb.g) && !this.H) {
                wb.g gVar = (wb.g) cVar;
                gVar.f17778b = this.f8716h1;
                gVar.f17790d.getAndIncrement();
                u1.p pVar = new u1.p(gVar.f17777a.getTabWidth());
                gVar.f17793g = pVar;
                pVar.f15258b = gVar.f17777a.Y0;
                try {
                    if (!((ReentrantLock) gVar.f17791e.f2791h).tryLock(5L, TimeUnit.MILLISECONDS)) {
                        bd.e eVar = new bd.e(1);
                        gVar.f17791e = eVar;
                        bd.e eVar2 = new bd.e(1);
                        gVar.f17792f = eVar2;
                        gVar.u(eVar, eVar2);
                        return;
                    }
                    ((ReentrantLock) gVar.f17791e.f2791h).unlock();
                    bd.e eVar3 = gVar.f17791e;
                    eVar3.getClass();
                    eVar3.f2794k = new sb.a(eVar3);
                    eVar3.f2786c = 0;
                    ((ArrayList) eVar3.f2793j).clear();
                    eVar3.l = null;
                    eVar3.f2788e = 0;
                    bd.e eVar4 = gVar.f17792f;
                    eVar4.getClass();
                    eVar4.f2794k = new sb.a(eVar4);
                    eVar4.f2786c = 0;
                    ((ArrayList) eVar4.f2793j).clear();
                    eVar4.l = null;
                    eVar4.f2788e = 0;
                    gVar.u(gVar.f17791e, gVar.f17792f);
                    return;
                } catch (InterruptedException e7) {
                    throw new RuntimeException("Unable to wait for lock", e7);
                }
            }
            if ((cVar instanceof wb.n) && this.H) {
                wb.n nVar = new wb.n(this, this.f8716h1, this.S0, (wb.n) this.f8719j, z);
                this.f8719j.m();
                this.f8719j = nVar;
                return;
            }
            cVar.m();
        }
        if (this.H) {
            this.F1.C = (int) R();
            this.f8719j = new wb.n(this, this.f8716h1, this.S0, null, false);
        } else {
            this.f8719j = new wb.g(this, this.f8716h1);
        }
        u uVar = this.f8732q1;
        if (uVar != null) {
            uVar.j(0.0f, 0.0f, false);
        }
    }

    public final String y() {
        gb.b editorLanguage = getEditorLanguage();
        int tabWidth = getTabWidth();
        int tabWidth2 = getTabWidth();
        editorLanguage.getClass();
        return mb.k.b(tabWidth, tabWidth2);
    }

    public final void z() {
        if (this.g1.a()) {
            v(true);
            A();
            V();
            return;
        }
        j cursor = getCursor();
        if (cursor.a()) {
            z();
            return;
        }
        mb.b bVarA = cursor.f11081c.a();
        int i10 = bVarA.f11057b;
        int i11 = getText().o(bVarA.f11057b).f11076c;
        int i12 = i10 + 1;
        if (i12 != getLineCount()) {
            i0(i10, 0, i12, 0);
        } else {
            if (getText().o(i10).f11076c == 0) {
                v(false);
                return;
            }
            i0(i10, 0, i10, getText().o(i10).f11076c);
        }
        z();
        this.C1.getClass();
    }
}
