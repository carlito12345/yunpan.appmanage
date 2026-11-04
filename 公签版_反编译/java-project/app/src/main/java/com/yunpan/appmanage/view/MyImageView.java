package com.yunpan.appmanage.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import com.davemorrissey.labs.subscaleview.SubsamplingScaleImageView;
import xa.c;

/* loaded from: classes.dex */
public class MyImageView extends SubsamplingScaleImageView {

    /* renamed from: a, reason: collision with root package name */
    public c f4177a;

    /* renamed from: b, reason: collision with root package name */
    public float f4178b;

    /* renamed from: c, reason: collision with root package name */
    public float f4179c;

    /* renamed from: d, reason: collision with root package name */
    public float f4180d;

    /* renamed from: e, reason: collision with root package name */
    public float f4181e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f4182f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f4183g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f4184h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f4185i;

    public MyImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f4180d = 0.0f;
        this.f4181e = 0.0f;
        this.f4182f = false;
        this.f4183g = false;
        this.f4184h = false;
        this.f4185i = false;
    }

    @Override // com.davemorrissey.labs.subscaleview.SubsamplingScaleImageView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f4178b = motionEvent.getX();
            this.f4179c = motionEvent.getY();
            this.f4180d = 0.0f;
            this.f4181e = 0.0f;
            this.f4183g = false;
            this.f4182f = false;
            this.f4185i = false;
            this.f4184h = false;
            return true;
        }
        if (action == 1) {
            if (this.f4182f) {
                this.f4177a.d();
                return true;
            }
            if (this.f4183g) {
                this.f4177a.f();
                return true;
            }
            if (this.f4185i) {
                this.f4177a.getClass();
                return true;
            }
            if (this.f4184h) {
                this.f4177a.getClass();
                return true;
            }
            this.f4177a.h();
            return false;
        }
        if (action != 2) {
            return false;
        }
        this.f4180d = motionEvent.getX() - this.f4178b;
        float y6 = motionEvent.getY() - this.f4179c;
        this.f4181e = y6;
        if (Math.abs(y6) > Math.abs(this.f4180d)) {
            if (Math.abs(this.f4181e) <= 50.0f) {
                this.f4184h = false;
                this.f4185i = false;
                this.f4183g = false;
                this.f4182f = false;
            } else if (this.f4181e > 0.0f) {
                this.f4184h = true;
                this.f4185i = false;
            } else {
                this.f4184h = false;
                this.f4185i = true;
            }
        } else if (Math.abs(this.f4180d) <= 50.0f) {
            this.f4184h = false;
            this.f4185i = false;
            this.f4183g = false;
            this.f4182f = false;
        } else if (this.f4180d > 0.0f) {
            this.f4183g = true;
            this.f4182f = false;
        } else {
            this.f4183g = false;
            this.f4182f = true;
        }
        return false;
    }

    public void setOnTouchDirection(c cVar) {
        this.f4177a = cVar;
    }
}
