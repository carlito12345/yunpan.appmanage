package vb;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.PixelCopy;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowId;
import android.widget.ImageView;
import android.widget.PopupWindow;
import com.yunpan.appmanage.R;
import io.github.rosemoe.sora.widget.CodeEditor;
import ua.g5;

/* loaded from: classes.dex */
public final class v {

    /* renamed from: a, reason: collision with root package name */
    public final CodeEditor f16776a;

    /* renamed from: b, reason: collision with root package name */
    public final PopupWindow f16777b;

    /* renamed from: c, reason: collision with root package name */
    public final ImageView f16778c;

    /* renamed from: d, reason: collision with root package name */
    public final Paint f16779d;

    /* renamed from: e, reason: collision with root package name */
    public final float f16780e;

    /* renamed from: f, reason: collision with root package name */
    public int f16781f;

    /* renamed from: g, reason: collision with root package name */
    public int f16782g;

    /* renamed from: h, reason: collision with root package name */
    public final CodeEditor f16783h;

    /* renamed from: i, reason: collision with root package name */
    public final float f16784i;

    public v(CodeEditor codeEditor) {
        this.f16776a = codeEditor;
        db.p pVar = new db.p(codeEditor.f8717i);
        this.f16783h = codeEditor;
        PopupWindow popupWindow = new PopupWindow();
        this.f16777b = popupWindow;
        popupWindow.setElevation(codeEditor.getDpUnit() * 4.0f);
        View viewInflate = LayoutInflater.from(codeEditor.getContext()).inflate(R.layout.magnifier_popup, (ViewGroup) null);
        this.f16778c = (ImageView) viewInflate.findViewById(R.id.magnifier_image_view);
        popupWindow.setHeight((int) (codeEditor.getDpUnit() * 70.0f));
        popupWindow.setWidth((int) (codeEditor.getDpUnit() * 100.0f));
        popupWindow.setContentView(viewInflate);
        this.f16780e = TypedValue.applyDimension(2, 28.0f, viewInflate.getResources().getDisplayMetrics());
        this.f16784i = 1.25f;
        this.f16779d = new Paint();
        Drawable background = popupWindow.getContentView().getBackground();
        if (background != null) {
            background.setTint(codeEditor.getColorScheme().f19543a.get(4));
        }
        pVar.e(db.c.class, new g5(17, this));
    }

    public final void a() {
        this.f16777b.dismiss();
    }

    public final void b(int i10, int i11) {
        if (Math.abs(i10 - this.f16781f) >= 2 || Math.abs(i11 - this.f16782g) >= 2) {
            CodeEditor codeEditor = this.f16776a;
            float textSizePx = codeEditor.getTextSizePx();
            float f10 = this.f16780e;
            PopupWindow popupWindow = this.f16777b;
            if (textSizePx > f10) {
                if (popupWindow.isShowing()) {
                    a();
                    return;
                }
                return;
            }
            popupWindow.setWidth(Math.min((codeEditor.getWidth() * 3) / 5, (int) codeEditor.getDpUnit()) * 250);
            this.f16781f = i10;
            this.f16782g = i11;
            int[] iArr = new int[2];
            codeEditor.getLocationInWindow(iArr);
            int iMax = Math.max((iArr[0] + i10) - (popupWindow.getWidth() / 2), 0);
            if (popupWindow.getWidth() + iMax > codeEditor.getWidth() + iArr[0]) {
                iMax = Math.max(0, (codeEditor.getWidth() + iArr[0]) - popupWindow.getWidth());
            }
            int iMax2 = Math.max(((iArr[1] + i11) - popupWindow.getHeight()) - codeEditor.getRowHeight(), 0);
            if (popupWindow.isShowing()) {
                popupWindow.update(iMax, iMax2, popupWindow.getWidth(), popupWindow.getHeight());
            } else {
                popupWindow.showAtLocation(this.f16783h, 8388659, iMax, iMax2);
            }
            c();
        }
    }

    /* JADX WARN: Type inference failed for: r1v11, types: [vb.u] */
    public final void c() {
        int i10;
        PopupWindow popupWindow = this.f16777b;
        if (popupWindow.isShowing()) {
            float f10 = this.f16784i;
            int i11 = Build.VERSION.SDK_INT;
            CodeEditor codeEditor = this.f16776a;
            if (i11 >= 26) {
                Context context = codeEditor.getContext();
                if (context instanceof Activity) {
                    WindowId windowId = codeEditor.getWindowId();
                    Window window = ((Activity) context).getWindow();
                    if (window != null) {
                        WindowId windowId2 = window.getDecorView().getWindowId();
                        if (windowId != null && windowId.equals(windowId2)) {
                            Activity activity = (Activity) codeEditor.getContext();
                            int width = (int) (popupWindow.getWidth() / f10);
                            int height = (int) (popupWindow.getHeight() / f10);
                            int iMax = Math.max(this.f16781f - (width / 2), 0);
                            int iMax2 = Math.max(this.f16782g - (height / 2), 0);
                            int iMin = Math.min(iMax + width, codeEditor.getWidth());
                            int iMin2 = Math.min(iMax2 + height, codeEditor.getHeight());
                            if (iMin - iMax < width) {
                                iMax = Math.max(0, iMin - width);
                            }
                            if (iMin2 - iMax2 < height) {
                                iMax2 = Math.max(0, iMin2 - height);
                            }
                            int i12 = iMin - iMax;
                            if (i12 <= 0 || (i10 = iMin2 - iMax2) <= 0) {
                                a();
                                return;
                            }
                            int[] iArr = new int[2];
                            codeEditor.getLocationInWindow(iArr);
                            final Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i12, i10, Bitmap.Config.ARGB_8888);
                            try {
                                Window window2 = activity.getWindow();
                                int i13 = iArr[0];
                                int i14 = iArr[1];
                                PixelCopy.request(window2, new Rect(iMax + i13, iMax2 + i14, i13 + iMin, i14 + iMin2), bitmapCreateBitmap, (PixelCopy.OnPixelCopyFinishedListener) new PixelCopy.OnPixelCopyFinishedListener() { // from class: vb.u
                                    @Override // android.view.PixelCopy.OnPixelCopyFinishedListener
                                    public final void onPixelCopyFinished(int i15) {
                                        v vVar = this.f16774a;
                                        Bitmap bitmap = bitmapCreateBitmap;
                                        if (i15 != 0) {
                                            vVar.getClass();
                                            return;
                                        }
                                        PopupWindow popupWindow2 = vVar.f16777b;
                                        Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(popupWindow2.getWidth(), popupWindow2.getHeight(), Bitmap.Config.ARGB_8888);
                                        Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmap, popupWindow2.getWidth(), popupWindow2.getHeight(), true);
                                        bitmap.recycle();
                                        Canvas canvas = new Canvas(bitmapCreateBitmap2);
                                        Paint paint = vVar.f16779d;
                                        paint.reset();
                                        paint.setAntiAlias(true);
                                        canvas.drawARGB(0, 0, 0, 0);
                                        float width2 = popupWindow2.getWidth();
                                        float height2 = popupWindow2.getHeight();
                                        CodeEditor codeEditor2 = vVar.f16776a;
                                        canvas.drawRoundRect(0.0f, 0.0f, width2, height2, codeEditor2.getDpUnit() * 6.0f, codeEditor2.getDpUnit() * 6.0f, paint);
                                        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
                                        canvas.drawBitmap(bitmapCreateScaledBitmap, 0.0f, 0.0f, paint);
                                        bitmapCreateScaledBitmap.recycle();
                                        vVar.f16778c.setImageBitmap(bitmapCreateBitmap2);
                                    }
                                }, codeEditor.getHandler());
                                return;
                            } catch (IllegalArgumentException unused) {
                                a();
                                if (bitmapCreateBitmap.isRecycled()) {
                                    return;
                                }
                                bitmapCreateBitmap.recycle();
                                return;
                            }
                        }
                    }
                }
            }
            if (popupWindow.getWidth() <= 0 || popupWindow.getHeight() <= 0) {
                a();
                return;
            }
            int width2 = popupWindow.getWidth();
            int height2 = popupWindow.getHeight();
            Bitmap.Config config = Bitmap.Config.ARGB_8888;
            Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(width2, height2, config);
            int width3 = (int) (popupWindow.getWidth() / f10);
            int height3 = (int) (popupWindow.getHeight() / f10);
            int iMax3 = Math.max(this.f16781f - (width3 / 2), 0);
            int iMax4 = Math.max(this.f16782g - (height3 / 2), 0);
            int iMin3 = Math.min(iMax3 + width3, codeEditor.getWidth());
            int iMin4 = Math.min(iMax4 + height3, codeEditor.getHeight());
            if (iMin3 - iMax3 < width3) {
                iMax3 = Math.max(0, iMin3 - width3);
            }
            if (iMin4 - iMax4 < height3) {
                iMax4 = Math.max(0, iMin4 - height3);
            }
            if (iMin3 - iMax3 <= 0 || iMin4 - iMax4 <= 0) {
                a();
                bitmapCreateBitmap2.recycle();
                return;
            }
            Bitmap bitmapCreateBitmap3 = Bitmap.createBitmap(width3, height3, config);
            Canvas canvas = new Canvas(bitmapCreateBitmap3);
            canvas.translate((-iMax3) - codeEditor.getOffsetX(), (-iMax4) - codeEditor.getOffsetY());
            codeEditor.draw(canvas);
            Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmapCreateBitmap3, popupWindow.getWidth(), popupWindow.getHeight(), true);
            bitmapCreateBitmap3.recycle();
            Canvas canvas2 = new Canvas(bitmapCreateBitmap2);
            Paint paint = this.f16779d;
            paint.reset();
            paint.setAntiAlias(true);
            canvas2.drawARGB(0, 0, 0, 0);
            canvas2.drawRoundRect(0.0f, 0.0f, popupWindow.getWidth(), popupWindow.getHeight(), codeEditor.getDpUnit() * 6.0f, codeEditor.getDpUnit() * 6.0f, paint);
            paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
            canvas2.drawBitmap(bitmapCreateScaledBitmap, 0.0f, 0.0f, paint);
            bitmapCreateScaledBitmap.recycle();
            this.f16778c.setImageBitmap(bitmapCreateBitmap2);
        }
    }
}
