package w;

import android.R;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Shader;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ClipDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.os.Build;
import android.text.method.KeyListener;
import android.text.method.NumberKeyListener;
import android.util.AttributeSet;
import android.view.View;
import android.widget.AbsSeekBar;
import android.widget.EditText;

/* loaded from: classes.dex */
public class b0 {

    /* renamed from: d, reason: collision with root package name */
    public static final int[] f17019d = {R.attr.indeterminateDrawable, R.attr.progressDrawable};

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f17020a;

    /* renamed from: b, reason: collision with root package name */
    public final View f17021b;

    /* renamed from: c, reason: collision with root package name */
    public Object f17022c;

    public /* synthetic */ b0(int i10, View view) {
        this.f17020a = i10;
        this.f17021b = view;
    }

    public KeyListener a(KeyListener keyListener) {
        return !(keyListener instanceof NumberKeyListener) ? ((ha.j2) ((h5.m) this.f17022c).f6611b).c(keyListener) : keyListener;
    }

    public void b(AttributeSet attributeSet, int i10) {
        switch (this.f17020a) {
            case 0:
                AbsSeekBar absSeekBar = (AbsSeekBar) this.f17021b;
                s4.a aVarJ = s4.a.j(absSeekBar.getContext(), attributeSet, f17019d, i10);
                Drawable drawableF = aVarJ.f(0);
                if (drawableF != null) {
                    if (drawableF instanceof AnimationDrawable) {
                        AnimationDrawable animationDrawable = (AnimationDrawable) drawableF;
                        int numberOfFrames = animationDrawable.getNumberOfFrames();
                        AnimationDrawable animationDrawable2 = new AnimationDrawable();
                        animationDrawable2.setOneShot(animationDrawable.isOneShot());
                        for (int i11 = 0; i11 < numberOfFrames; i11++) {
                            Drawable drawableC = c(animationDrawable.getFrame(i11), true);
                            drawableC.setLevel(10000);
                            animationDrawable2.addFrame(drawableC, animationDrawable.getDuration(i11));
                        }
                        animationDrawable2.setLevel(10000);
                        drawableF = animationDrawable2;
                    }
                    absSeekBar.setIndeterminateDrawable(drawableF);
                }
                Drawable drawableF2 = aVarJ.f(1);
                if (drawableF2 != null) {
                    absSeekBar.setProgressDrawable(c(drawableF2, false));
                }
                aVarJ.r();
                return;
            default:
                TypedArray typedArrayObtainStyledAttributes = ((EditText) this.f17021b).getContext().obtainStyledAttributes(attributeSet, p.a.f12523i, i10, 0);
                try {
                    boolean z = typedArrayObtainStyledAttributes.hasValue(14) ? typedArrayObtainStyledAttributes.getBoolean(14, true) : true;
                    typedArrayObtainStyledAttributes.recycle();
                    ((ha.j2) ((h5.m) this.f17022c).f6611b).O(z);
                    return;
                } catch (Throwable th2) {
                    typedArrayObtainStyledAttributes.recycle();
                    throw th2;
                }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Drawable c(Drawable drawable, boolean z) {
        if (drawable instanceof q0.i) {
            q0.j jVar = (q0.j) ((q0.i) drawable);
            Drawable drawable2 = jVar.f12923f;
            if (drawable2 != null) {
                jVar.b(c(drawable2, z));
            }
        } else {
            if (drawable instanceof LayerDrawable) {
                LayerDrawable layerDrawable = (LayerDrawable) drawable;
                int numberOfLayers = layerDrawable.getNumberOfLayers();
                Drawable[] drawableArr = new Drawable[numberOfLayers];
                for (int i10 = 0; i10 < numberOfLayers; i10++) {
                    int id2 = layerDrawable.getId(i10);
                    drawableArr[i10] = c(layerDrawable.getDrawable(i10), id2 == 16908301 || id2 == 16908303);
                }
                LayerDrawable layerDrawable2 = new LayerDrawable(drawableArr);
                for (int i11 = 0; i11 < numberOfLayers; i11++) {
                    layerDrawable2.setId(i11, layerDrawable.getId(i11));
                    if (Build.VERSION.SDK_INT >= 23) {
                        a0.a(layerDrawable, layerDrawable2, i11);
                    }
                }
                return layerDrawable2;
            }
            if (drawable instanceof BitmapDrawable) {
                BitmapDrawable bitmapDrawable = (BitmapDrawable) drawable;
                Bitmap bitmap = bitmapDrawable.getBitmap();
                if (((Bitmap) this.f17022c) == null) {
                    this.f17022c = bitmap;
                }
                ShapeDrawable shapeDrawable = new ShapeDrawable(new RoundRectShape(new float[]{5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f}, null, null));
                shapeDrawable.getPaint().setShader(new BitmapShader(bitmap, Shader.TileMode.REPEAT, Shader.TileMode.CLAMP));
                shapeDrawable.getPaint().setColorFilter(bitmapDrawable.getPaint().getColorFilter());
                return z ? new ClipDrawable(shapeDrawable, 3, 1) : shapeDrawable;
            }
        }
        return drawable;
    }

    public b0(EditText editText) {
        this.f17020a = 1;
        this.f17021b = editText;
        this.f17022c = new h5.m(editText);
    }
}
