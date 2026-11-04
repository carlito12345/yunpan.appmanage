package s;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.StateSet;
import com.desay_svautomotive.libsvcarinfo.CarSettingID;
import i4.s;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;
import q0.h;
import s1.g;
import w.p2;

/* loaded from: classes.dex */
public final class e extends f implements h {

    /* renamed from: n, reason: collision with root package name */
    public b f13855n;

    /* renamed from: p, reason: collision with root package name */
    public boolean f13856p;

    /* renamed from: q, reason: collision with root package name */
    public b f13857q;
    public g r;

    /* renamed from: s, reason: collision with root package name */
    public int f13858s = -1;

    /* renamed from: t, reason: collision with root package name */
    public int f13859t = -1;

    /* renamed from: v, reason: collision with root package name */
    public boolean f13860v;

    public e(b bVar, Resources resources) {
        d(new b(bVar, this, resources));
        onStateChange(getState());
        jumpToCurrentState();
    }

    /* JADX WARN: Code restructure failed: missing block: B:109:0x0290, code lost:
    
        r5.onStateChange(r5.getState());
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x0297, code lost:
    
        return r5;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static e e(Context context, Resources resources, XmlResourceParser xmlResourceParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, Resources.NotFoundException, IOException {
        int depth;
        int next;
        int next2;
        Context context2 = context;
        Resources resources2 = resources;
        XmlResourceParser xmlResourceParser2 = xmlResourceParser;
        String name = xmlResourceParser.getName();
        if (!name.equals("animated-selector")) {
            throw new XmlPullParserException(xmlResourceParser.getPositionDescription() + ": invalid animated-selector tag " + name);
        }
        e eVar = new e(null, null);
        TypedArray typedArrayG = o0.b.g(resources2, theme, attributeSet, t.d.f14627a);
        int i10 = 1;
        eVar.setVisible(typedArrayG.getBoolean(1, true), true);
        b bVar = eVar.f13857q;
        if (Build.VERSION.SDK_INT >= 21) {
            bVar.f13830d |= t.c.b(typedArrayG);
        }
        int i11 = 2;
        bVar.f13835i = typedArrayG.getBoolean(2, bVar.f13835i);
        int i12 = 3;
        bVar.l = typedArrayG.getBoolean(3, bVar.l);
        bVar.f13849y = typedArrayG.getInt(4, bVar.f13849y);
        bVar.z = typedArrayG.getInt(5, bVar.z);
        boolean z = false;
        eVar.setDither(typedArrayG.getBoolean(0, bVar.f13847w));
        b bVar2 = eVar.f13862a;
        if (resources2 != null) {
            bVar2.f13828b = resources2;
            int i13 = resources.getDisplayMetrics().densityDpi;
            if (i13 == 0) {
                i13 = CarSettingID.Recv.BCS_ATS_DRV_MODE_REQ;
            }
            int i14 = bVar2.f13829c;
            bVar2.f13829c = i13;
            if (i14 != i13) {
                bVar2.f13838m = false;
                bVar2.f13836j = false;
            }
        } else {
            bVar2.getClass();
        }
        typedArrayG.recycle();
        int depth2 = xmlResourceParser.getDepth() + 1;
        while (true) {
            int next3 = xmlResourceParser.next();
            if (next3 == i10 || ((depth = xmlResourceParser.getDepth()) < depth2 && next3 == i12)) {
                break;
            }
            if (next3 == i11 && depth <= depth2) {
                if (xmlResourceParser.getName().equals("item")) {
                    TypedArray typedArrayG2 = o0.b.g(resources2, theme, attributeSet, t.d.f14628b);
                    int resourceId = typedArrayG2.getResourceId(z ? 1 : 0, z ? 1 : 0);
                    int resourceId2 = typedArrayG2.getResourceId(i10, -1);
                    Drawable drawableF = resourceId2 > 0 ? p2.d().f(context2, resourceId2) : null;
                    typedArrayG2.recycle();
                    int attributeCount = attributeSet.getAttributeCount();
                    int[] iArr = new int[attributeCount];
                    int i15 = 0;
                    for (int i16 = 0; i16 < attributeCount; i16++) {
                        int attributeNameResource = attributeSet.getAttributeNameResource(i16);
                        if (attributeNameResource != 0 && attributeNameResource != 16842960 && attributeNameResource != 16843161) {
                            int i17 = i15 + 1;
                            if (!attributeSet.getAttributeBooleanValue(i16, z)) {
                                attributeNameResource = -attributeNameResource;
                            }
                            iArr[i15] = attributeNameResource;
                            i15 = i17;
                        }
                    }
                    int[] iArrTrimStateSet = StateSet.trimStateSet(iArr, i15);
                    if (drawableF == null) {
                        do {
                            next2 = xmlResourceParser.next();
                        } while (next2 == 4);
                        if (next2 != 2) {
                            throw new XmlPullParserException(xmlResourceParser.getPositionDescription() + ": <item> tag requires a 'drawable' attribute or child tag defining a drawable");
                        }
                        if (xmlResourceParser.getName().equals("vector")) {
                            drawableF = new s();
                            drawableF.inflate(resources2, xmlResourceParser2, attributeSet, theme);
                        } else {
                            drawableF = Build.VERSION.SDK_INT >= 21 ? t.c.a(resources, xmlResourceParser, attributeSet, theme) : Drawable.createFromXmlInner(resources, xmlResourceParser, attributeSet);
                        }
                    }
                    if (drawableF == null) {
                        throw new XmlPullParserException(xmlResourceParser.getPositionDescription() + ": <item> tag requires a 'drawable' attribute or child tag defining a drawable");
                    }
                    b bVar3 = eVar.f13857q;
                    int iA = bVar3.a(drawableF);
                    bVar3.H[iA] = iArrTrimStateSet;
                    bVar3.J.d(iA, Integer.valueOf(resourceId));
                } else if (xmlResourceParser.getName().equals("transition")) {
                    TypedArray typedArrayG3 = o0.b.g(resources2, theme, attributeSet, t.d.f14629c);
                    int resourceId3 = typedArrayG3.getResourceId(2, -1);
                    int resourceId4 = typedArrayG3.getResourceId(1, -1);
                    int resourceId5 = typedArrayG3.getResourceId(z ? 1 : 0, -1);
                    Drawable drawableF2 = resourceId5 > 0 ? p2.d().f(context2, resourceId5) : null;
                    boolean z4 = typedArrayG3.getBoolean(3, z);
                    typedArrayG3.recycle();
                    if (drawableF2 == null) {
                        do {
                            next = xmlResourceParser.next();
                        } while (next == 4);
                        if (next != 2) {
                            throw new XmlPullParserException(xmlResourceParser.getPositionDescription() + ": <transition> tag requires a 'drawable' attribute or child tag defining a drawable");
                        }
                        if (xmlResourceParser.getName().equals("animated-vector")) {
                            drawableF2 = new i4.f(context2);
                            drawableF2.inflate(resources2, xmlResourceParser2, attributeSet, theme);
                        } else {
                            drawableF2 = Build.VERSION.SDK_INT >= 21 ? t.c.a(resources, xmlResourceParser, attributeSet, theme) : Drawable.createFromXmlInner(resources, xmlResourceParser, attributeSet);
                        }
                    }
                    if (drawableF2 == null) {
                        throw new XmlPullParserException(xmlResourceParser.getPositionDescription() + ": <transition> tag requires a 'drawable' attribute or child tag defining a drawable");
                    }
                    if (resourceId3 == -1 || resourceId4 == -1) {
                        break;
                    }
                    b bVar4 = eVar.f13857q;
                    int iA2 = bVar4.a(drawableF2);
                    long j10 = resourceId3;
                    long j11 = resourceId4;
                    long j12 = (j10 << 32) | j11;
                    long j13 = z4 ? 8589934592L : 0L;
                    long j14 = iA2;
                    bVar4.I.a(j12, Long.valueOf(j14 | j13));
                    if (z4) {
                        bVar4.I.a((j11 << 32) | j10, Long.valueOf(j14 | 4294967296L | j13));
                    }
                    context2 = context;
                    resources2 = resources;
                    xmlResourceParser2 = xmlResourceParser;
                    i10 = 1;
                    z = false;
                    i11 = 2;
                    i12 = 3;
                } else {
                    context2 = context;
                    resources2 = resources;
                    xmlResourceParser2 = xmlResourceParser;
                }
                i10 = 1;
                i11 = 2;
                i12 = 3;
            }
        }
        throw new XmlPullParserException(xmlResourceParser.getPositionDescription() + ": <transition> tag requires 'fromId' & 'toId' attributes");
    }

    @Override // s.f, android.graphics.drawable.Drawable
    public final void applyTheme(Resources.Theme theme) {
        super.applyTheme(theme);
        onStateChange(getState());
    }

    @Override // s.f
    public final void d(b bVar) {
        this.f13862a = bVar;
        int i10 = this.f13868g;
        if (i10 >= 0) {
            Drawable drawableD = bVar.d(i10);
            this.f13864c = drawableD;
            if (drawableD != null) {
                b(drawableD);
            }
        }
        this.f13865d = null;
        boolean z = bVar instanceof b;
        if (z) {
            this.f13855n = bVar;
        }
        if (z) {
            this.f13857q = bVar;
        }
    }

    public final Drawable f() {
        if (!this.f13856p) {
            super.mutate();
            b bVar = this.f13855n;
            bVar.I = bVar.I.clone();
            bVar.J = bVar.J.clone();
            this.f13856p = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isStateful() {
        return true;
    }

    @Override // s.f, android.graphics.drawable.Drawable
    public final void jumpToCurrentState() {
        super.jumpToCurrentState();
        g gVar = this.r;
        if (gVar != null) {
            gVar.c0();
            this.r = null;
            c(this.f13858s);
            this.f13858s = -1;
            this.f13859t = -1;
        }
    }

    @Override // s.f, android.graphics.drawable.Drawable
    public final Drawable mutate() {
        if (!this.f13860v) {
            f();
            b bVar = this.f13857q;
            bVar.I = bVar.I.clone();
            bVar.J = bVar.J.clone();
            this.f13860v = true;
        }
        return this;
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00d3  */
    @Override // android.graphics.drawable.Drawable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean onStateChange(int[] iArr) {
        int iE;
        g aVar;
        b bVar = this.f13857q;
        int iF = bVar.f(iArr);
        if (iF < 0) {
            iF = bVar.f(StateSet.WILD_CARD);
        }
        int i10 = this.f13868g;
        if (iF != i10) {
            g gVar = this.r;
            if (gVar == null) {
                this.r = null;
                this.f13859t = -1;
                this.f13858s = -1;
                b bVar2 = this.f13857q;
                int iE2 = bVar2.e(i10);
                iE = bVar2.e(iF);
                if (iE == 0 && iE2 != 0) {
                    long j10 = iE | (iE2 << 32);
                    int iLongValue = (int) ((Long) bVar2.I.e(j10)).longValue();
                    if (iLongValue >= 0) {
                        boolean z = (((Long) bVar2.I.e(j10)).longValue() & 8589934592L) != 0;
                        c(iLongValue);
                        Object obj = this.f13864c;
                        if (obj instanceof AnimationDrawable) {
                            aVar = new c((AnimationDrawable) obj, (((Long) bVar2.I.e(j10)).longValue() & 4294967296L) != 0, z);
                        } else if (obj instanceof i4.f) {
                            aVar = new a((i4.f) obj, 1);
                        } else {
                            if (obj instanceof Animatable) {
                                aVar = new a((Animatable) obj, 0);
                            }
                            if (c(iF)) {
                            }
                        }
                        aVar.b0();
                        this.r = aVar;
                        this.f13859t = i10;
                        this.f13858s = iF;
                        z = true;
                    }
                } else if (c(iF)) {
                    z = true;
                }
            } else {
                if (iF != this.f13858s) {
                    if (iF == this.f13859t && gVar.i()) {
                        gVar.S();
                        this.f13858s = this.f13859t;
                        this.f13859t = iF;
                    } else {
                        i10 = this.f13858s;
                        gVar.c0();
                        this.r = null;
                        this.f13859t = -1;
                        this.f13858s = -1;
                        b bVar22 = this.f13857q;
                        int iE22 = bVar22.e(i10);
                        iE = bVar22.e(iF);
                        if (iE == 0) {
                            if (c(iF)) {
                            }
                        }
                    }
                }
                z = true;
            }
        }
        Drawable drawable = this.f13864c;
        return drawable != null ? z | drawable.setState(iArr) : z;
    }

    @Override // s.f, android.graphics.drawable.Drawable
    public final boolean setVisible(boolean z, boolean z4) {
        boolean visible = super.setVisible(z, z4);
        g gVar = this.r;
        if (gVar != null && (visible || z4)) {
            if (z) {
                gVar.b0();
            } else {
                jumpToCurrentState();
            }
        }
        return visible;
    }
}
