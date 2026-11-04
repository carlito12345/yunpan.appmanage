package i4;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PorterDuff;
import android.graphics.Shader;
import com.hsae.autosdk.core.NoConst;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class p {

    /* renamed from: p, reason: collision with root package name */
    public static final Matrix f8568p = new Matrix();

    /* renamed from: a, reason: collision with root package name */
    public final Path f8569a;

    /* renamed from: b, reason: collision with root package name */
    public final Path f8570b;

    /* renamed from: c, reason: collision with root package name */
    public final Matrix f8571c;

    /* renamed from: d, reason: collision with root package name */
    public Paint f8572d;

    /* renamed from: e, reason: collision with root package name */
    public Paint f8573e;

    /* renamed from: f, reason: collision with root package name */
    public PathMeasure f8574f;

    /* renamed from: g, reason: collision with root package name */
    public final m f8575g;

    /* renamed from: h, reason: collision with root package name */
    public float f8576h;

    /* renamed from: i, reason: collision with root package name */
    public float f8577i;

    /* renamed from: j, reason: collision with root package name */
    public float f8578j;

    /* renamed from: k, reason: collision with root package name */
    public float f8579k;
    public int l;

    /* renamed from: m, reason: collision with root package name */
    public String f8580m;

    /* renamed from: n, reason: collision with root package name */
    public Boolean f8581n;

    /* renamed from: o, reason: collision with root package name */
    public final a0.e f8582o;

    public p() {
        this.f8571c = new Matrix();
        this.f8576h = 0.0f;
        this.f8577i = 0.0f;
        this.f8578j = 0.0f;
        this.f8579k = 0.0f;
        this.l = 255;
        this.f8580m = null;
        this.f8581n = null;
        this.f8582o = new a0.e();
        this.f8575g = new m();
        this.f8569a = new Path();
        this.f8570b = new Path();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:48:0x013b  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0148  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x01ad  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x01b1  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x01c4  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x01cb  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x01d9  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x01eb  */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1, types: [boolean] */
    /* JADX WARN: Type inference failed for: r11v18 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(m mVar, Matrix matrix, Canvas canvas, int i10, int i11) {
        Matrix matrix2;
        float f10;
        float f11;
        androidx.room.s sVar;
        androidx.room.s sVar2;
        Paint.Join join;
        Paint.Cap cap;
        Shader shader;
        char c7 = 1;
        mVar.f8554a.set(matrix);
        Matrix matrix3 = mVar.f8563j;
        Matrix matrix4 = mVar.f8554a;
        matrix4.preConcat(matrix3);
        canvas.save();
        ?? r11 = 0;
        int i12 = 0;
        while (true) {
            ArrayList arrayList = mVar.f8555b;
            if (i12 >= arrayList.size()) {
                canvas.restore();
                return;
            }
            n nVar = (n) arrayList.get(i12);
            if (nVar instanceof m) {
                a((m) nVar, matrix4, canvas, i10, i11);
            } else {
                if (nVar instanceof o) {
                    o oVar = (o) nVar;
                    float f12 = i10 / this.f8578j;
                    float f13 = i11 / this.f8579k;
                    float fMin = Math.min(f12, f13);
                    Matrix matrix5 = this.f8571c;
                    matrix5.set(matrix4);
                    matrix5.postScale(f12, f13);
                    float[] fArr = {0.0f, 1.0f, 1.0f, 0.0f};
                    matrix4.mapVectors(fArr);
                    float fHypot = (float) Math.hypot(fArr[r11], fArr[c7]);
                    matrix2 = matrix4;
                    float fHypot2 = (float) Math.hypot(fArr[2], fArr[3]);
                    float f14 = (fArr[r11] * fArr[3]) - (fArr[1] * fArr[2]);
                    float fMax = Math.max(fHypot, fHypot2);
                    float fAbs = fMax > 0.0f ? Math.abs(f14) / fMax : 0.0f;
                    if (fAbs != 0.0f) {
                        oVar.getClass();
                        Path path = this.f8569a;
                        path.reset();
                        p0.f[] fVarArr = oVar.f8565a;
                        if (fVarArr != null) {
                            p0.f.b(fVarArr, path);
                        }
                        Path path2 = this.f8570b;
                        path2.reset();
                        if (oVar instanceof k) {
                            path2.setFillType(oVar.f8567c == 0 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD);
                            path2.addPath(path, matrix5);
                            canvas.clipPath(path2);
                        } else {
                            l lVar = (l) oVar;
                            float f15 = lVar.f8549i;
                            if (f15 == 0.0f) {
                                f10 = 1.0f;
                                if (lVar.f8550j != 1.0f) {
                                }
                                path2.addPath(path, matrix5);
                                sVar = lVar.f8546f;
                                if ((((Shader) sVar.f2427c) == null && sVar.f2426b == 0) ? false : true) {
                                    if (this.f8573e == null) {
                                        Paint paint = new Paint(1);
                                        this.f8573e = paint;
                                        paint.setStyle(Paint.Style.FILL);
                                    }
                                    Paint paint2 = this.f8573e;
                                    Shader shader2 = (Shader) sVar.f2427c;
                                    if (shader2 != null) {
                                        shader2.setLocalMatrix(matrix5);
                                        paint2.setShader(shader2);
                                        paint2.setAlpha(Math.round(lVar.f8548h * 255.0f));
                                    } else {
                                        paint2.setShader(null);
                                        paint2.setAlpha(255);
                                        int i13 = sVar.f2426b;
                                        float f16 = lVar.f8548h;
                                        PorterDuff.Mode mode = s.f8595j;
                                        paint2.setColor((i13 & NoConst.I24) | (((int) (Color.alpha(i13) * f16)) << 24));
                                    }
                                    paint2.setColorFilter(null);
                                    path2.setFillType(lVar.f8567c == 0 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD);
                                    canvas.drawPath(path2, paint2);
                                }
                                sVar2 = lVar.f8544d;
                                if (((Shader) sVar2.f2427c) == null || sVar2.f2426b != 0) {
                                    if (this.f8572d == null) {
                                        Paint paint3 = new Paint(1);
                                        this.f8572d = paint3;
                                        paint3.setStyle(Paint.Style.STROKE);
                                    }
                                    Paint paint4 = this.f8572d;
                                    join = lVar.f8552m;
                                    if (join != null) {
                                        paint4.setStrokeJoin(join);
                                    }
                                    cap = lVar.l;
                                    if (cap != null) {
                                        paint4.setStrokeCap(cap);
                                    }
                                    paint4.setStrokeMiter(lVar.f8553n);
                                    shader = (Shader) sVar2.f2427c;
                                    if (shader == null) {
                                        shader.setLocalMatrix(matrix5);
                                        paint4.setShader(shader);
                                        paint4.setAlpha(Math.round(lVar.f8547g * 255.0f));
                                    } else {
                                        paint4.setShader(null);
                                        paint4.setAlpha(255);
                                        int i14 = sVar2.f2426b;
                                        float f17 = lVar.f8547g;
                                        PorterDuff.Mode mode2 = s.f8595j;
                                        paint4.setColor((i14 & NoConst.I24) | (((int) (Color.alpha(i14) * f17)) << 24));
                                    }
                                    paint4.setColorFilter(null);
                                    paint4.setStrokeWidth(lVar.f8545e * fAbs * fMin);
                                    canvas.drawPath(path2, paint4);
                                }
                            } else {
                                f10 = 1.0f;
                            }
                            float f18 = lVar.f8551k;
                            float f19 = (f15 + f18) % f10;
                            float f20 = (lVar.f8550j + f18) % f10;
                            if (this.f8574f == null) {
                                this.f8574f = new PathMeasure();
                            }
                            this.f8574f.setPath(path, r11);
                            float length = this.f8574f.getLength();
                            float f21 = f19 * length;
                            float f22 = f20 * length;
                            path.reset();
                            if (f21 > f22) {
                                this.f8574f.getSegment(f21, length, path, true);
                                f11 = 0.0f;
                                this.f8574f.getSegment(0.0f, f22, path, true);
                            } else {
                                f11 = 0.0f;
                                this.f8574f.getSegment(f21, f22, path, true);
                            }
                            path.rLineTo(f11, f11);
                            path2.addPath(path, matrix5);
                            sVar = lVar.f8546f;
                            if (((Shader) sVar.f2427c) == null) {
                                if ((((Shader) sVar.f2427c) == null && sVar.f2426b == 0) ? false : true) {
                                }
                                sVar2 = lVar.f8544d;
                                if (((Shader) sVar2.f2427c) == null) {
                                    if (this.f8572d == null) {
                                    }
                                    Paint paint42 = this.f8572d;
                                    join = lVar.f8552m;
                                    if (join != null) {
                                    }
                                    cap = lVar.l;
                                    if (cap != null) {
                                    }
                                    paint42.setStrokeMiter(lVar.f8553n);
                                    shader = (Shader) sVar2.f2427c;
                                    if (shader == null) {
                                    }
                                    paint42.setColorFilter(null);
                                    paint42.setStrokeWidth(lVar.f8545e * fAbs * fMin);
                                    canvas.drawPath(path2, paint42);
                                }
                            }
                        }
                    }
                }
                i12++;
                matrix4 = matrix2;
                c7 = 1;
                r11 = 0;
            }
            matrix2 = matrix4;
            i12++;
            matrix4 = matrix2;
            c7 = 1;
            r11 = 0;
        }
    }

    public float getAlpha() {
        return getRootAlpha() / 255.0f;
    }

    public int getRootAlpha() {
        return this.l;
    }

    public void setAlpha(float f10) {
        setRootAlpha((int) (f10 * 255.0f));
    }

    public void setRootAlpha(int i10) {
        this.l = i10;
    }

    public p(p pVar) {
        this.f8571c = new Matrix();
        this.f8576h = 0.0f;
        this.f8577i = 0.0f;
        this.f8578j = 0.0f;
        this.f8579k = 0.0f;
        this.l = 255;
        this.f8580m = null;
        this.f8581n = null;
        a0.e eVar = new a0.e();
        this.f8582o = eVar;
        this.f8575g = new m(pVar.f8575g, eVar);
        this.f8569a = new Path(pVar.f8569a);
        this.f8570b = new Path(pVar.f8570b);
        this.f8576h = pVar.f8576h;
        this.f8577i = pVar.f8577i;
        this.f8578j = pVar.f8578j;
        this.f8579k = pVar.f8579k;
        this.l = pVar.l;
        this.f8580m = pVar.f8580m;
        String str = pVar.f8580m;
        if (str != null) {
            eVar.put(str, this);
        }
        this.f8581n = pVar.f8581n;
    }
}
