package i4;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.AnimatorSet;
import android.animation.ArgbEvaluator;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Xml;
import java.io.IOException;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public final class f extends j implements Animatable {

    /* renamed from: h, reason: collision with root package name */
    public static final /* synthetic */ int f8531h = 0;

    /* renamed from: b, reason: collision with root package name */
    public final d f8532b;

    /* renamed from: c, reason: collision with root package name */
    public final Context f8533c;

    /* renamed from: d, reason: collision with root package name */
    public ArgbEvaluator f8534d = null;

    /* renamed from: e, reason: collision with root package name */
    public h4.q f8535e = null;

    /* renamed from: f, reason: collision with root package name */
    public ArrayList f8536f = null;

    /* renamed from: g, reason: collision with root package name */
    public final c f8537g;

    public f(Context context) {
        c cVar = new c(this);
        this.f8537g = cVar;
        this.f8533c = context;
        this.f8532b = new d(cVar);
    }

    public final void a(Animator animator) {
        ArrayList<Animator> childAnimations;
        if ((animator instanceof AnimatorSet) && (childAnimations = ((AnimatorSet) animator).getChildAnimations()) != null) {
            for (int i10 = 0; i10 < childAnimations.size(); i10++) {
                a(childAnimations.get(i10));
            }
        }
        if (animator instanceof ObjectAnimator) {
            ObjectAnimator objectAnimator = (ObjectAnimator) animator;
            String propertyName = objectAnimator.getPropertyName();
            if ("fillColor".equals(propertyName) || "strokeColor".equals(propertyName)) {
                if (this.f8534d == null) {
                    this.f8534d = new ArgbEvaluator();
                }
                objectAnimator.setEvaluator(this.f8534d);
            }
        }
    }

    @Override // i4.j, android.graphics.drawable.Drawable
    public final void applyTheme(Resources.Theme theme) {
        Drawable drawable = this.f8543a;
        if (drawable == null || Build.VERSION.SDK_INT < 21) {
            return;
        }
        q0.b.a(drawable, theme);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean canApplyTheme() {
        Drawable drawable = this.f8543a;
        if (drawable == null || Build.VERSION.SDK_INT < 21) {
            return false;
        }
        return q0.b.b(drawable);
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        Drawable drawable = this.f8543a;
        if (drawable != null) {
            drawable.draw(canvas);
            return;
        }
        d dVar = this.f8532b;
        dVar.f8525a.draw(canvas);
        if (dVar.f8526b.isStarted()) {
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final int getAlpha() {
        Drawable drawable = this.f8543a;
        if (drawable == null) {
            return this.f8532b.f8525a.getAlpha();
        }
        if (Build.VERSION.SDK_INT >= 19) {
            return q0.a.a(drawable);
        }
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getChangingConfigurations() {
        Drawable drawable = this.f8543a;
        if (drawable != null) {
            return drawable.getChangingConfigurations();
        }
        int changingConfigurations = super.getChangingConfigurations();
        this.f8532b.getClass();
        return changingConfigurations;
    }

    @Override // android.graphics.drawable.Drawable
    public final ColorFilter getColorFilter() {
        Drawable drawable = this.f8543a;
        if (drawable == null) {
            return this.f8532b.f8525a.getColorFilter();
        }
        if (Build.VERSION.SDK_INT >= 21) {
            return q0.b.c(drawable);
        }
        return null;
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        if (this.f8543a == null || Build.VERSION.SDK_INT < 24) {
            return null;
        }
        return new e(0, this.f8543a.getConstantState());
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        Drawable drawable = this.f8543a;
        return drawable != null ? drawable.getIntrinsicHeight() : this.f8532b.f8525a.getIntrinsicHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        Drawable drawable = this.f8543a;
        return drawable != null ? drawable.getIntrinsicWidth() : this.f8532b.f8525a.getIntrinsicWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        Drawable drawable = this.f8543a;
        return drawable != null ? drawable.getOpacity() : this.f8532b.f8525a.getOpacity();
    }

    /* JADX WARN: Code restructure failed: missing block: B:75:0x0176, code lost:
    
        if (r9.f8526b != null) goto L77;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0178, code lost:
    
        r9.f8526b = new android.animation.AnimatorSet();
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x017f, code lost:
    
        r9.f8526b.playTogether(r9.f8527c);
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0186, code lost:
    
        return;
     */
    @Override // android.graphics.drawable.Drawable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, Resources.NotFoundException, IOException {
        int i10;
        Animator animatorA;
        s sVar;
        int next;
        Resources resources2 = resources;
        Drawable drawable = this.f8543a;
        if (drawable != null) {
            if (Build.VERSION.SDK_INT >= 21) {
                q0.b.d(drawable, resources2, xmlPullParser, attributeSet, theme);
                return;
            } else {
                drawable.inflate(resources2, xmlPullParser, attributeSet);
                return;
            }
        }
        int eventType = xmlPullParser.getEventType();
        int i11 = 1;
        int depth = xmlPullParser.getDepth() + 1;
        while (true) {
            d dVar = this.f8532b;
            if (eventType == i11 || (xmlPullParser.getDepth() < depth && eventType == 3)) {
                break;
            }
            if (eventType == 2) {
                String name = xmlPullParser.getName();
                XmlResourceParser animation = null;
                if ("animated-vector".equals(name)) {
                    TypedArray typedArrayG = o0.b.g(resources2, theme, attributeSet, a.f8515e);
                    int resourceId = typedArrayG.getResourceId(0, 0);
                    if (resourceId != 0) {
                        PorterDuff.Mode mode = s.f8595j;
                        if (Build.VERSION.SDK_INT >= 24) {
                            sVar = new s();
                            sVar.f8543a = o0.o.b(resources2, resourceId, theme);
                            new r(sVar.f8543a.getConstantState());
                        } else {
                            try {
                                XmlResourceParser xml = resources2.getXml(resourceId);
                                AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xml);
                                do {
                                    next = xml.next();
                                    if (next == 2) {
                                        break;
                                    }
                                } while (next != i11);
                                if (next != 2) {
                                    throw new XmlPullParserException("No start tag found");
                                }
                                sVar = new s();
                                sVar.inflate(resources2, xml, attributeSetAsAttributeSet, theme);
                            } catch (IOException | XmlPullParserException unused) {
                                sVar = null;
                            }
                        }
                        sVar.f8600f = false;
                        sVar.setCallback(this.f8537g);
                        s sVar2 = dVar.f8525a;
                        if (sVar2 != null) {
                            sVar2.setCallback(null);
                        }
                        dVar.f8525a = sVar;
                    }
                    typedArrayG.recycle();
                } else if ("target".equals(name)) {
                    TypedArray typedArrayObtainAttributes = resources2.obtainAttributes(attributeSet, a.f8516f);
                    String string = typedArrayObtainAttributes.getString(0);
                    int resourceId2 = typedArrayObtainAttributes.getResourceId(i11, 0);
                    if (resourceId2 != 0) {
                        Context context = this.f8533c;
                        if (context == null) {
                            typedArrayObtainAttributes.recycle();
                            throw new IllegalStateException("Context can't be null when inflating animators");
                        }
                        int i12 = Build.VERSION.SDK_INT;
                        if (i12 >= 24) {
                            animatorA = AnimatorInflater.loadAnimator(context, resourceId2);
                            i10 = i12;
                        } else {
                            Resources resources3 = context.getResources();
                            Resources.Theme theme2 = context.getTheme();
                            try {
                                try {
                                    try {
                                        animation = resources3.getAnimation(resourceId2);
                                        i10 = i12;
                                        animatorA = a.a(context, resources3, theme2, animation, Xml.asAttributeSet(animation), null, 0);
                                        animation.close();
                                    } catch (XmlPullParserException e7) {
                                        Resources.NotFoundException notFoundException = new Resources.NotFoundException("Can't load animation resource ID #0x" + Integer.toHexString(resourceId2));
                                        notFoundException.initCause(e7);
                                        throw notFoundException;
                                    }
                                } catch (IOException e10) {
                                    Resources.NotFoundException notFoundException2 = new Resources.NotFoundException("Can't load animation resource ID #0x" + Integer.toHexString(resourceId2));
                                    notFoundException2.initCause(e10);
                                    throw notFoundException2;
                                }
                            } catch (Throwable th2) {
                                if (animation != null) {
                                    animation.close();
                                }
                                throw th2;
                            }
                        }
                        animatorA.setTarget(dVar.f8525a.f8596b.f8584b.f8582o.get(string));
                        if (i10 < 21) {
                            a(animatorA);
                        }
                        if (dVar.f8527c == null) {
                            dVar.f8527c = new ArrayList();
                            dVar.f8528d = new a0.e();
                        }
                        dVar.f8527c.add(animatorA);
                        dVar.f8528d.put(animatorA, string);
                    }
                    typedArrayObtainAttributes.recycle();
                } else {
                    continue;
                }
            }
            eventType = xmlPullParser.next();
            resources2 = resources;
            i11 = 1;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isAutoMirrored() {
        Drawable drawable = this.f8543a;
        if (drawable == null) {
            return this.f8532b.f8525a.isAutoMirrored();
        }
        if (Build.VERSION.SDK_INT >= 19) {
            return q0.a.d(drawable);
        }
        return false;
    }

    @Override // android.graphics.drawable.Animatable
    public final boolean isRunning() {
        Drawable drawable = this.f8543a;
        return drawable != null ? g7.d.j(drawable).isRunning() : this.f8532b.f8526b.isRunning();
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isStateful() {
        Drawable drawable = this.f8543a;
        return drawable != null ? drawable.isStateful() : this.f8532b.f8525a.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable mutate() {
        Drawable drawable = this.f8543a;
        if (drawable != null) {
            drawable.mutate();
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        Drawable drawable = this.f8543a;
        if (drawable != null) {
            drawable.setBounds(rect);
        } else {
            this.f8532b.f8525a.setBounds(rect);
        }
    }

    @Override // i4.j, android.graphics.drawable.Drawable
    public final boolean onLevelChange(int i10) {
        Drawable drawable = this.f8543a;
        return drawable != null ? drawable.setLevel(i10) : this.f8532b.f8525a.setLevel(i10);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onStateChange(int[] iArr) {
        Drawable drawable = this.f8543a;
        return drawable != null ? drawable.setState(iArr) : this.f8532b.f8525a.setState(iArr);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i10) {
        Drawable drawable = this.f8543a;
        if (drawable != null) {
            drawable.setAlpha(i10);
        } else {
            this.f8532b.f8525a.setAlpha(i10);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAutoMirrored(boolean z) {
        Drawable drawable = this.f8543a;
        if (drawable != null) {
            com.bumptech.glide.c.a0(drawable, z);
        } else {
            this.f8532b.f8525a.setAutoMirrored(z);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        Drawable drawable = this.f8543a;
        if (drawable != null) {
            drawable.setColorFilter(colorFilter);
        } else {
            this.f8532b.f8525a.setColorFilter(colorFilter);
        }
    }

    @Override // android.graphics.drawable.Drawable, q0.h
    public final void setTint(int i10) {
        Drawable drawable = this.f8543a;
        if (drawable != null) {
            com.bumptech.glide.c.e0(drawable, i10);
        } else {
            this.f8532b.f8525a.setTint(i10);
        }
    }

    @Override // android.graphics.drawable.Drawable, q0.h
    public final void setTintList(ColorStateList colorStateList) {
        Drawable drawable = this.f8543a;
        if (drawable != null) {
            com.bumptech.glide.c.f0(drawable, colorStateList);
        } else {
            this.f8532b.f8525a.setTintList(colorStateList);
        }
    }

    @Override // android.graphics.drawable.Drawable, q0.h
    public final void setTintMode(PorterDuff.Mode mode) {
        Drawable drawable = this.f8543a;
        if (drawable != null) {
            com.bumptech.glide.c.g0(drawable, mode);
        } else {
            this.f8532b.f8525a.setTintMode(mode);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean setVisible(boolean z, boolean z4) {
        Drawable drawable = this.f8543a;
        if (drawable != null) {
            return drawable.setVisible(z, z4);
        }
        this.f8532b.f8525a.setVisible(z, z4);
        return super.setVisible(z, z4);
    }

    @Override // android.graphics.drawable.Animatable
    public final void start() {
        Drawable drawable = this.f8543a;
        if (drawable != null) {
            g7.d.j(drawable).start();
            return;
        }
        d dVar = this.f8532b;
        if (dVar.f8526b.isStarted()) {
            return;
        }
        dVar.f8526b.start();
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Animatable
    public final void stop() {
        Drawable drawable = this.f8543a;
        if (drawable != null) {
            g7.d.j(drawable).stop();
        } else {
            this.f8532b.f8526b.end();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws XmlPullParserException, Resources.NotFoundException, IOException {
        inflate(resources, xmlPullParser, attributeSet, null);
    }
}
