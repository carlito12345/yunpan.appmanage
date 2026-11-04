package w;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;

/* loaded from: classes.dex */
public final class o2 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f17180a;

    public /* synthetic */ o2(int i10) {
        this.f17180a = i10;
    }

    public final Drawable a(Context context, XmlResourceParser xmlResourceParser, AttributeSet attributeSet, Resources.Theme theme) {
        switch (this.f17180a) {
            case 0:
                String classAttribute = attributeSet.getClassAttribute();
                if (classAttribute == null) {
                    return null;
                }
                try {
                    Drawable drawable = (Drawable) o2.class.getClassLoader().loadClass(classAttribute).asSubclass(Drawable.class).getDeclaredConstructor(null).newInstance(null);
                    if (Build.VERSION.SDK_INT >= 21) {
                        t.c.c(drawable, context.getResources(), xmlResourceParser, attributeSet, theme);
                    } else {
                        drawable.inflate(context.getResources(), xmlResourceParser, attributeSet);
                    }
                    return drawable;
                } catch (Exception unused) {
                    return null;
                }
            case 1:
                try {
                    return s.e.e(context, context.getResources(), xmlResourceParser, attributeSet, theme);
                } catch (Exception unused2) {
                    return null;
                }
            case 2:
                try {
                    Resources resources = context.getResources();
                    i4.f fVar = new i4.f(context);
                    fVar.inflate(resources, xmlResourceParser, attributeSet, theme);
                    return fVar;
                } catch (Exception unused3) {
                    return null;
                }
            default:
                try {
                    Resources resources2 = context.getResources();
                    i4.s sVar = new i4.s();
                    sVar.inflate(resources2, xmlResourceParser, attributeSet, theme);
                    return sVar;
                } catch (Exception unused4) {
                    return null;
                }
        }
    }
}
