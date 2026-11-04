package androidx.leanback.widget;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;

/* loaded from: classes.dex */
public abstract class v {

    /* renamed from: a, reason: collision with root package name */
    public static final Rect f1729a = new Rect();

    public static int a(View view, u uVar, int i10) {
        View viewFindViewById;
        int height;
        int width;
        int width2;
        int width3;
        n nVar = (n) view.getLayoutParams();
        int i11 = uVar.f1717a;
        if (i11 == 0 || (viewFindViewById = view.findViewById(i11)) == null) {
            viewFindViewById = view;
        }
        int paddingBottom = uVar.f1718b;
        Rect rect = f1729a;
        if (i10 != 0) {
            if (uVar.f1720d) {
                float f10 = uVar.f1719c;
                if (f10 == 0.0f) {
                    paddingBottom += viewFindViewById.getPaddingTop();
                } else if (f10 == 100.0f) {
                    paddingBottom -= viewFindViewById.getPaddingBottom();
                }
            }
            if (uVar.f1719c != -1.0f) {
                if (viewFindViewById == view) {
                    nVar.getClass();
                    height = (viewFindViewById.getHeight() - nVar.f1665b) - nVar.f1667d;
                } else {
                    height = viewFindViewById.getHeight();
                }
                paddingBottom += (int) ((height * uVar.f1719c) / 100.0f);
            }
            if (view == viewFindViewById) {
                return paddingBottom;
            }
            rect.top = paddingBottom;
            ((ViewGroup) view).offsetDescendantRectToMyCoords(viewFindViewById, rect);
            return rect.top - nVar.f1665b;
        }
        if (view.getLayoutDirection() != 1) {
            if (uVar.f1720d) {
                float f11 = uVar.f1719c;
                if (f11 == 0.0f) {
                    paddingBottom += viewFindViewById.getPaddingLeft();
                } else if (f11 == 100.0f) {
                    paddingBottom -= viewFindViewById.getPaddingRight();
                }
            }
            if (uVar.f1719c != -1.0f) {
                if (viewFindViewById == view) {
                    nVar.getClass();
                    width = (viewFindViewById.getWidth() - nVar.f1664a) - nVar.f1666c;
                } else {
                    width = viewFindViewById.getWidth();
                }
                paddingBottom += (int) ((width * uVar.f1719c) / 100.0f);
            }
            int i12 = paddingBottom;
            if (view == viewFindViewById) {
                return i12;
            }
            rect.left = i12;
            ((ViewGroup) view).offsetDescendantRectToMyCoords(viewFindViewById, rect);
            return rect.left - nVar.f1664a;
        }
        if (viewFindViewById == view) {
            nVar.getClass();
            width2 = (viewFindViewById.getWidth() - nVar.f1664a) - nVar.f1666c;
        } else {
            width2 = viewFindViewById.getWidth();
        }
        int paddingLeft = width2 - paddingBottom;
        if (uVar.f1720d) {
            float f12 = uVar.f1719c;
            if (f12 == 0.0f) {
                paddingLeft -= viewFindViewById.getPaddingRight();
            } else if (f12 == 100.0f) {
                paddingLeft += viewFindViewById.getPaddingLeft();
            }
        }
        if (uVar.f1719c != -1.0f) {
            if (viewFindViewById == view) {
                nVar.getClass();
                width3 = (viewFindViewById.getWidth() - nVar.f1664a) - nVar.f1666c;
            } else {
                width3 = viewFindViewById.getWidth();
            }
            paddingLeft -= (int) ((width3 * uVar.f1719c) / 100.0f);
        }
        if (view == viewFindViewById) {
            return paddingLeft;
        }
        rect.right = paddingLeft;
        ((ViewGroup) view).offsetDescendantRectToMyCoords(viewFindViewById, rect);
        return rect.right + nVar.f1666c;
    }
}
