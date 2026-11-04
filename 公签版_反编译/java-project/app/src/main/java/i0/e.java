package i0;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.ViewGroup;

/* loaded from: classes.dex */
public final class e extends ViewGroup.MarginLayoutParams {
    public int A;
    public int B;
    public final int C;
    public final int D;
    public float E;
    public float F;
    public String G;
    public float H;
    public float I;
    public int J;
    public int K;
    public int L;
    public int M;
    public int N;
    public int O;
    public int P;
    public int Q;
    public float R;
    public float S;
    public int T;
    public int U;
    public int V;
    public boolean W;
    public boolean X;
    public String Y;
    public int Z;

    /* renamed from: a, reason: collision with root package name */
    public int f8251a;

    /* renamed from: a0, reason: collision with root package name */
    public boolean f8252a0;

    /* renamed from: b, reason: collision with root package name */
    public int f8253b;

    /* renamed from: b0, reason: collision with root package name */
    public boolean f8254b0;

    /* renamed from: c, reason: collision with root package name */
    public float f8255c;

    /* renamed from: c0, reason: collision with root package name */
    public boolean f8256c0;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f8257d;

    /* renamed from: d0, reason: collision with root package name */
    public boolean f8258d0;

    /* renamed from: e, reason: collision with root package name */
    public int f8259e;

    /* renamed from: e0, reason: collision with root package name */
    public boolean f8260e0;

    /* renamed from: f, reason: collision with root package name */
    public int f8261f;

    /* renamed from: f0, reason: collision with root package name */
    public int f8262f0;

    /* renamed from: g, reason: collision with root package name */
    public int f8263g;

    /* renamed from: g0, reason: collision with root package name */
    public int f8264g0;

    /* renamed from: h, reason: collision with root package name */
    public int f8265h;

    /* renamed from: h0, reason: collision with root package name */
    public int f8266h0;

    /* renamed from: i, reason: collision with root package name */
    public int f8267i;

    /* renamed from: i0, reason: collision with root package name */
    public int f8268i0;

    /* renamed from: j, reason: collision with root package name */
    public int f8269j;

    /* renamed from: j0, reason: collision with root package name */
    public int f8270j0;

    /* renamed from: k, reason: collision with root package name */
    public int f8271k;

    /* renamed from: k0, reason: collision with root package name */
    public int f8272k0;
    public int l;

    /* renamed from: l0, reason: collision with root package name */
    public float f8273l0;

    /* renamed from: m, reason: collision with root package name */
    public int f8274m;

    /* renamed from: m0, reason: collision with root package name */
    public int f8275m0;

    /* renamed from: n, reason: collision with root package name */
    public int f8276n;

    /* renamed from: n0, reason: collision with root package name */
    public int f8277n0;

    /* renamed from: o, reason: collision with root package name */
    public int f8278o;

    /* renamed from: o0, reason: collision with root package name */
    public float f8279o0;

    /* renamed from: p, reason: collision with root package name */
    public int f8280p;

    /* renamed from: p0, reason: collision with root package name */
    public f0.d f8281p0;

    /* renamed from: q, reason: collision with root package name */
    public int f8282q;
    public float r;

    /* renamed from: s, reason: collision with root package name */
    public int f8283s;

    /* renamed from: t, reason: collision with root package name */
    public int f8284t;

    /* renamed from: u, reason: collision with root package name */
    public int f8285u;

    /* renamed from: v, reason: collision with root package name */
    public int f8286v;

    /* renamed from: w, reason: collision with root package name */
    public final int f8287w;

    /* renamed from: x, reason: collision with root package name */
    public int f8288x;

    /* renamed from: y, reason: collision with root package name */
    public final int f8289y;
    public int z;

    public e(Context context, AttributeSet attributeSet) throws NumberFormatException {
        super(context, attributeSet);
        this.f8251a = -1;
        this.f8253b = -1;
        this.f8255c = -1.0f;
        this.f8257d = true;
        this.f8259e = -1;
        this.f8261f = -1;
        this.f8263g = -1;
        this.f8265h = -1;
        this.f8267i = -1;
        this.f8269j = -1;
        this.f8271k = -1;
        this.l = -1;
        this.f8274m = -1;
        this.f8276n = -1;
        this.f8278o = -1;
        this.f8280p = -1;
        this.f8282q = 0;
        this.r = 0.0f;
        this.f8283s = -1;
        this.f8284t = -1;
        this.f8285u = -1;
        this.f8286v = -1;
        this.f8287w = Integer.MIN_VALUE;
        this.f8288x = Integer.MIN_VALUE;
        this.f8289y = Integer.MIN_VALUE;
        this.z = Integer.MIN_VALUE;
        this.A = Integer.MIN_VALUE;
        this.B = Integer.MIN_VALUE;
        this.C = Integer.MIN_VALUE;
        this.D = 0;
        this.E = 0.5f;
        this.F = 0.5f;
        this.G = null;
        this.H = -1.0f;
        this.I = -1.0f;
        this.J = 0;
        this.K = 0;
        this.L = 0;
        this.M = 0;
        this.N = 0;
        this.O = 0;
        this.P = 0;
        this.Q = 0;
        this.R = 1.0f;
        this.S = 1.0f;
        this.T = -1;
        this.U = -1;
        this.V = -1;
        this.W = false;
        this.X = false;
        this.Y = null;
        this.Z = 0;
        this.f8252a0 = true;
        this.f8254b0 = true;
        this.f8256c0 = false;
        this.f8258d0 = false;
        this.f8260e0 = false;
        this.f8262f0 = -1;
        this.f8264g0 = -1;
        this.f8266h0 = -1;
        this.f8268i0 = -1;
        this.f8270j0 = Integer.MIN_VALUE;
        this.f8272k0 = Integer.MIN_VALUE;
        this.f8273l0 = 0.5f;
        this.f8281p0 = new f0.d();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, q.f8393b);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i10 = 0; i10 < indexCount; i10++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i10);
            int i11 = d.f8250a.get(index);
            switch (i11) {
                case 1:
                    this.V = typedArrayObtainStyledAttributes.getInt(index, this.V);
                    break;
                case 2:
                    int resourceId = typedArrayObtainStyledAttributes.getResourceId(index, this.f8280p);
                    this.f8280p = resourceId;
                    if (resourceId == -1) {
                        this.f8280p = typedArrayObtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case 3:
                    this.f8282q = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f8282q);
                    break;
                case 4:
                    float f10 = typedArrayObtainStyledAttributes.getFloat(index, this.r) % 360.0f;
                    this.r = f10;
                    if (f10 < 0.0f) {
                        this.r = (360.0f - f10) % 360.0f;
                        break;
                    } else {
                        break;
                    }
                case 5:
                    this.f8251a = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f8251a);
                    break;
                case 6:
                    this.f8253b = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f8253b);
                    break;
                case 7:
                    this.f8255c = typedArrayObtainStyledAttributes.getFloat(index, this.f8255c);
                    break;
                case 8:
                    int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(index, this.f8259e);
                    this.f8259e = resourceId2;
                    if (resourceId2 == -1) {
                        this.f8259e = typedArrayObtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case 9:
                    int resourceId3 = typedArrayObtainStyledAttributes.getResourceId(index, this.f8261f);
                    this.f8261f = resourceId3;
                    if (resourceId3 == -1) {
                        this.f8261f = typedArrayObtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case 10:
                    int resourceId4 = typedArrayObtainStyledAttributes.getResourceId(index, this.f8263g);
                    this.f8263g = resourceId4;
                    if (resourceId4 == -1) {
                        this.f8263g = typedArrayObtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case 11:
                    int resourceId5 = typedArrayObtainStyledAttributes.getResourceId(index, this.f8265h);
                    this.f8265h = resourceId5;
                    if (resourceId5 == -1) {
                        this.f8265h = typedArrayObtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case 12:
                    int resourceId6 = typedArrayObtainStyledAttributes.getResourceId(index, this.f8267i);
                    this.f8267i = resourceId6;
                    if (resourceId6 == -1) {
                        this.f8267i = typedArrayObtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case 13:
                    int resourceId7 = typedArrayObtainStyledAttributes.getResourceId(index, this.f8269j);
                    this.f8269j = resourceId7;
                    if (resourceId7 == -1) {
                        this.f8269j = typedArrayObtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case 14:
                    int resourceId8 = typedArrayObtainStyledAttributes.getResourceId(index, this.f8271k);
                    this.f8271k = resourceId8;
                    if (resourceId8 == -1) {
                        this.f8271k = typedArrayObtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case 15:
                    int resourceId9 = typedArrayObtainStyledAttributes.getResourceId(index, this.l);
                    this.l = resourceId9;
                    if (resourceId9 == -1) {
                        this.l = typedArrayObtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case 16:
                    int resourceId10 = typedArrayObtainStyledAttributes.getResourceId(index, this.f8274m);
                    this.f8274m = resourceId10;
                    if (resourceId10 == -1) {
                        this.f8274m = typedArrayObtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case 17:
                    int resourceId11 = typedArrayObtainStyledAttributes.getResourceId(index, this.f8283s);
                    this.f8283s = resourceId11;
                    if (resourceId11 == -1) {
                        this.f8283s = typedArrayObtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case 18:
                    int resourceId12 = typedArrayObtainStyledAttributes.getResourceId(index, this.f8284t);
                    this.f8284t = resourceId12;
                    if (resourceId12 == -1) {
                        this.f8284t = typedArrayObtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case 19:
                    int resourceId13 = typedArrayObtainStyledAttributes.getResourceId(index, this.f8285u);
                    this.f8285u = resourceId13;
                    if (resourceId13 == -1) {
                        this.f8285u = typedArrayObtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case 20:
                    int resourceId14 = typedArrayObtainStyledAttributes.getResourceId(index, this.f8286v);
                    this.f8286v = resourceId14;
                    if (resourceId14 == -1) {
                        this.f8286v = typedArrayObtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case 21:
                    this.f8287w = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f8287w);
                    break;
                case 22:
                    this.f8288x = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f8288x);
                    break;
                case 23:
                    this.f8289y = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f8289y);
                    break;
                case 24:
                    this.z = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.z);
                    break;
                case 25:
                    this.A = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.A);
                    break;
                case 26:
                    this.B = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.B);
                    break;
                case 27:
                    this.W = typedArrayObtainStyledAttributes.getBoolean(index, this.W);
                    break;
                case 28:
                    this.X = typedArrayObtainStyledAttributes.getBoolean(index, this.X);
                    break;
                case 29:
                    this.E = typedArrayObtainStyledAttributes.getFloat(index, this.E);
                    break;
                case 30:
                    this.F = typedArrayObtainStyledAttributes.getFloat(index, this.F);
                    break;
                case 31:
                    this.L = typedArrayObtainStyledAttributes.getInt(index, 0);
                    break;
                case 32:
                    this.M = typedArrayObtainStyledAttributes.getInt(index, 0);
                    break;
                case 33:
                    try {
                        this.N = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.N);
                        break;
                    } catch (Exception unused) {
                        if (typedArrayObtainStyledAttributes.getInt(index, this.N) == -2) {
                            this.N = -2;
                            break;
                        } else {
                            break;
                        }
                    }
                case 34:
                    try {
                        this.P = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.P);
                        break;
                    } catch (Exception unused2) {
                        if (typedArrayObtainStyledAttributes.getInt(index, this.P) == -2) {
                            this.P = -2;
                            break;
                        } else {
                            break;
                        }
                    }
                case 35:
                    this.R = Math.max(0.0f, typedArrayObtainStyledAttributes.getFloat(index, this.R));
                    this.L = 2;
                    break;
                case 36:
                    try {
                        this.O = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.O);
                        break;
                    } catch (Exception unused3) {
                        if (typedArrayObtainStyledAttributes.getInt(index, this.O) == -2) {
                            this.O = -2;
                            break;
                        } else {
                            break;
                        }
                    }
                case 37:
                    try {
                        this.Q = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.Q);
                        break;
                    } catch (Exception unused4) {
                        if (typedArrayObtainStyledAttributes.getInt(index, this.Q) == -2) {
                            this.Q = -2;
                            break;
                        } else {
                            break;
                        }
                    }
                case 38:
                    this.S = Math.max(0.0f, typedArrayObtainStyledAttributes.getFloat(index, this.S));
                    this.M = 2;
                    break;
                default:
                    switch (i11) {
                        case 44:
                            n.h(this, typedArrayObtainStyledAttributes.getString(index));
                            break;
                        case 45:
                            this.H = typedArrayObtainStyledAttributes.getFloat(index, this.H);
                            break;
                        case 46:
                            this.I = typedArrayObtainStyledAttributes.getFloat(index, this.I);
                            break;
                        case 47:
                            this.J = typedArrayObtainStyledAttributes.getInt(index, 0);
                            break;
                        case 48:
                            this.K = typedArrayObtainStyledAttributes.getInt(index, 0);
                            break;
                        case 49:
                            this.T = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.T);
                            break;
                        case 50:
                            this.U = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.U);
                            break;
                        case 51:
                            this.Y = typedArrayObtainStyledAttributes.getString(index);
                            break;
                        case 52:
                            int resourceId15 = typedArrayObtainStyledAttributes.getResourceId(index, this.f8276n);
                            this.f8276n = resourceId15;
                            if (resourceId15 == -1) {
                                this.f8276n = typedArrayObtainStyledAttributes.getInt(index, -1);
                                break;
                            } else {
                                break;
                            }
                        case 53:
                            int resourceId16 = typedArrayObtainStyledAttributes.getResourceId(index, this.f8278o);
                            this.f8278o = resourceId16;
                            if (resourceId16 == -1) {
                                this.f8278o = typedArrayObtainStyledAttributes.getInt(index, -1);
                                break;
                            } else {
                                break;
                            }
                        case 54:
                            this.D = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.D);
                            break;
                        case 55:
                            this.C = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.C);
                            break;
                        default:
                            switch (i11) {
                                case 64:
                                    n.g(this, typedArrayObtainStyledAttributes, index, 0);
                                    break;
                                case 65:
                                    n.g(this, typedArrayObtainStyledAttributes, index, 1);
                                    break;
                                case 66:
                                    this.Z = typedArrayObtainStyledAttributes.getInt(index, this.Z);
                                    break;
                                case 67:
                                    this.f8257d = typedArrayObtainStyledAttributes.getBoolean(index, this.f8257d);
                                    break;
                            }
                    }
            }
        }
        typedArrayObtainStyledAttributes.recycle();
        a();
    }

    public final void a() {
        this.f8258d0 = false;
        this.f8252a0 = true;
        this.f8254b0 = true;
        int i10 = ((ViewGroup.MarginLayoutParams) this).width;
        if (i10 == -2 && this.W) {
            this.f8252a0 = false;
            if (this.L == 0) {
                this.L = 1;
            }
        }
        int i11 = ((ViewGroup.MarginLayoutParams) this).height;
        if (i11 == -2 && this.X) {
            this.f8254b0 = false;
            if (this.M == 0) {
                this.M = 1;
            }
        }
        if (i10 == 0 || i10 == -1) {
            this.f8252a0 = false;
            if (i10 == 0 && this.L == 1) {
                ((ViewGroup.MarginLayoutParams) this).width = -2;
                this.W = true;
            }
        }
        if (i11 == 0 || i11 == -1) {
            this.f8254b0 = false;
            if (i11 == 0 && this.M == 1) {
                ((ViewGroup.MarginLayoutParams) this).height = -2;
                this.X = true;
            }
        }
        if (this.f8255c == -1.0f && this.f8251a == -1 && this.f8253b == -1) {
            return;
        }
        this.f8258d0 = true;
        this.f8252a0 = true;
        this.f8254b0 = true;
        if (!(this.f8281p0 instanceof f0.h)) {
            this.f8281p0 = new f0.h();
        }
        ((f0.h) this.f8281p0).S(this.V);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0082  */
    @Override // android.view.ViewGroup.MarginLayoutParams, android.view.ViewGroup.LayoutParams
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void resolveLayoutDirection(int i10) {
        int i11;
        int i12;
        int i13;
        int i14;
        int i15 = ((ViewGroup.MarginLayoutParams) this).leftMargin;
        int i16 = ((ViewGroup.MarginLayoutParams) this).rightMargin;
        super.resolveLayoutDirection(i10);
        boolean z = false;
        boolean z4 = 1 == getLayoutDirection();
        this.f8266h0 = -1;
        this.f8268i0 = -1;
        this.f8262f0 = -1;
        this.f8264g0 = -1;
        this.f8270j0 = this.f8287w;
        this.f8272k0 = this.f8289y;
        float f10 = this.E;
        this.f8273l0 = f10;
        int i17 = this.f8251a;
        this.f8275m0 = i17;
        int i18 = this.f8253b;
        this.f8277n0 = i18;
        float f11 = this.f8255c;
        this.f8279o0 = f11;
        if (z4) {
            int i19 = this.f8283s;
            if (i19 != -1) {
                this.f8266h0 = i19;
            } else {
                int i20 = this.f8284t;
                if (i20 != -1) {
                    this.f8268i0 = i20;
                }
                i11 = this.f8285u;
                if (i11 != -1) {
                    this.f8264g0 = i11;
                    z = true;
                }
                i12 = this.f8286v;
                if (i12 != -1) {
                    this.f8262f0 = i12;
                    z = true;
                }
                i13 = this.A;
                if (i13 != Integer.MIN_VALUE) {
                    this.f8272k0 = i13;
                }
                i14 = this.B;
                if (i14 != Integer.MIN_VALUE) {
                    this.f8270j0 = i14;
                }
                if (z) {
                    this.f8273l0 = 1.0f - f10;
                }
                if (this.f8258d0 && this.V == 1 && this.f8257d) {
                    if (f11 == -1.0f) {
                        this.f8279o0 = 1.0f - f11;
                        this.f8275m0 = -1;
                        this.f8277n0 = -1;
                    } else if (i17 != -1) {
                        this.f8277n0 = i17;
                        this.f8275m0 = -1;
                        this.f8279o0 = -1.0f;
                    } else if (i18 != -1) {
                        this.f8275m0 = i18;
                        this.f8277n0 = -1;
                        this.f8279o0 = -1.0f;
                    }
                }
            }
            z = true;
            i11 = this.f8285u;
            if (i11 != -1) {
            }
            i12 = this.f8286v;
            if (i12 != -1) {
            }
            i13 = this.A;
            if (i13 != Integer.MIN_VALUE) {
            }
            i14 = this.B;
            if (i14 != Integer.MIN_VALUE) {
            }
            if (z) {
            }
            if (this.f8258d0) {
                if (f11 == -1.0f) {
                }
            }
        } else {
            int i21 = this.f8283s;
            if (i21 != -1) {
                this.f8264g0 = i21;
            }
            int i22 = this.f8284t;
            if (i22 != -1) {
                this.f8262f0 = i22;
            }
            int i23 = this.f8285u;
            if (i23 != -1) {
                this.f8266h0 = i23;
            }
            int i24 = this.f8286v;
            if (i24 != -1) {
                this.f8268i0 = i24;
            }
            int i25 = this.A;
            if (i25 != Integer.MIN_VALUE) {
                this.f8270j0 = i25;
            }
            int i26 = this.B;
            if (i26 != Integer.MIN_VALUE) {
                this.f8272k0 = i26;
            }
        }
        if (this.f8285u == -1 && this.f8286v == -1 && this.f8284t == -1 && this.f8283s == -1) {
            int i27 = this.f8263g;
            if (i27 != -1) {
                this.f8266h0 = i27;
                if (((ViewGroup.MarginLayoutParams) this).rightMargin <= 0 && i16 > 0) {
                    ((ViewGroup.MarginLayoutParams) this).rightMargin = i16;
                }
            } else {
                int i28 = this.f8265h;
                if (i28 != -1) {
                    this.f8268i0 = i28;
                    if (((ViewGroup.MarginLayoutParams) this).rightMargin <= 0 && i16 > 0) {
                        ((ViewGroup.MarginLayoutParams) this).rightMargin = i16;
                    }
                }
            }
            int i29 = this.f8259e;
            if (i29 != -1) {
                this.f8262f0 = i29;
                if (((ViewGroup.MarginLayoutParams) this).leftMargin > 0 || i15 <= 0) {
                    return;
                }
                ((ViewGroup.MarginLayoutParams) this).leftMargin = i15;
                return;
            }
            int i30 = this.f8261f;
            if (i30 != -1) {
                this.f8264g0 = i30;
                if (((ViewGroup.MarginLayoutParams) this).leftMargin > 0 || i15 <= 0) {
                    return;
                }
                ((ViewGroup.MarginLayoutParams) this).leftMargin = i15;
            }
        }
    }

    public e(int i10, int i11) {
        super(i10, i11);
        this.f8251a = -1;
        this.f8253b = -1;
        this.f8255c = -1.0f;
        this.f8257d = true;
        this.f8259e = -1;
        this.f8261f = -1;
        this.f8263g = -1;
        this.f8265h = -1;
        this.f8267i = -1;
        this.f8269j = -1;
        this.f8271k = -1;
        this.l = -1;
        this.f8274m = -1;
        this.f8276n = -1;
        this.f8278o = -1;
        this.f8280p = -1;
        this.f8282q = 0;
        this.r = 0.0f;
        this.f8283s = -1;
        this.f8284t = -1;
        this.f8285u = -1;
        this.f8286v = -1;
        this.f8287w = Integer.MIN_VALUE;
        this.f8288x = Integer.MIN_VALUE;
        this.f8289y = Integer.MIN_VALUE;
        this.z = Integer.MIN_VALUE;
        this.A = Integer.MIN_VALUE;
        this.B = Integer.MIN_VALUE;
        this.C = Integer.MIN_VALUE;
        this.D = 0;
        this.E = 0.5f;
        this.F = 0.5f;
        this.G = null;
        this.H = -1.0f;
        this.I = -1.0f;
        this.J = 0;
        this.K = 0;
        this.L = 0;
        this.M = 0;
        this.N = 0;
        this.O = 0;
        this.P = 0;
        this.Q = 0;
        this.R = 1.0f;
        this.S = 1.0f;
        this.T = -1;
        this.U = -1;
        this.V = -1;
        this.W = false;
        this.X = false;
        this.Y = null;
        this.Z = 0;
        this.f8252a0 = true;
        this.f8254b0 = true;
        this.f8256c0 = false;
        this.f8258d0 = false;
        this.f8260e0 = false;
        this.f8262f0 = -1;
        this.f8264g0 = -1;
        this.f8266h0 = -1;
        this.f8268i0 = -1;
        this.f8270j0 = Integer.MIN_VALUE;
        this.f8272k0 = Integer.MIN_VALUE;
        this.f8273l0 = 0.5f;
        this.f8281p0 = new f0.d();
    }

    public e(ViewGroup.LayoutParams layoutParams) {
        super(layoutParams);
        this.f8251a = -1;
        this.f8253b = -1;
        this.f8255c = -1.0f;
        this.f8257d = true;
        this.f8259e = -1;
        this.f8261f = -1;
        this.f8263g = -1;
        this.f8265h = -1;
        this.f8267i = -1;
        this.f8269j = -1;
        this.f8271k = -1;
        this.l = -1;
        this.f8274m = -1;
        this.f8276n = -1;
        this.f8278o = -1;
        this.f8280p = -1;
        this.f8282q = 0;
        this.r = 0.0f;
        this.f8283s = -1;
        this.f8284t = -1;
        this.f8285u = -1;
        this.f8286v = -1;
        this.f8287w = Integer.MIN_VALUE;
        this.f8288x = Integer.MIN_VALUE;
        this.f8289y = Integer.MIN_VALUE;
        this.z = Integer.MIN_VALUE;
        this.A = Integer.MIN_VALUE;
        this.B = Integer.MIN_VALUE;
        this.C = Integer.MIN_VALUE;
        this.D = 0;
        this.E = 0.5f;
        this.F = 0.5f;
        this.G = null;
        this.H = -1.0f;
        this.I = -1.0f;
        this.J = 0;
        this.K = 0;
        this.L = 0;
        this.M = 0;
        this.N = 0;
        this.O = 0;
        this.P = 0;
        this.Q = 0;
        this.R = 1.0f;
        this.S = 1.0f;
        this.T = -1;
        this.U = -1;
        this.V = -1;
        this.W = false;
        this.X = false;
        this.Y = null;
        this.Z = 0;
        this.f8252a0 = true;
        this.f8254b0 = true;
        this.f8256c0 = false;
        this.f8258d0 = false;
        this.f8260e0 = false;
        this.f8262f0 = -1;
        this.f8264g0 = -1;
        this.f8266h0 = -1;
        this.f8268i0 = -1;
        this.f8270j0 = Integer.MIN_VALUE;
        this.f8272k0 = Integer.MIN_VALUE;
        this.f8273l0 = 0.5f;
        this.f8281p0 = new f0.d();
    }
}
