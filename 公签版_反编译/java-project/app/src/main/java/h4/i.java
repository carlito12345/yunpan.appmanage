package h4;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Picture;
import android.graphics.RectF;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.yunpan.appmanage.R;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class i extends t {
    public static final String[] A = {"android:visibility:visibility", "android:visibility:parent"};
    public final int z;

    public i(int i10) {
        this();
        this.z = i10;
    }

    public static void H(a0 a0Var) {
        int visibility = a0Var.f6414b.getVisibility();
        HashMap map = a0Var.f6413a;
        map.put("android:visibility:visibility", Integer.valueOf(visibility));
        View view = a0Var.f6414b;
        map.put("android:visibility:parent", view.getParent());
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        map.put("android:visibility:screenLocation", iArr);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x002f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static m0 J(a0 a0Var, a0 a0Var2) {
        m0 m0Var = new m0();
        m0Var.f6460c = false;
        m0Var.f6461d = false;
        if (a0Var != null) {
            HashMap map = a0Var.f6413a;
            if (map.containsKey("android:visibility:visibility")) {
                m0Var.f6458a = ((Integer) map.get("android:visibility:visibility")).intValue();
                m0Var.f6462e = (ViewGroup) map.get("android:visibility:parent");
            } else {
                m0Var.f6458a = -1;
                m0Var.f6462e = null;
            }
        }
        if (a0Var2 != null) {
            HashMap map2 = a0Var2.f6413a;
            if (map2.containsKey("android:visibility:visibility")) {
                m0Var.f6459b = ((Integer) map2.get("android:visibility:visibility")).intValue();
                m0Var.f6463f = (ViewGroup) map2.get("android:visibility:parent");
            } else {
                m0Var.f6459b = -1;
                m0Var.f6463f = null;
            }
        }
        if (a0Var != null && a0Var2 != null) {
            int i10 = m0Var.f6458a;
            int i11 = m0Var.f6459b;
            if (i10 == i11 && ((ViewGroup) m0Var.f6462e) == ((ViewGroup) m0Var.f6463f)) {
                return m0Var;
            }
            if (i10 != i11) {
                if (i10 == 0) {
                    m0Var.f6461d = false;
                    m0Var.f6460c = true;
                } else if (i11 == 0) {
                    m0Var.f6461d = true;
                    m0Var.f6460c = true;
                }
            } else if (((ViewGroup) m0Var.f6463f) == null) {
                m0Var.f6461d = false;
                m0Var.f6460c = true;
            } else if (((ViewGroup) m0Var.f6462e) == null) {
                m0Var.f6461d = true;
                m0Var.f6460c = true;
            }
        } else if (a0Var == null && m0Var.f6459b == 0) {
            m0Var.f6461d = true;
            m0Var.f6460c = true;
        } else if (a0Var2 == null && m0Var.f6458a == 0) {
            m0Var.f6461d = false;
            m0Var.f6460c = true;
        }
        return m0Var;
    }

    public final ObjectAnimator I(View view, float f10, float f11) {
        if (f10 == f11) {
            return null;
        }
        d0.f6422a.H(view, f10);
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, d0.f6423b, f11);
        objectAnimatorOfFloat.addListener(new androidx.recyclerview.widget.b0(view));
        a(new h(0, view));
        return objectAnimatorOfFloat;
    }

    @Override // h4.t
    public final void d(a0 a0Var) {
        H(a0Var);
    }

    @Override // h4.t
    public final void g(a0 a0Var) {
        H(a0Var);
        a0Var.f6413a.put("android:fade:transitionAlpha", Float.valueOf(d0.f6422a.C(a0Var.f6414b)));
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x004d, code lost:
    
        if (J(n(r3, false), q(r3, false)).f6460c != false) goto L20;
     */
    /* JADX WARN: Removed duplicated region for block: B:100:0x0238  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x017e  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x01ee  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0201  */
    @Override // h4.t
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Animator k(ViewGroup viewGroup, a0 a0Var, a0 a0Var2) {
        View view;
        boolean z;
        int i10;
        Object obj;
        View view2;
        a0 a0Var3;
        View view3;
        boolean z4;
        boolean zIsAttachedToWindow;
        boolean z10;
        ViewGroup viewGroup2;
        int i11;
        int iRound;
        Bitmap bitmapCreateBitmap;
        float f10;
        float fFloatValue;
        float f11;
        float fFloatValue2;
        Float f12;
        int i12 = this.z;
        m0 m0VarJ = J(a0Var, a0Var2);
        if (!m0VarJ.f6460c || (((ViewGroup) m0VarJ.f6462e) == null && ((ViewGroup) m0VarJ.f6463f) == null)) {
            return null;
        }
        boolean z11 = true;
        if (m0VarJ.f6461d) {
            if ((i12 & 1) == 1 && a0Var2 != null) {
                View view4 = a0Var2.f6414b;
                if (a0Var == null) {
                    View view5 = (View) view4.getParent();
                }
                float fFloatValue3 = (a0Var == null || (f12 = (Float) a0Var.f6413a.get("android:fade:transitionAlpha")) == null) ? 0.0f : f12.floatValue();
                return I(view4, fFloatValue3 != 1.0f ? fFloatValue3 : 0.0f, 1.0f);
            }
            return null;
        }
        int i13 = m0VarJ.f6459b;
        if ((i12 & 2) == 2 && a0Var != null) {
            View view6 = a0Var2 != null ? a0Var2.f6414b : null;
            View view7 = a0Var.f6414b;
            View view8 = (View) view7.getTag(R.id.save_overlay_view);
            if (view8 != null) {
                a0Var3 = a0Var;
                i10 = i13;
                obj = "android:fade:transitionAlpha";
                view3 = null;
            } else {
                if (view6 == null || view6.getParent() == null) {
                    if (view6 != null) {
                        view = null;
                        z = false;
                    }
                    view6 = null;
                    view = null;
                    z = true;
                } else {
                    if (i13 == 4 || view7 == view6) {
                        view = view6;
                        view6 = null;
                        z = false;
                    }
                    view6 = null;
                    view = null;
                    z = true;
                }
                if (!z) {
                    i10 = i13;
                    obj = "android:fade:transitionAlpha";
                    view2 = view;
                    a0Var3 = a0Var;
                    view8 = view6;
                    view3 = view2;
                    z11 = false;
                } else if (view7.getParent() == null) {
                    a0Var3 = a0Var;
                    i10 = i13;
                    obj = "android:fade:transitionAlpha";
                    view3 = view;
                    z11 = false;
                    view8 = view7;
                } else {
                    if (view7.getParent() instanceof View) {
                        View view9 = (View) view7.getParent();
                        if (J(q(view9, true), n(view9, true)).f6460c) {
                            i10 = i13;
                            obj = "android:fade:transitionAlpha";
                            view2 = view;
                            int id2 = view9.getId();
                            if (view9.getParent() == null && id2 != -1) {
                                viewGroup.findViewById(id2);
                            }
                        } else {
                            boolean z12 = z.f6510a;
                            Matrix matrix = new Matrix();
                            matrix.setTranslate(-view9.getScrollX(), -view9.getScrollY());
                            gf.g gVar = d0.f6422a;
                            gVar.J(view7, matrix);
                            gVar.K(viewGroup, matrix);
                            RectF rectF = new RectF(0.0f, 0.0f, view7.getWidth(), view7.getHeight());
                            matrix.mapRect(rectF);
                            int iRound2 = Math.round(rectF.left);
                            int iRound3 = Math.round(rectF.top);
                            int iRound4 = Math.round(rectF.right);
                            int iRound5 = Math.round(rectF.bottom);
                            ImageView imageView = new ImageView(view7.getContext());
                            imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
                            if (z.f6510a) {
                                z4 = !view7.isAttachedToWindow();
                                if (viewGroup != null) {
                                    zIsAttachedToWindow = viewGroup.isAttachedToWindow();
                                }
                                z10 = z.f6511b;
                                if (z10 || !z4) {
                                    view2 = view;
                                    viewGroup2 = null;
                                    i11 = 0;
                                } else if (zIsAttachedToWindow) {
                                    ViewGroup viewGroup3 = (ViewGroup) view7.getParent();
                                    int iIndexOfChild = viewGroup3.indexOfChild(view7);
                                    viewGroup.getOverlay().add(view7);
                                    viewGroup2 = viewGroup3;
                                    view2 = view;
                                    i11 = iIndexOfChild;
                                } else {
                                    i10 = i13;
                                    obj = "android:fade:transitionAlpha";
                                    view2 = view;
                                    bitmapCreateBitmap = null;
                                    if (bitmapCreateBitmap != null) {
                                        imageView.setImageBitmap(bitmapCreateBitmap);
                                    }
                                    imageView.measure(View.MeasureSpec.makeMeasureSpec(iRound4 - iRound2, 1073741824), View.MeasureSpec.makeMeasureSpec(iRound5 - iRound3, 1073741824));
                                    imageView.layout(iRound2, iRound3, iRound4, iRound5);
                                    a0Var3 = a0Var;
                                    view8 = imageView;
                                    view3 = view2;
                                    z11 = false;
                                }
                                i10 = i13;
                                iRound = Math.round(rectF.width());
                                int iRound6 = Math.round(rectF.height());
                                if (iRound > 0 || iRound6 <= 0) {
                                    obj = "android:fade:transitionAlpha";
                                    bitmapCreateBitmap = null;
                                } else {
                                    obj = "android:fade:transitionAlpha";
                                    float fMin = Math.min(1.0f, 1048576.0f / (iRound * iRound6));
                                    int iRound7 = Math.round(iRound * fMin);
                                    int iRound8 = Math.round(iRound6 * fMin);
                                    matrix.postTranslate(-rectF.left, -rectF.top);
                                    matrix.postScale(fMin, fMin);
                                    if (z.f6512c) {
                                        Picture picture = new Picture();
                                        Canvas canvasBeginRecording = picture.beginRecording(iRound7, iRound8);
                                        canvasBeginRecording.concat(matrix);
                                        view7.draw(canvasBeginRecording);
                                        picture.endRecording();
                                        bitmapCreateBitmap = Bitmap.createBitmap(picture);
                                    } else {
                                        bitmapCreateBitmap = Bitmap.createBitmap(iRound7, iRound8, Bitmap.Config.ARGB_8888);
                                        Canvas canvas = new Canvas(bitmapCreateBitmap);
                                        canvas.concat(matrix);
                                        view7.draw(canvas);
                                    }
                                }
                                if (z10 && z4) {
                                    viewGroup.getOverlay().remove(view7);
                                    viewGroup2.addView(view7, i11);
                                }
                                if (bitmapCreateBitmap != null) {
                                }
                                imageView.measure(View.MeasureSpec.makeMeasureSpec(iRound4 - iRound2, 1073741824), View.MeasureSpec.makeMeasureSpec(iRound5 - iRound3, 1073741824));
                                imageView.layout(iRound2, iRound3, iRound4, iRound5);
                                a0Var3 = a0Var;
                                view8 = imageView;
                                view3 = view2;
                                z11 = false;
                            } else {
                                z4 = false;
                            }
                            zIsAttachedToWindow = false;
                            z10 = z.f6511b;
                            if (z10) {
                                view2 = view;
                                viewGroup2 = null;
                                i11 = 0;
                                i10 = i13;
                                iRound = Math.round(rectF.width());
                                int iRound62 = Math.round(rectF.height());
                                if (iRound > 0) {
                                    obj = "android:fade:transitionAlpha";
                                    bitmapCreateBitmap = null;
                                    if (z10) {
                                        viewGroup.getOverlay().remove(view7);
                                        viewGroup2.addView(view7, i11);
                                    }
                                    if (bitmapCreateBitmap != null) {
                                    }
                                    imageView.measure(View.MeasureSpec.makeMeasureSpec(iRound4 - iRound2, 1073741824), View.MeasureSpec.makeMeasureSpec(iRound5 - iRound3, 1073741824));
                                    imageView.layout(iRound2, iRound3, iRound4, iRound5);
                                    a0Var3 = a0Var;
                                    view8 = imageView;
                                    view3 = view2;
                                    z11 = false;
                                }
                            }
                        }
                    }
                    a0Var3 = a0Var;
                    view8 = view6;
                    view3 = view2;
                    z11 = false;
                }
            }
            HashMap map = a0Var3.f6413a;
            if (view8 != null) {
                if (!z11) {
                    int[] iArr = (int[]) map.get("android:visibility:screenLocation");
                    int i14 = iArr[0];
                    int i15 = iArr[1];
                    int[] iArr2 = new int[2];
                    viewGroup.getLocationOnScreen(iArr2);
                    view8.offsetLeftAndRight((i14 - iArr2[0]) - view8.getLeft());
                    view8.offsetTopAndBottom((i15 - iArr2[1]) - view8.getTop());
                    android.support.v4.media.session.b.m(viewGroup).k(view8);
                }
                d0.f6422a.F(view8);
                Float f13 = (Float) map.get(obj);
                if (f13 != null) {
                    fFloatValue2 = f13.floatValue();
                    f11 = 0.0f;
                } else {
                    f11 = 0.0f;
                    fFloatValue2 = 1.0f;
                }
                ObjectAnimator objectAnimatorI = I(view8, fFloatValue2, f11);
                if (z11) {
                    return objectAnimatorI;
                }
                if (objectAnimatorI == null) {
                    android.support.v4.media.session.b.m(viewGroup).D(view8);
                    return objectAnimatorI;
                }
                view7.setTag(R.id.save_overlay_view, view8);
                a(new k0(this, viewGroup, view8, view7));
                return objectAnimatorI;
            }
            Object obj2 = obj;
            if (view3 != null) {
                int visibility = view3.getVisibility();
                gf.g gVar2 = d0.f6422a;
                gVar2.I(0, view3);
                gVar2.F(view3);
                Float f14 = (Float) map.get(obj2);
                if (f14 != null) {
                    fFloatValue = f14.floatValue();
                    f10 = 0.0f;
                } else {
                    f10 = 0.0f;
                    fFloatValue = 1.0f;
                }
                ObjectAnimator objectAnimatorI2 = I(view3, fFloatValue, f10);
                if (objectAnimatorI2 != null) {
                    l0 l0Var = new l0(i10, view3);
                    objectAnimatorI2.addListener(l0Var);
                    if (Build.VERSION.SDK_INT >= 19) {
                        objectAnimatorI2.addPauseListener(l0Var);
                    }
                    a(l0Var);
                } else {
                    gVar2.I(visibility, view3);
                }
                return objectAnimatorI2;
            }
        }
        return null;
    }

    @Override // h4.t
    public final String[] p() {
        return A;
    }

    @Override // h4.t
    public final boolean r(a0 a0Var, a0 a0Var2) {
        if (a0Var == null && a0Var2 == null) {
            return false;
        }
        if (a0Var != null && a0Var2 != null && a0Var2.f6413a.containsKey("android:visibility:visibility") != a0Var.f6413a.containsKey("android:visibility:visibility")) {
            return false;
        }
        m0 m0VarJ = J(a0Var, a0Var2);
        if (m0VarJ.f6460c) {
            return m0VarJ.f6458a == 0 || m0VarJ.f6459b == 0;
        }
        return false;
    }

    public i() {
        this.z = 3;
    }
}
