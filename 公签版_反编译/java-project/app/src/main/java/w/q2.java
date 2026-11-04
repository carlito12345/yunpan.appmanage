package w;

import android.content.res.AssetFileDescriptor;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Movie;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import java.io.IOException;
import java.io.InputStream;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public abstract class q2 extends Resources {

    /* renamed from: a, reason: collision with root package name */
    public final Resources f17214a;

    public q2(Resources resources) {
        super(resources.getAssets(), resources.getDisplayMetrics(), resources.getConfiguration());
        this.f17214a = resources;
    }

    public final Drawable a(int i10) {
        return super.getDrawable(i10);
    }

    @Override // android.content.res.Resources
    public final XmlResourceParser getAnimation(int i10) {
        return this.f17214a.getAnimation(i10);
    }

    @Override // android.content.res.Resources
    public final boolean getBoolean(int i10) {
        return this.f17214a.getBoolean(i10);
    }

    @Override // android.content.res.Resources
    public final int getColor(int i10) {
        return this.f17214a.getColor(i10);
    }

    @Override // android.content.res.Resources
    public final ColorStateList getColorStateList(int i10) {
        return this.f17214a.getColorStateList(i10);
    }

    @Override // android.content.res.Resources
    public final Configuration getConfiguration() {
        return this.f17214a.getConfiguration();
    }

    @Override // android.content.res.Resources
    public final float getDimension(int i10) {
        return this.f17214a.getDimension(i10);
    }

    @Override // android.content.res.Resources
    public final int getDimensionPixelOffset(int i10) {
        return this.f17214a.getDimensionPixelOffset(i10);
    }

    @Override // android.content.res.Resources
    public final int getDimensionPixelSize(int i10) {
        return this.f17214a.getDimensionPixelSize(i10);
    }

    @Override // android.content.res.Resources
    public final DisplayMetrics getDisplayMetrics() {
        return this.f17214a.getDisplayMetrics();
    }

    @Override // android.content.res.Resources
    public final Drawable getDrawable(int i10, Resources.Theme theme) {
        return o0.o.b(this.f17214a, i10, theme);
    }

    @Override // android.content.res.Resources
    public final Drawable getDrawableForDensity(int i10, int i11) {
        ThreadLocal threadLocal = o0.o.f11472a;
        int i12 = Build.VERSION.SDK_INT;
        Resources resources = this.f17214a;
        return i12 >= 21 ? o0.j.b(resources, i10, i11, null) : o0.i.a(resources, i10, i11);
    }

    @Override // android.content.res.Resources
    public final float getFraction(int i10, int i11, int i12) {
        return this.f17214a.getFraction(i10, i11, i12);
    }

    @Override // android.content.res.Resources
    public final int getIdentifier(String str, String str2, String str3) {
        return this.f17214a.getIdentifier(str, str2, str3);
    }

    @Override // android.content.res.Resources
    public final int[] getIntArray(int i10) {
        return this.f17214a.getIntArray(i10);
    }

    @Override // android.content.res.Resources
    public final int getInteger(int i10) {
        return this.f17214a.getInteger(i10);
    }

    @Override // android.content.res.Resources
    public final XmlResourceParser getLayout(int i10) {
        return this.f17214a.getLayout(i10);
    }

    @Override // android.content.res.Resources
    public final Movie getMovie(int i10) {
        return this.f17214a.getMovie(i10);
    }

    @Override // android.content.res.Resources
    public final String getQuantityString(int i10, int i11, Object... objArr) {
        return this.f17214a.getQuantityString(i10, i11, objArr);
    }

    @Override // android.content.res.Resources
    public final CharSequence getQuantityText(int i10, int i11) {
        return this.f17214a.getQuantityText(i10, i11);
    }

    @Override // android.content.res.Resources
    public final String getResourceEntryName(int i10) {
        return this.f17214a.getResourceEntryName(i10);
    }

    @Override // android.content.res.Resources
    public final String getResourceName(int i10) {
        return this.f17214a.getResourceName(i10);
    }

    @Override // android.content.res.Resources
    public final String getResourcePackageName(int i10) {
        return this.f17214a.getResourcePackageName(i10);
    }

    @Override // android.content.res.Resources
    public final String getResourceTypeName(int i10) {
        return this.f17214a.getResourceTypeName(i10);
    }

    @Override // android.content.res.Resources
    public final String getString(int i10) {
        return this.f17214a.getString(i10);
    }

    @Override // android.content.res.Resources
    public final String[] getStringArray(int i10) {
        return this.f17214a.getStringArray(i10);
    }

    @Override // android.content.res.Resources
    public final CharSequence getText(int i10) {
        return this.f17214a.getText(i10);
    }

    @Override // android.content.res.Resources
    public final CharSequence[] getTextArray(int i10) {
        return this.f17214a.getTextArray(i10);
    }

    @Override // android.content.res.Resources
    public final void getValue(int i10, TypedValue typedValue, boolean z) throws Resources.NotFoundException {
        this.f17214a.getValue(i10, typedValue, z);
    }

    @Override // android.content.res.Resources
    public final void getValueForDensity(int i10, int i11, TypedValue typedValue, boolean z) throws Resources.NotFoundException {
        t.a.a(this.f17214a, i10, i11, typedValue, z);
    }

    @Override // android.content.res.Resources
    public final XmlResourceParser getXml(int i10) {
        return this.f17214a.getXml(i10);
    }

    @Override // android.content.res.Resources
    public final TypedArray obtainAttributes(AttributeSet attributeSet, int[] iArr) {
        return this.f17214a.obtainAttributes(attributeSet, iArr);
    }

    @Override // android.content.res.Resources
    public final TypedArray obtainTypedArray(int i10) {
        return this.f17214a.obtainTypedArray(i10);
    }

    @Override // android.content.res.Resources
    public final InputStream openRawResource(int i10) {
        return this.f17214a.openRawResource(i10);
    }

    @Override // android.content.res.Resources
    public final AssetFileDescriptor openRawResourceFd(int i10) {
        return this.f17214a.openRawResourceFd(i10);
    }

    @Override // android.content.res.Resources
    public final void parseBundleExtra(String str, AttributeSet attributeSet, Bundle bundle) throws XmlPullParserException {
        this.f17214a.parseBundleExtra(str, attributeSet, bundle);
    }

    @Override // android.content.res.Resources
    public final void parseBundleExtras(XmlResourceParser xmlResourceParser, Bundle bundle) throws XmlPullParserException, IOException {
        this.f17214a.parseBundleExtras(xmlResourceParser, bundle);
    }

    @Override // android.content.res.Resources
    public final void updateConfiguration(Configuration configuration, DisplayMetrics displayMetrics) {
        super.updateConfiguration(configuration, displayMetrics);
        Resources resources = this.f17214a;
        if (resources != null) {
            resources.updateConfiguration(configuration, displayMetrics);
        }
    }

    @Override // android.content.res.Resources
    public final String getQuantityString(int i10, int i11) {
        return this.f17214a.getQuantityString(i10, i11);
    }

    @Override // android.content.res.Resources
    public final String getString(int i10, Object... objArr) {
        return this.f17214a.getString(i10, objArr);
    }

    @Override // android.content.res.Resources
    public final CharSequence getText(int i10, CharSequence charSequence) {
        return this.f17214a.getText(i10, charSequence);
    }

    @Override // android.content.res.Resources
    public final void getValue(String str, TypedValue typedValue, boolean z) throws Resources.NotFoundException {
        this.f17214a.getValue(str, typedValue, z);
    }

    @Override // android.content.res.Resources
    public final InputStream openRawResource(int i10, TypedValue typedValue) {
        return this.f17214a.openRawResource(i10, typedValue);
    }

    @Override // android.content.res.Resources
    public final Drawable getDrawableForDensity(int i10, int i11, Resources.Theme theme) {
        ThreadLocal threadLocal = o0.o.f11472a;
        int i12 = Build.VERSION.SDK_INT;
        Resources resources = this.f17214a;
        if (i12 >= 21) {
            return o0.j.b(resources, i10, i11, theme);
        }
        return o0.i.a(resources, i10, i11);
    }
}
