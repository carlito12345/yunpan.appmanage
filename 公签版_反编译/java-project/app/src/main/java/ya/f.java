package ya;

import android.graphics.Color;
import android.graphics.Point;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import com.yunpan.appmanage.bean.FloatWindowInsets;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import z7.o;

/* loaded from: classes.dex */
public final /* synthetic */ class f implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f19047a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ h f19048b;

    public /* synthetic */ f(h hVar, int i10) {
        this.f19047a = i10;
        this.f19048b = hVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v2, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r14v3 */
    /* JADX WARN: Type inference failed for: r4v17 */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v5, types: [android.graphics.Paint, android.graphics.drawable.Drawable] */
    @Override // java.lang.Runnable
    public final void run() {
        ?? r4;
        String str;
        ?? r14;
        switch (this.f19047a) {
            case 0:
                final h hVar = this.f19048b;
                hVar.f19057c = (WindowManager) hVar.f19055a.getSystemService("window");
                int iE = hVar.f19056b.o("effect").e();
                hVar.f19068o = iE;
                if (iE == 1) {
                    hVar.f19075w = new wa.a(hVar.f19055a, hVar.f19057c);
                }
                if (hVar.f19056b.f19480a.containsKey("upTrigger")) {
                    hVar.f19069p = hVar.f19056b.o("upTrigger").b();
                }
                if (hVar.f19056b.f19480a.containsKey("leftTop")) {
                    hVar.f19070q = hVar.f19056b.o("leftTop").e();
                    hVar.r = hVar.f19056b.o("leftBottom").e();
                    hVar.f19071s = hVar.f19056b.o("rightTop").e();
                    hVar.f19072t = hVar.f19056b.o("rightBottom").e();
                    hVar.f19073u = hVar.f19056b.o("bottomLeft").e();
                    hVar.f19074v = hVar.f19056b.o("bottomRight").e();
                }
                if (hVar.f19056b.o("leftOn").b()) {
                    View view = new View(hVar.f19055a);
                    hVar.f19058d = view;
                    view.setClickable(true);
                    hVar.f19058d.setBackground(null);
                    hVar.f19058d.setWillNotDraw(true);
                    if (hVar.f19056b.o("showView").b()) {
                        hVar.f19058d.setBackgroundColor(Color.parseColor("#60000000"));
                    } else {
                        hVar.f19058d.setBackgroundColor(0);
                        hVar.f19058d.setLayerType(0, null);
                    }
                    int iE2 = hVar.f19056b.o("leftSize").e();
                    int i10 = (((Point) hVar.f19055a.f3937i.f18898e).y - hVar.f19070q) - hVar.r;
                    int i11 = Build.VERSION.SDK_INT;
                    WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(iE2, i10, i11 >= 22 ? 2032 : 2002, 808, -3);
                    hVar.f19059e = layoutParams;
                    if (i11 >= 28) {
                        layoutParams.layoutInDisplayCutoutMode = 1;
                    }
                    WindowManager.LayoutParams layoutParams2 = hVar.f19059e;
                    layoutParams2.gravity = 8388659;
                    FloatWindowInsets floatWindowInsets = (FloatWindowInsets) hVar.f19055a.f3937i.f18897d;
                    layoutParams2.x = -floatWindowInsets.left;
                    layoutParams2.y = hVar.f19070q - floatWindowInsets.top;
                    final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
                    final AtomicInteger atomicInteger = new AtomicInteger(0);
                    final int iE3 = hVar.f19056b.o("leftSplit").e();
                    final AtomicInteger atomicInteger2 = new AtomicInteger(iE3);
                    final int i12 = 0;
                    r4 = 0;
                    str = "showView";
                    r14 = 0;
                    hVar.f19058d.setOnTouchListener(new View.OnTouchListener() { // from class: ya.g
                        /* JADX WARN: Code restructure failed: missing block: B:10:0x0032, code lost:
                        
                            if (r7 != 3) goto L59;
                         */
                        /*
                            Code decompiled incorrectly, please refer to instructions dump.
                        */
                        private final boolean a(View view2, MotionEvent motionEvent) {
                            int action;
                            androidx.activity.h hVar2;
                            AtomicBoolean atomicBoolean2;
                            AtomicInteger atomicInteger3;
                            AtomicInteger atomicInteger4;
                            int i13;
                            o oVarP;
                            o oVarP2;
                            h hVar3 = hVar;
                            hVar3.getClass();
                            int rawX = (int) motionEvent.getRawX();
                            int rawY = (int) motionEvent.getRawY();
                            try {
                                action = motionEvent.getAction();
                                hVar2 = hVar3.z;
                                atomicBoolean2 = atomicBoolean;
                                atomicInteger3 = atomicInteger;
                                atomicInteger4 = atomicInteger2;
                            } catch (Exception unused) {
                            }
                            if (action == 0) {
                                hVar3.f19064j = false;
                                hVar3.f19065k = false;
                                atomicBoolean2.set(false);
                                atomicInteger3.set(0);
                                hVar3.l = rawX;
                                hVar3.f19066m = rawY;
                                hVar3.f19067n = System.currentTimeMillis();
                                if (hVar3.f19068o == 1) {
                                    i13 = 2;
                                    hVar3.f19075w.c(2);
                                } else {
                                    i13 = 2;
                                }
                                int i14 = iE3;
                                if (i14 == i13) {
                                    atomicInteger4.set((hVar3.f19063i.width / i13) + hVar3.f19073u > hVar3.l ? 1 : 2);
                                } else if (i14 == 3) {
                                    int i15 = hVar3.f19063i.width / 3;
                                    int i16 = hVar3.l;
                                    int i17 = hVar3.f19073u;
                                    atomicInteger4.set(i16 < i15 + i17 ? 1 : i16 > (i15 * 2) + i17 ? 2 : 3);
                                }
                                o oVarP3 = hVar3.f19056b.q("底部").p("长按" + atomicInteger4.get());
                                hVar3.f19077y = oVarP3;
                                if (!oVarP3.f19478a.isEmpty()) {
                                    hVar3.f19055a.G.postDelayed(hVar2, 600L);
                                }
                            } else {
                                if (action != 1) {
                                    if (action == 2) {
                                        int i18 = rawX - hVar3.l;
                                        int i19 = rawY - hVar3.f19066m;
                                        float fSqrt = (float) Math.sqrt((i19 * i19) + (i18 * i18));
                                        if (hVar3.f19068o == 1) {
                                            hVar3.f19075w.e(fSqrt);
                                        }
                                        if (!hVar3.f19064j && !hVar3.f19065k) {
                                            if (!atomicBoolean2.get() && fSqrt > 15.0f) {
                                                atomicBoolean2.set(true);
                                                hVar3.f19055a.G.removeCallbacks(hVar2);
                                            }
                                            if (fSqrt < 50.0f) {
                                                atomicInteger3.set(0);
                                            } else if (Math.abs(i18) > Math.abs(i19)) {
                                                if (i18 > 0) {
                                                    atomicInteger3.set(4);
                                                } else {
                                                    atomicInteger3.set(3);
                                                }
                                            } else if (i19 > 0) {
                                                atomicInteger3.set(2);
                                            } else {
                                                atomicInteger3.set(1);
                                            }
                                            if (!hVar3.f19069p) {
                                                if (atomicInteger3.get() > 0) {
                                                    hVar3.f19065k = true;
                                                    if (atomicInteger3.get() == 1) {
                                                        oVarP2 = hVar3.f19056b.q("底部").p("上滑" + atomicInteger4.get());
                                                    } else {
                                                        if (atomicInteger3.get() != 2) {
                                                            if (atomicInteger3.get() == 3) {
                                                                oVarP2 = hVar3.f19056b.q("底部").p("左滑" + atomicInteger4.get());
                                                            } else if (atomicInteger3.get() == 4) {
                                                                oVarP2 = hVar3.f19056b.q("底部").p("右滑" + atomicInteger4.get());
                                                            }
                                                        }
                                                        oVarP2 = null;
                                                    }
                                                    if (oVarP2 != null && !oVarP2.f19478a.isEmpty()) {
                                                        hVar3.f19055a.b(oVarP2);
                                                    }
                                                }
                                            }
                                        }
                                    }
                                    return false;
                                }
                                hVar3.f19055a.G.removeCallbacks(hVar2);
                                if (hVar3.f19068o == 1) {
                                    hVar3.f19075w.b();
                                }
                                if (!hVar3.f19064j && !hVar3.f19065k) {
                                    if (hVar3.f19069p && atomicInteger3.get() > 0) {
                                        if (atomicInteger3.get() == 1) {
                                            oVarP = hVar3.f19056b.q("底部").p("上滑" + atomicInteger4.get());
                                        } else {
                                            if (atomicInteger3.get() != 2) {
                                                if (atomicInteger3.get() == 3) {
                                                    oVarP = hVar3.f19056b.q("底部").p("左滑" + atomicInteger4.get());
                                                } else if (atomicInteger3.get() == 4) {
                                                    oVarP = hVar3.f19056b.q("底部").p("右滑" + atomicInteger4.get());
                                                }
                                            }
                                            oVarP = null;
                                        }
                                        if (oVarP != null && !oVarP.f19478a.isEmpty()) {
                                            hVar3.f19055a.b(oVarP);
                                        }
                                    } else if (System.currentTimeMillis() - hVar3.f19067n <= 500) {
                                        int iE4 = hVar3.f19056b.o("bottomSplit").e();
                                        hVar3.f19076x = iE4;
                                        if (iE4 == 2) {
                                            hVar3.f19076x = ((Point) hVar3.f19055a.f3937i.f18898e).x / 2 > hVar3.l ? 1 : 2;
                                        } else if (iE4 == 3) {
                                            int i20 = ((Point) hVar3.f19055a.f3937i.f18898e).x / 3;
                                            int i21 = hVar3.l;
                                            hVar3.f19076x = i21 < i20 ? 1 : i21 > i20 * 2 ? 2 : 3;
                                        }
                                        o oVarP4 = hVar3.f19056b.q("底部").p("单击" + hVar3.f19076x);
                                        hVar3.f19077y = oVarP4;
                                        if (!oVarP4.f19478a.isEmpty()) {
                                            hVar3.f19055a.b(hVar3.f19077y);
                                        } else if (Build.VERSION.SDK_INT >= 24) {
                                            WindowManager.LayoutParams layoutParams3 = hVar3.f19063i;
                                            layoutParams3.height = 0;
                                            hVar3.f19057c.updateViewLayout(hVar3.f19062h, layoutParams3);
                                            hVar3.f19055a.N0.execute(new f(hVar3, 5));
                                            hVar3.f19055a.G.postDelayed(new f(hVar3, 6), 300L);
                                        }
                                    }
                                }
                            }
                            return true;
                        }

                        /* JADX WARN: Code restructure failed: missing block: B:12:0x0037, code lost:
                        
                            if (r7 != 3) goto L58;
                         */
                        /* JADX WARN: Code restructure failed: missing block: B:153:0x0339, code lost:
                        
                            if (r7 != 3) goto L202;
                         */
                        @Override // android.view.View.OnTouchListener
                        /*
                            Code decompiled incorrectly, please refer to instructions dump.
                        */
                        public final boolean onTouch(View view2, MotionEvent motionEvent) {
                            int action;
                            androidx.activity.h hVar2;
                            AtomicBoolean atomicBoolean2;
                            AtomicInteger atomicInteger3;
                            AtomicInteger atomicInteger4;
                            o oVarP;
                            o oVarP2;
                            int action2;
                            androidx.activity.h hVar3;
                            AtomicBoolean atomicBoolean3;
                            AtomicInteger atomicInteger5;
                            AtomicInteger atomicInteger6;
                            o oVarP3;
                            o oVarP4;
                            switch (i12) {
                                case 0:
                                    h hVar4 = hVar;
                                    hVar4.getClass();
                                    int rawX = (int) motionEvent.getRawX();
                                    int rawY = (int) motionEvent.getRawY();
                                    try {
                                        action = motionEvent.getAction();
                                        hVar2 = hVar4.z;
                                        atomicBoolean2 = atomicBoolean;
                                        atomicInteger3 = atomicInteger;
                                        atomicInteger4 = atomicInteger2;
                                    } catch (Exception unused) {
                                    }
                                    if (action == 0) {
                                        hVar4.f19064j = false;
                                        hVar4.f19065k = false;
                                        atomicBoolean2.set(false);
                                        atomicInteger3.set(0);
                                        hVar4.l = rawX;
                                        hVar4.f19066m = rawY;
                                        hVar4.f19067n = System.currentTimeMillis();
                                        if (hVar4.f19068o == 1) {
                                            try {
                                                hVar4.f19075w.c(0);
                                            } catch (Exception unused2) {
                                            }
                                        }
                                        int i13 = iE3;
                                        if (i13 == 2) {
                                            atomicInteger4.set((hVar4.f19059e.height / 2) + hVar4.f19070q > hVar4.f19066m ? 1 : 2);
                                        } else if (i13 == 3) {
                                            int i14 = hVar4.f19059e.height / 3;
                                            int i15 = hVar4.f19066m;
                                            int i16 = hVar4.f19070q;
                                            atomicInteger4.set(i15 < i14 + i16 ? 1 : i15 > (i14 * 2) + i16 ? 2 : 3);
                                        }
                                        o oVarP5 = hVar4.f19056b.q("左侧").p("长按" + atomicInteger4.get());
                                        hVar4.f19077y = oVarP5;
                                        if (!oVarP5.f19478a.isEmpty()) {
                                            hVar4.f19055a.G.postDelayed(hVar2, 600L);
                                        }
                                    } else {
                                        if (action != 1) {
                                            if (action != 2) {
                                                break;
                                            } else {
                                                int i17 = rawX - hVar4.l;
                                                int i18 = rawY - hVar4.f19066m;
                                                float fSqrt = (float) Math.sqrt((i18 * i18) + (i17 * i17));
                                                if (hVar4.f19068o == 1) {
                                                    hVar4.f19075w.e(fSqrt);
                                                }
                                                if (!hVar4.f19064j && !hVar4.f19065k) {
                                                    if (!atomicBoolean2.get() && fSqrt > 15.0f) {
                                                        atomicBoolean2.set(true);
                                                        hVar4.f19055a.G.removeCallbacks(hVar2);
                                                    }
                                                    if (fSqrt < 50.0f) {
                                                        atomicInteger3.set(0);
                                                    } else if (Math.abs(i17) > Math.abs(i18)) {
                                                        if (i17 > 0) {
                                                            atomicInteger3.set(4);
                                                        } else {
                                                            atomicInteger3.set(3);
                                                        }
                                                    } else if (i18 > 0) {
                                                        atomicInteger3.set(2);
                                                    } else {
                                                        atomicInteger3.set(1);
                                                    }
                                                    if (!hVar4.f19069p) {
                                                        if (atomicInteger3.get() > 0) {
                                                            hVar4.f19065k = true;
                                                            if (atomicInteger3.get() == 1) {
                                                                oVarP2 = hVar4.f19056b.q("左侧").p("上滑" + atomicInteger4.get());
                                                            } else if (atomicInteger3.get() == 2) {
                                                                oVarP2 = hVar4.f19056b.q("左侧").p("下滑" + atomicInteger4.get());
                                                            } else if (atomicInteger3.get() != 3 && atomicInteger3.get() == 4) {
                                                                oVarP2 = hVar4.f19056b.q("左侧").p("右滑" + atomicInteger4.get());
                                                            } else {
                                                                oVarP2 = null;
                                                            }
                                                            if (oVarP2 != null && !oVarP2.f19478a.isEmpty()) {
                                                                hVar4.f19055a.b(oVarP2);
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                            return false;
                                        }
                                        hVar4.f19055a.G.removeCallbacks(hVar2);
                                        if (hVar4.f19068o == 1) {
                                            hVar4.f19075w.b();
                                        }
                                        if (!hVar4.f19064j && !hVar4.f19065k) {
                                            if (hVar4.f19069p && atomicInteger3.get() > 0) {
                                                if (atomicInteger3.get() == 1) {
                                                    oVarP = hVar4.f19056b.q("左侧").p("上滑" + atomicInteger4.get());
                                                } else if (atomicInteger3.get() == 2) {
                                                    oVarP = hVar4.f19056b.q("左侧").p("下滑" + atomicInteger4.get());
                                                } else if (atomicInteger3.get() != 3 && atomicInteger3.get() == 4) {
                                                    oVarP = hVar4.f19056b.q("左侧").p("右滑" + atomicInteger4.get());
                                                } else {
                                                    oVarP = null;
                                                }
                                                if (oVarP != null && !oVarP.f19478a.isEmpty()) {
                                                    hVar4.f19055a.b(oVarP);
                                                }
                                            } else if (System.currentTimeMillis() - hVar4.f19067n <= 500) {
                                                o oVarP6 = hVar4.f19056b.q("左侧").p("单击" + atomicInteger4.get());
                                                hVar4.f19077y = oVarP6;
                                                if (!oVarP6.f19478a.isEmpty()) {
                                                    hVar4.f19055a.b(hVar4.f19077y);
                                                } else if (Build.VERSION.SDK_INT >= 24) {
                                                    WindowManager.LayoutParams layoutParams3 = hVar4.f19059e;
                                                    layoutParams3.width = 0;
                                                    hVar4.f19057c.updateViewLayout(hVar4.f19058d, layoutParams3);
                                                    hVar4.f19055a.N0.execute(new f(hVar4, 1));
                                                    hVar4.f19055a.G.postDelayed(new f(hVar4, 2), 300L);
                                                }
                                            }
                                        }
                                    }
                                    return true;
                                case 1:
                                    return a(view2, motionEvent);
                                default:
                                    h hVar5 = hVar;
                                    hVar5.getClass();
                                    int rawX2 = (int) motionEvent.getRawX();
                                    int rawY2 = (int) motionEvent.getRawY();
                                    try {
                                        action2 = motionEvent.getAction();
                                        hVar3 = hVar5.z;
                                        atomicBoolean3 = atomicBoolean;
                                        atomicInteger5 = atomicInteger;
                                        atomicInteger6 = atomicInteger2;
                                    } catch (Exception unused3) {
                                    }
                                    if (action2 == 0) {
                                        hVar5.f19064j = false;
                                        hVar5.f19065k = false;
                                        atomicBoolean3.set(false);
                                        atomicInteger5.set(0);
                                        hVar5.l = rawX2;
                                        hVar5.f19066m = rawY2;
                                        hVar5.f19067n = System.currentTimeMillis();
                                        if (hVar5.f19068o == 1) {
                                            hVar5.f19075w.c(1);
                                        }
                                        int i19 = iE3;
                                        if (i19 == 2) {
                                            atomicInteger6.set((hVar5.f19061g.height / 2) + hVar5.f19071s > hVar5.f19066m ? 1 : 2);
                                        } else if (i19 == 3) {
                                            int i20 = hVar5.f19061g.height / 3;
                                            int i21 = hVar5.f19066m;
                                            int i22 = hVar5.f19071s;
                                            atomicInteger6.set(i21 < i20 + i22 ? 1 : i21 > (i20 * 2) + i22 ? 2 : 3);
                                        }
                                        o oVarP7 = hVar5.f19056b.q("右侧").p("长按" + atomicInteger6.get());
                                        hVar5.f19077y = oVarP7;
                                        if (!oVarP7.f19478a.isEmpty()) {
                                            hVar5.f19055a.G.postDelayed(hVar3, 600L);
                                        }
                                    } else {
                                        if (action2 != 1) {
                                            if (action2 != 2) {
                                                break;
                                            } else {
                                                int i23 = rawX2 - hVar5.l;
                                                int i24 = rawY2 - hVar5.f19066m;
                                                float fSqrt2 = (float) Math.sqrt((i24 * i24) + (i23 * i23));
                                                if (hVar5.f19068o == 1) {
                                                    hVar5.f19075w.e(fSqrt2);
                                                }
                                                if (!hVar5.f19064j && !hVar5.f19065k) {
                                                    if (!atomicBoolean3.get() && fSqrt2 > 15.0f) {
                                                        atomicBoolean3.set(true);
                                                        hVar5.f19055a.G.removeCallbacks(hVar3);
                                                    }
                                                    if (fSqrt2 < 50.0f) {
                                                        atomicInteger5.set(0);
                                                    } else if (Math.abs(i23) > Math.abs(i24)) {
                                                        if (i23 > 0) {
                                                            atomicInteger5.set(4);
                                                        } else {
                                                            atomicInteger5.set(3);
                                                        }
                                                    } else if (i24 > 0) {
                                                        atomicInteger5.set(2);
                                                    } else {
                                                        atomicInteger5.set(1);
                                                    }
                                                    if (!hVar5.f19069p) {
                                                        if (atomicInteger5.get() > 0) {
                                                            hVar5.f19065k = true;
                                                            if (atomicInteger5.get() == 1) {
                                                                oVarP4 = hVar5.f19056b.q("右侧").p("上滑" + atomicInteger6.get());
                                                            } else if (atomicInteger5.get() == 2) {
                                                                oVarP4 = hVar5.f19056b.q("右侧").p("下滑" + atomicInteger6.get());
                                                            } else if (atomicInteger5.get() == 3) {
                                                                oVarP4 = hVar5.f19056b.q("右侧").p("左滑" + atomicInteger6.get());
                                                            } else {
                                                                atomicInteger5.get();
                                                                oVarP4 = null;
                                                            }
                                                            if (oVarP4 != null && !oVarP4.f19478a.isEmpty()) {
                                                                hVar5.f19055a.b(oVarP4);
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                            return false;
                                        }
                                        hVar5.f19055a.G.removeCallbacks(hVar3);
                                        if (hVar5.f19068o == 1) {
                                            hVar5.f19075w.b();
                                        }
                                        if (!hVar5.f19064j && !hVar5.f19065k) {
                                            if (hVar5.f19069p && atomicInteger5.get() > 0) {
                                                if (atomicInteger5.get() == 1) {
                                                    oVarP3 = hVar5.f19056b.q("右侧").p("上滑" + atomicInteger6.get());
                                                } else if (atomicInteger5.get() == 2) {
                                                    oVarP3 = hVar5.f19056b.q("右侧").p("下滑" + atomicInteger6.get());
                                                } else if (atomicInteger5.get() == 3) {
                                                    oVarP3 = hVar5.f19056b.q("右侧").p("左滑" + atomicInteger6.get());
                                                } else {
                                                    atomicInteger5.get();
                                                    oVarP3 = null;
                                                }
                                                if (oVarP3 != null && !oVarP3.f19478a.isEmpty()) {
                                                    hVar5.f19055a.b(oVarP3);
                                                }
                                            } else if (System.currentTimeMillis() - hVar5.f19067n <= 500) {
                                                int iE4 = hVar5.f19056b.o("rightSplit").e();
                                                hVar5.f19076x = iE4;
                                                if (iE4 == 2) {
                                                    hVar5.f19076x = hVar5.f19066m < ((Point) hVar5.f19055a.f3937i.f18898e).y / 2 ? 1 : 2;
                                                } else if (iE4 == 3) {
                                                    int i25 = ((Point) hVar5.f19055a.f3937i.f18898e).y / 3;
                                                    int i26 = hVar5.f19066m;
                                                    hVar5.f19076x = i26 < i25 ? 1 : i26 > i25 * 2 ? 2 : 3;
                                                }
                                                o oVarP8 = hVar5.f19056b.q("右侧").p("单击" + hVar5.f19076x);
                                                hVar5.f19077y = oVarP8;
                                                if (!oVarP8.f19478a.isEmpty()) {
                                                    hVar5.f19055a.b(hVar5.f19077y);
                                                } else if (Build.VERSION.SDK_INT >= 24) {
                                                    WindowManager.LayoutParams layoutParams4 = hVar5.f19061g;
                                                    layoutParams4.width = 0;
                                                    hVar5.f19057c.updateViewLayout(hVar5.f19060f, layoutParams4);
                                                    hVar5.f19055a.N0.execute(new f(hVar5, 3));
                                                    hVar5.f19055a.G.postDelayed(new f(hVar5, 4), 300L);
                                                }
                                            }
                                        }
                                    }
                                    return true;
                            }
                        }
                    });
                } else {
                    r4 = 0;
                    str = "showView";
                    r14 = 0;
                }
                if (hVar.f19056b.o("rightOn").b()) {
                    View view2 = new View(hVar.f19055a);
                    hVar.f19060f = view2;
                    view2.setClickable(true);
                    hVar.f19060f.setBackground(r4);
                    hVar.f19060f.setWillNotDraw(true);
                    if (hVar.f19056b.o(str).b()) {
                        hVar.f19060f.setBackgroundColor(Color.parseColor("#60000000"));
                    } else {
                        hVar.f19060f.setBackgroundColor(r14);
                        hVar.f19060f.setLayerType(r14, r4);
                    }
                    int iE4 = hVar.f19056b.o("rightSize").e();
                    int i13 = (((Point) hVar.f19055a.f3937i.f18898e).y - hVar.f19071s) - hVar.f19072t;
                    int i14 = Build.VERSION.SDK_INT;
                    WindowManager.LayoutParams layoutParams3 = new WindowManager.LayoutParams(iE4, i13, i14 >= 22 ? 2032 : 2002, 808, -3);
                    hVar.f19061g = layoutParams3;
                    if (i14 >= 28) {
                        layoutParams3.layoutInDisplayCutoutMode = 1;
                    }
                    WindowManager.LayoutParams layoutParams4 = hVar.f19061g;
                    layoutParams4.gravity = 8388661;
                    y3.a aVar = hVar.f19055a.f3937i;
                    boolean z = aVar.f18894a;
                    FloatWindowInsets floatWindowInsets2 = (FloatWindowInsets) aVar.f18897d;
                    layoutParams4.x = z ? -floatWindowInsets2.right : 0;
                    layoutParams4.y = z ? hVar.f19071s - floatWindowInsets2.top : hVar.f19071s;
                    final AtomicBoolean atomicBoolean2 = new AtomicBoolean(r14);
                    final AtomicInteger atomicInteger3 = new AtomicInteger(r14);
                    final int iE5 = hVar.f19056b.o("rightSplit").e();
                    final AtomicInteger atomicInteger4 = new AtomicInteger(iE5);
                    final int i15 = 2;
                    hVar.f19060f.setOnTouchListener(new View.OnTouchListener() { // from class: ya.g
                        /* JADX WARN: Code restructure failed: missing block: B:10:0x0032, code lost:
                        
                            if (r7 != 3) goto L59;
                         */
                        /*
                            Code decompiled incorrectly, please refer to instructions dump.
                        */
                        private final boolean a(View view22, MotionEvent motionEvent) {
                            int action;
                            androidx.activity.h hVar2;
                            AtomicBoolean atomicBoolean22;
                            AtomicInteger atomicInteger32;
                            AtomicInteger atomicInteger42;
                            int i132;
                            o oVarP;
                            o oVarP2;
                            h hVar3 = hVar;
                            hVar3.getClass();
                            int rawX = (int) motionEvent.getRawX();
                            int rawY = (int) motionEvent.getRawY();
                            try {
                                action = motionEvent.getAction();
                                hVar2 = hVar3.z;
                                atomicBoolean22 = atomicBoolean2;
                                atomicInteger32 = atomicInteger3;
                                atomicInteger42 = atomicInteger4;
                            } catch (Exception unused) {
                            }
                            if (action == 0) {
                                hVar3.f19064j = false;
                                hVar3.f19065k = false;
                                atomicBoolean22.set(false);
                                atomicInteger32.set(0);
                                hVar3.l = rawX;
                                hVar3.f19066m = rawY;
                                hVar3.f19067n = System.currentTimeMillis();
                                if (hVar3.f19068o == 1) {
                                    i132 = 2;
                                    hVar3.f19075w.c(2);
                                } else {
                                    i132 = 2;
                                }
                                int i142 = iE5;
                                if (i142 == i132) {
                                    atomicInteger42.set((hVar3.f19063i.width / i132) + hVar3.f19073u > hVar3.l ? 1 : 2);
                                } else if (i142 == 3) {
                                    int i152 = hVar3.f19063i.width / 3;
                                    int i16 = hVar3.l;
                                    int i17 = hVar3.f19073u;
                                    atomicInteger42.set(i16 < i152 + i17 ? 1 : i16 > (i152 * 2) + i17 ? 2 : 3);
                                }
                                o oVarP3 = hVar3.f19056b.q("底部").p("长按" + atomicInteger42.get());
                                hVar3.f19077y = oVarP3;
                                if (!oVarP3.f19478a.isEmpty()) {
                                    hVar3.f19055a.G.postDelayed(hVar2, 600L);
                                }
                            } else {
                                if (action != 1) {
                                    if (action == 2) {
                                        int i18 = rawX - hVar3.l;
                                        int i19 = rawY - hVar3.f19066m;
                                        float fSqrt = (float) Math.sqrt((i19 * i19) + (i18 * i18));
                                        if (hVar3.f19068o == 1) {
                                            hVar3.f19075w.e(fSqrt);
                                        }
                                        if (!hVar3.f19064j && !hVar3.f19065k) {
                                            if (!atomicBoolean22.get() && fSqrt > 15.0f) {
                                                atomicBoolean22.set(true);
                                                hVar3.f19055a.G.removeCallbacks(hVar2);
                                            }
                                            if (fSqrt < 50.0f) {
                                                atomicInteger32.set(0);
                                            } else if (Math.abs(i18) > Math.abs(i19)) {
                                                if (i18 > 0) {
                                                    atomicInteger32.set(4);
                                                } else {
                                                    atomicInteger32.set(3);
                                                }
                                            } else if (i19 > 0) {
                                                atomicInteger32.set(2);
                                            } else {
                                                atomicInteger32.set(1);
                                            }
                                            if (!hVar3.f19069p) {
                                                if (atomicInteger32.get() > 0) {
                                                    hVar3.f19065k = true;
                                                    if (atomicInteger32.get() == 1) {
                                                        oVarP2 = hVar3.f19056b.q("底部").p("上滑" + atomicInteger42.get());
                                                    } else {
                                                        if (atomicInteger32.get() != 2) {
                                                            if (atomicInteger32.get() == 3) {
                                                                oVarP2 = hVar3.f19056b.q("底部").p("左滑" + atomicInteger42.get());
                                                            } else if (atomicInteger32.get() == 4) {
                                                                oVarP2 = hVar3.f19056b.q("底部").p("右滑" + atomicInteger42.get());
                                                            }
                                                        }
                                                        oVarP2 = null;
                                                    }
                                                    if (oVarP2 != null && !oVarP2.f19478a.isEmpty()) {
                                                        hVar3.f19055a.b(oVarP2);
                                                    }
                                                }
                                            }
                                        }
                                    }
                                    return false;
                                }
                                hVar3.f19055a.G.removeCallbacks(hVar2);
                                if (hVar3.f19068o == 1) {
                                    hVar3.f19075w.b();
                                }
                                if (!hVar3.f19064j && !hVar3.f19065k) {
                                    if (hVar3.f19069p && atomicInteger32.get() > 0) {
                                        if (atomicInteger32.get() == 1) {
                                            oVarP = hVar3.f19056b.q("底部").p("上滑" + atomicInteger42.get());
                                        } else {
                                            if (atomicInteger32.get() != 2) {
                                                if (atomicInteger32.get() == 3) {
                                                    oVarP = hVar3.f19056b.q("底部").p("左滑" + atomicInteger42.get());
                                                } else if (atomicInteger32.get() == 4) {
                                                    oVarP = hVar3.f19056b.q("底部").p("右滑" + atomicInteger42.get());
                                                }
                                            }
                                            oVarP = null;
                                        }
                                        if (oVarP != null && !oVarP.f19478a.isEmpty()) {
                                            hVar3.f19055a.b(oVarP);
                                        }
                                    } else if (System.currentTimeMillis() - hVar3.f19067n <= 500) {
                                        int iE42 = hVar3.f19056b.o("bottomSplit").e();
                                        hVar3.f19076x = iE42;
                                        if (iE42 == 2) {
                                            hVar3.f19076x = ((Point) hVar3.f19055a.f3937i.f18898e).x / 2 > hVar3.l ? 1 : 2;
                                        } else if (iE42 == 3) {
                                            int i20 = ((Point) hVar3.f19055a.f3937i.f18898e).x / 3;
                                            int i21 = hVar3.l;
                                            hVar3.f19076x = i21 < i20 ? 1 : i21 > i20 * 2 ? 2 : 3;
                                        }
                                        o oVarP4 = hVar3.f19056b.q("底部").p("单击" + hVar3.f19076x);
                                        hVar3.f19077y = oVarP4;
                                        if (!oVarP4.f19478a.isEmpty()) {
                                            hVar3.f19055a.b(hVar3.f19077y);
                                        } else if (Build.VERSION.SDK_INT >= 24) {
                                            WindowManager.LayoutParams layoutParams32 = hVar3.f19063i;
                                            layoutParams32.height = 0;
                                            hVar3.f19057c.updateViewLayout(hVar3.f19062h, layoutParams32);
                                            hVar3.f19055a.N0.execute(new f(hVar3, 5));
                                            hVar3.f19055a.G.postDelayed(new f(hVar3, 6), 300L);
                                        }
                                    }
                                }
                            }
                            return true;
                        }

                        /* JADX WARN: Code restructure failed: missing block: B:12:0x0037, code lost:
                        
                            if (r7 != 3) goto L58;
                         */
                        /* JADX WARN: Code restructure failed: missing block: B:153:0x0339, code lost:
                        
                            if (r7 != 3) goto L202;
                         */
                        @Override // android.view.View.OnTouchListener
                        /*
                            Code decompiled incorrectly, please refer to instructions dump.
                        */
                        public final boolean onTouch(View view22, MotionEvent motionEvent) {
                            int action;
                            androidx.activity.h hVar2;
                            AtomicBoolean atomicBoolean22;
                            AtomicInteger atomicInteger32;
                            AtomicInteger atomicInteger42;
                            o oVarP;
                            o oVarP2;
                            int action2;
                            androidx.activity.h hVar3;
                            AtomicBoolean atomicBoolean3;
                            AtomicInteger atomicInteger5;
                            AtomicInteger atomicInteger6;
                            o oVarP3;
                            o oVarP4;
                            switch (i15) {
                                case 0:
                                    h hVar4 = hVar;
                                    hVar4.getClass();
                                    int rawX = (int) motionEvent.getRawX();
                                    int rawY = (int) motionEvent.getRawY();
                                    try {
                                        action = motionEvent.getAction();
                                        hVar2 = hVar4.z;
                                        atomicBoolean22 = atomicBoolean2;
                                        atomicInteger32 = atomicInteger3;
                                        atomicInteger42 = atomicInteger4;
                                    } catch (Exception unused) {
                                    }
                                    if (action == 0) {
                                        hVar4.f19064j = false;
                                        hVar4.f19065k = false;
                                        atomicBoolean22.set(false);
                                        atomicInteger32.set(0);
                                        hVar4.l = rawX;
                                        hVar4.f19066m = rawY;
                                        hVar4.f19067n = System.currentTimeMillis();
                                        if (hVar4.f19068o == 1) {
                                            try {
                                                hVar4.f19075w.c(0);
                                            } catch (Exception unused2) {
                                            }
                                        }
                                        int i132 = iE5;
                                        if (i132 == 2) {
                                            atomicInteger42.set((hVar4.f19059e.height / 2) + hVar4.f19070q > hVar4.f19066m ? 1 : 2);
                                        } else if (i132 == 3) {
                                            int i142 = hVar4.f19059e.height / 3;
                                            int i152 = hVar4.f19066m;
                                            int i16 = hVar4.f19070q;
                                            atomicInteger42.set(i152 < i142 + i16 ? 1 : i152 > (i142 * 2) + i16 ? 2 : 3);
                                        }
                                        o oVarP5 = hVar4.f19056b.q("左侧").p("长按" + atomicInteger42.get());
                                        hVar4.f19077y = oVarP5;
                                        if (!oVarP5.f19478a.isEmpty()) {
                                            hVar4.f19055a.G.postDelayed(hVar2, 600L);
                                        }
                                    } else {
                                        if (action != 1) {
                                            if (action != 2) {
                                                break;
                                            } else {
                                                int i17 = rawX - hVar4.l;
                                                int i18 = rawY - hVar4.f19066m;
                                                float fSqrt = (float) Math.sqrt((i18 * i18) + (i17 * i17));
                                                if (hVar4.f19068o == 1) {
                                                    hVar4.f19075w.e(fSqrt);
                                                }
                                                if (!hVar4.f19064j && !hVar4.f19065k) {
                                                    if (!atomicBoolean22.get() && fSqrt > 15.0f) {
                                                        atomicBoolean22.set(true);
                                                        hVar4.f19055a.G.removeCallbacks(hVar2);
                                                    }
                                                    if (fSqrt < 50.0f) {
                                                        atomicInteger32.set(0);
                                                    } else if (Math.abs(i17) > Math.abs(i18)) {
                                                        if (i17 > 0) {
                                                            atomicInteger32.set(4);
                                                        } else {
                                                            atomicInteger32.set(3);
                                                        }
                                                    } else if (i18 > 0) {
                                                        atomicInteger32.set(2);
                                                    } else {
                                                        atomicInteger32.set(1);
                                                    }
                                                    if (!hVar4.f19069p) {
                                                        if (atomicInteger32.get() > 0) {
                                                            hVar4.f19065k = true;
                                                            if (atomicInteger32.get() == 1) {
                                                                oVarP2 = hVar4.f19056b.q("左侧").p("上滑" + atomicInteger42.get());
                                                            } else if (atomicInteger32.get() == 2) {
                                                                oVarP2 = hVar4.f19056b.q("左侧").p("下滑" + atomicInteger42.get());
                                                            } else if (atomicInteger32.get() != 3 && atomicInteger32.get() == 4) {
                                                                oVarP2 = hVar4.f19056b.q("左侧").p("右滑" + atomicInteger42.get());
                                                            } else {
                                                                oVarP2 = null;
                                                            }
                                                            if (oVarP2 != null && !oVarP2.f19478a.isEmpty()) {
                                                                hVar4.f19055a.b(oVarP2);
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                            return false;
                                        }
                                        hVar4.f19055a.G.removeCallbacks(hVar2);
                                        if (hVar4.f19068o == 1) {
                                            hVar4.f19075w.b();
                                        }
                                        if (!hVar4.f19064j && !hVar4.f19065k) {
                                            if (hVar4.f19069p && atomicInteger32.get() > 0) {
                                                if (atomicInteger32.get() == 1) {
                                                    oVarP = hVar4.f19056b.q("左侧").p("上滑" + atomicInteger42.get());
                                                } else if (atomicInteger32.get() == 2) {
                                                    oVarP = hVar4.f19056b.q("左侧").p("下滑" + atomicInteger42.get());
                                                } else if (atomicInteger32.get() != 3 && atomicInteger32.get() == 4) {
                                                    oVarP = hVar4.f19056b.q("左侧").p("右滑" + atomicInteger42.get());
                                                } else {
                                                    oVarP = null;
                                                }
                                                if (oVarP != null && !oVarP.f19478a.isEmpty()) {
                                                    hVar4.f19055a.b(oVarP);
                                                }
                                            } else if (System.currentTimeMillis() - hVar4.f19067n <= 500) {
                                                o oVarP6 = hVar4.f19056b.q("左侧").p("单击" + atomicInteger42.get());
                                                hVar4.f19077y = oVarP6;
                                                if (!oVarP6.f19478a.isEmpty()) {
                                                    hVar4.f19055a.b(hVar4.f19077y);
                                                } else if (Build.VERSION.SDK_INT >= 24) {
                                                    WindowManager.LayoutParams layoutParams32 = hVar4.f19059e;
                                                    layoutParams32.width = 0;
                                                    hVar4.f19057c.updateViewLayout(hVar4.f19058d, layoutParams32);
                                                    hVar4.f19055a.N0.execute(new f(hVar4, 1));
                                                    hVar4.f19055a.G.postDelayed(new f(hVar4, 2), 300L);
                                                }
                                            }
                                        }
                                    }
                                    return true;
                                case 1:
                                    return a(view22, motionEvent);
                                default:
                                    h hVar5 = hVar;
                                    hVar5.getClass();
                                    int rawX2 = (int) motionEvent.getRawX();
                                    int rawY2 = (int) motionEvent.getRawY();
                                    try {
                                        action2 = motionEvent.getAction();
                                        hVar3 = hVar5.z;
                                        atomicBoolean3 = atomicBoolean2;
                                        atomicInteger5 = atomicInteger3;
                                        atomicInteger6 = atomicInteger4;
                                    } catch (Exception unused3) {
                                    }
                                    if (action2 == 0) {
                                        hVar5.f19064j = false;
                                        hVar5.f19065k = false;
                                        atomicBoolean3.set(false);
                                        atomicInteger5.set(0);
                                        hVar5.l = rawX2;
                                        hVar5.f19066m = rawY2;
                                        hVar5.f19067n = System.currentTimeMillis();
                                        if (hVar5.f19068o == 1) {
                                            hVar5.f19075w.c(1);
                                        }
                                        int i19 = iE5;
                                        if (i19 == 2) {
                                            atomicInteger6.set((hVar5.f19061g.height / 2) + hVar5.f19071s > hVar5.f19066m ? 1 : 2);
                                        } else if (i19 == 3) {
                                            int i20 = hVar5.f19061g.height / 3;
                                            int i21 = hVar5.f19066m;
                                            int i22 = hVar5.f19071s;
                                            atomicInteger6.set(i21 < i20 + i22 ? 1 : i21 > (i20 * 2) + i22 ? 2 : 3);
                                        }
                                        o oVarP7 = hVar5.f19056b.q("右侧").p("长按" + atomicInteger6.get());
                                        hVar5.f19077y = oVarP7;
                                        if (!oVarP7.f19478a.isEmpty()) {
                                            hVar5.f19055a.G.postDelayed(hVar3, 600L);
                                        }
                                    } else {
                                        if (action2 != 1) {
                                            if (action2 != 2) {
                                                break;
                                            } else {
                                                int i23 = rawX2 - hVar5.l;
                                                int i24 = rawY2 - hVar5.f19066m;
                                                float fSqrt2 = (float) Math.sqrt((i24 * i24) + (i23 * i23));
                                                if (hVar5.f19068o == 1) {
                                                    hVar5.f19075w.e(fSqrt2);
                                                }
                                                if (!hVar5.f19064j && !hVar5.f19065k) {
                                                    if (!atomicBoolean3.get() && fSqrt2 > 15.0f) {
                                                        atomicBoolean3.set(true);
                                                        hVar5.f19055a.G.removeCallbacks(hVar3);
                                                    }
                                                    if (fSqrt2 < 50.0f) {
                                                        atomicInteger5.set(0);
                                                    } else if (Math.abs(i23) > Math.abs(i24)) {
                                                        if (i23 > 0) {
                                                            atomicInteger5.set(4);
                                                        } else {
                                                            atomicInteger5.set(3);
                                                        }
                                                    } else if (i24 > 0) {
                                                        atomicInteger5.set(2);
                                                    } else {
                                                        atomicInteger5.set(1);
                                                    }
                                                    if (!hVar5.f19069p) {
                                                        if (atomicInteger5.get() > 0) {
                                                            hVar5.f19065k = true;
                                                            if (atomicInteger5.get() == 1) {
                                                                oVarP4 = hVar5.f19056b.q("右侧").p("上滑" + atomicInteger6.get());
                                                            } else if (atomicInteger5.get() == 2) {
                                                                oVarP4 = hVar5.f19056b.q("右侧").p("下滑" + atomicInteger6.get());
                                                            } else if (atomicInteger5.get() == 3) {
                                                                oVarP4 = hVar5.f19056b.q("右侧").p("左滑" + atomicInteger6.get());
                                                            } else {
                                                                atomicInteger5.get();
                                                                oVarP4 = null;
                                                            }
                                                            if (oVarP4 != null && !oVarP4.f19478a.isEmpty()) {
                                                                hVar5.f19055a.b(oVarP4);
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                            return false;
                                        }
                                        hVar5.f19055a.G.removeCallbacks(hVar3);
                                        if (hVar5.f19068o == 1) {
                                            hVar5.f19075w.b();
                                        }
                                        if (!hVar5.f19064j && !hVar5.f19065k) {
                                            if (hVar5.f19069p && atomicInteger5.get() > 0) {
                                                if (atomicInteger5.get() == 1) {
                                                    oVarP3 = hVar5.f19056b.q("右侧").p("上滑" + atomicInteger6.get());
                                                } else if (atomicInteger5.get() == 2) {
                                                    oVarP3 = hVar5.f19056b.q("右侧").p("下滑" + atomicInteger6.get());
                                                } else if (atomicInteger5.get() == 3) {
                                                    oVarP3 = hVar5.f19056b.q("右侧").p("左滑" + atomicInteger6.get());
                                                } else {
                                                    atomicInteger5.get();
                                                    oVarP3 = null;
                                                }
                                                if (oVarP3 != null && !oVarP3.f19478a.isEmpty()) {
                                                    hVar5.f19055a.b(oVarP3);
                                                }
                                            } else if (System.currentTimeMillis() - hVar5.f19067n <= 500) {
                                                int iE42 = hVar5.f19056b.o("rightSplit").e();
                                                hVar5.f19076x = iE42;
                                                if (iE42 == 2) {
                                                    hVar5.f19076x = hVar5.f19066m < ((Point) hVar5.f19055a.f3937i.f18898e).y / 2 ? 1 : 2;
                                                } else if (iE42 == 3) {
                                                    int i25 = ((Point) hVar5.f19055a.f3937i.f18898e).y / 3;
                                                    int i26 = hVar5.f19066m;
                                                    hVar5.f19076x = i26 < i25 ? 1 : i26 > i25 * 2 ? 2 : 3;
                                                }
                                                o oVarP8 = hVar5.f19056b.q("右侧").p("单击" + hVar5.f19076x);
                                                hVar5.f19077y = oVarP8;
                                                if (!oVarP8.f19478a.isEmpty()) {
                                                    hVar5.f19055a.b(hVar5.f19077y);
                                                } else if (Build.VERSION.SDK_INT >= 24) {
                                                    WindowManager.LayoutParams layoutParams42 = hVar5.f19061g;
                                                    layoutParams42.width = 0;
                                                    hVar5.f19057c.updateViewLayout(hVar5.f19060f, layoutParams42);
                                                    hVar5.f19055a.N0.execute(new f(hVar5, 3));
                                                    hVar5.f19055a.G.postDelayed(new f(hVar5, 4), 300L);
                                                }
                                            }
                                        }
                                    }
                                    return true;
                            }
                        }
                    });
                }
                if (hVar.f19056b.o("bottomOn").b()) {
                    View view3 = new View(hVar.f19055a);
                    hVar.f19062h = view3;
                    view3.setClickable(true);
                    hVar.f19062h.setBackground(r4);
                    hVar.f19062h.setWillNotDraw(true);
                    if (hVar.f19056b.o(str).b()) {
                        hVar.f19062h.setBackgroundColor(Color.parseColor("#60000000"));
                    } else {
                        hVar.f19062h.setBackgroundColor(r14);
                        hVar.f19062h.setLayerType(r14, r4);
                    }
                    int i16 = (((Point) hVar.f19055a.f3937i.f18898e).x - hVar.f19073u) - hVar.f19074v;
                    int iE6 = hVar.f19056b.o("bottomSize").e();
                    int i17 = Build.VERSION.SDK_INT;
                    WindowManager.LayoutParams layoutParams5 = new WindowManager.LayoutParams(i16, iE6, i17 >= 22 ? 2032 : 2002, 808, -3);
                    hVar.f19063i = layoutParams5;
                    if (i17 >= 28) {
                        layoutParams5.layoutInDisplayCutoutMode = 1;
                    }
                    WindowManager.LayoutParams layoutParams6 = hVar.f19063i;
                    layoutParams6.gravity = 8388691;
                    int i18 = hVar.f19073u;
                    FloatWindowInsets floatWindowInsets3 = (FloatWindowInsets) hVar.f19055a.f3937i.f18897d;
                    layoutParams6.x = i18 - floatWindowInsets3.left;
                    layoutParams6.y = -floatWindowInsets3.bottom;
                    final AtomicBoolean atomicBoolean3 = new AtomicBoolean(r14);
                    final AtomicInteger atomicInteger5 = new AtomicInteger(r14);
                    final int iE7 = hVar.f19056b.o("bottomSplit").e();
                    final AtomicInteger atomicInteger6 = new AtomicInteger(iE7);
                    final int i19 = 1;
                    hVar.f19062h.setOnTouchListener(new View.OnTouchListener() { // from class: ya.g
                        /* JADX WARN: Code restructure failed: missing block: B:10:0x0032, code lost:
                        
                            if (r7 != 3) goto L59;
                         */
                        /*
                            Code decompiled incorrectly, please refer to instructions dump.
                        */
                        private final boolean a(View view22, MotionEvent motionEvent) {
                            int action;
                            androidx.activity.h hVar2;
                            AtomicBoolean atomicBoolean22;
                            AtomicInteger atomicInteger32;
                            AtomicInteger atomicInteger42;
                            int i132;
                            o oVarP;
                            o oVarP2;
                            h hVar3 = hVar;
                            hVar3.getClass();
                            int rawX = (int) motionEvent.getRawX();
                            int rawY = (int) motionEvent.getRawY();
                            try {
                                action = motionEvent.getAction();
                                hVar2 = hVar3.z;
                                atomicBoolean22 = atomicBoolean3;
                                atomicInteger32 = atomicInteger5;
                                atomicInteger42 = atomicInteger6;
                            } catch (Exception unused) {
                            }
                            if (action == 0) {
                                hVar3.f19064j = false;
                                hVar3.f19065k = false;
                                atomicBoolean22.set(false);
                                atomicInteger32.set(0);
                                hVar3.l = rawX;
                                hVar3.f19066m = rawY;
                                hVar3.f19067n = System.currentTimeMillis();
                                if (hVar3.f19068o == 1) {
                                    i132 = 2;
                                    hVar3.f19075w.c(2);
                                } else {
                                    i132 = 2;
                                }
                                int i142 = iE7;
                                if (i142 == i132) {
                                    atomicInteger42.set((hVar3.f19063i.width / i132) + hVar3.f19073u > hVar3.l ? 1 : 2);
                                } else if (i142 == 3) {
                                    int i152 = hVar3.f19063i.width / 3;
                                    int i162 = hVar3.l;
                                    int i172 = hVar3.f19073u;
                                    atomicInteger42.set(i162 < i152 + i172 ? 1 : i162 > (i152 * 2) + i172 ? 2 : 3);
                                }
                                o oVarP3 = hVar3.f19056b.q("底部").p("长按" + atomicInteger42.get());
                                hVar3.f19077y = oVarP3;
                                if (!oVarP3.f19478a.isEmpty()) {
                                    hVar3.f19055a.G.postDelayed(hVar2, 600L);
                                }
                            } else {
                                if (action != 1) {
                                    if (action == 2) {
                                        int i182 = rawX - hVar3.l;
                                        int i192 = rawY - hVar3.f19066m;
                                        float fSqrt = (float) Math.sqrt((i192 * i192) + (i182 * i182));
                                        if (hVar3.f19068o == 1) {
                                            hVar3.f19075w.e(fSqrt);
                                        }
                                        if (!hVar3.f19064j && !hVar3.f19065k) {
                                            if (!atomicBoolean22.get() && fSqrt > 15.0f) {
                                                atomicBoolean22.set(true);
                                                hVar3.f19055a.G.removeCallbacks(hVar2);
                                            }
                                            if (fSqrt < 50.0f) {
                                                atomicInteger32.set(0);
                                            } else if (Math.abs(i182) > Math.abs(i192)) {
                                                if (i182 > 0) {
                                                    atomicInteger32.set(4);
                                                } else {
                                                    atomicInteger32.set(3);
                                                }
                                            } else if (i192 > 0) {
                                                atomicInteger32.set(2);
                                            } else {
                                                atomicInteger32.set(1);
                                            }
                                            if (!hVar3.f19069p) {
                                                if (atomicInteger32.get() > 0) {
                                                    hVar3.f19065k = true;
                                                    if (atomicInteger32.get() == 1) {
                                                        oVarP2 = hVar3.f19056b.q("底部").p("上滑" + atomicInteger42.get());
                                                    } else {
                                                        if (atomicInteger32.get() != 2) {
                                                            if (atomicInteger32.get() == 3) {
                                                                oVarP2 = hVar3.f19056b.q("底部").p("左滑" + atomicInteger42.get());
                                                            } else if (atomicInteger32.get() == 4) {
                                                                oVarP2 = hVar3.f19056b.q("底部").p("右滑" + atomicInteger42.get());
                                                            }
                                                        }
                                                        oVarP2 = null;
                                                    }
                                                    if (oVarP2 != null && !oVarP2.f19478a.isEmpty()) {
                                                        hVar3.f19055a.b(oVarP2);
                                                    }
                                                }
                                            }
                                        }
                                    }
                                    return false;
                                }
                                hVar3.f19055a.G.removeCallbacks(hVar2);
                                if (hVar3.f19068o == 1) {
                                    hVar3.f19075w.b();
                                }
                                if (!hVar3.f19064j && !hVar3.f19065k) {
                                    if (hVar3.f19069p && atomicInteger32.get() > 0) {
                                        if (atomicInteger32.get() == 1) {
                                            oVarP = hVar3.f19056b.q("底部").p("上滑" + atomicInteger42.get());
                                        } else {
                                            if (atomicInteger32.get() != 2) {
                                                if (atomicInteger32.get() == 3) {
                                                    oVarP = hVar3.f19056b.q("底部").p("左滑" + atomicInteger42.get());
                                                } else if (atomicInteger32.get() == 4) {
                                                    oVarP = hVar3.f19056b.q("底部").p("右滑" + atomicInteger42.get());
                                                }
                                            }
                                            oVarP = null;
                                        }
                                        if (oVarP != null && !oVarP.f19478a.isEmpty()) {
                                            hVar3.f19055a.b(oVarP);
                                        }
                                    } else if (System.currentTimeMillis() - hVar3.f19067n <= 500) {
                                        int iE42 = hVar3.f19056b.o("bottomSplit").e();
                                        hVar3.f19076x = iE42;
                                        if (iE42 == 2) {
                                            hVar3.f19076x = ((Point) hVar3.f19055a.f3937i.f18898e).x / 2 > hVar3.l ? 1 : 2;
                                        } else if (iE42 == 3) {
                                            int i20 = ((Point) hVar3.f19055a.f3937i.f18898e).x / 3;
                                            int i21 = hVar3.l;
                                            hVar3.f19076x = i21 < i20 ? 1 : i21 > i20 * 2 ? 2 : 3;
                                        }
                                        o oVarP4 = hVar3.f19056b.q("底部").p("单击" + hVar3.f19076x);
                                        hVar3.f19077y = oVarP4;
                                        if (!oVarP4.f19478a.isEmpty()) {
                                            hVar3.f19055a.b(hVar3.f19077y);
                                        } else if (Build.VERSION.SDK_INT >= 24) {
                                            WindowManager.LayoutParams layoutParams32 = hVar3.f19063i;
                                            layoutParams32.height = 0;
                                            hVar3.f19057c.updateViewLayout(hVar3.f19062h, layoutParams32);
                                            hVar3.f19055a.N0.execute(new f(hVar3, 5));
                                            hVar3.f19055a.G.postDelayed(new f(hVar3, 6), 300L);
                                        }
                                    }
                                }
                            }
                            return true;
                        }

                        /* JADX WARN: Code restructure failed: missing block: B:12:0x0037, code lost:
                        
                            if (r7 != 3) goto L58;
                         */
                        /* JADX WARN: Code restructure failed: missing block: B:153:0x0339, code lost:
                        
                            if (r7 != 3) goto L202;
                         */
                        @Override // android.view.View.OnTouchListener
                        /*
                            Code decompiled incorrectly, please refer to instructions dump.
                        */
                        public final boolean onTouch(View view22, MotionEvent motionEvent) {
                            int action;
                            androidx.activity.h hVar2;
                            AtomicBoolean atomicBoolean22;
                            AtomicInteger atomicInteger32;
                            AtomicInteger atomicInteger42;
                            o oVarP;
                            o oVarP2;
                            int action2;
                            androidx.activity.h hVar3;
                            AtomicBoolean atomicBoolean32;
                            AtomicInteger atomicInteger52;
                            AtomicInteger atomicInteger62;
                            o oVarP3;
                            o oVarP4;
                            switch (i19) {
                                case 0:
                                    h hVar4 = hVar;
                                    hVar4.getClass();
                                    int rawX = (int) motionEvent.getRawX();
                                    int rawY = (int) motionEvent.getRawY();
                                    try {
                                        action = motionEvent.getAction();
                                        hVar2 = hVar4.z;
                                        atomicBoolean22 = atomicBoolean3;
                                        atomicInteger32 = atomicInteger5;
                                        atomicInteger42 = atomicInteger6;
                                    } catch (Exception unused) {
                                    }
                                    if (action == 0) {
                                        hVar4.f19064j = false;
                                        hVar4.f19065k = false;
                                        atomicBoolean22.set(false);
                                        atomicInteger32.set(0);
                                        hVar4.l = rawX;
                                        hVar4.f19066m = rawY;
                                        hVar4.f19067n = System.currentTimeMillis();
                                        if (hVar4.f19068o == 1) {
                                            try {
                                                hVar4.f19075w.c(0);
                                            } catch (Exception unused2) {
                                            }
                                        }
                                        int i132 = iE7;
                                        if (i132 == 2) {
                                            atomicInteger42.set((hVar4.f19059e.height / 2) + hVar4.f19070q > hVar4.f19066m ? 1 : 2);
                                        } else if (i132 == 3) {
                                            int i142 = hVar4.f19059e.height / 3;
                                            int i152 = hVar4.f19066m;
                                            int i162 = hVar4.f19070q;
                                            atomicInteger42.set(i152 < i142 + i162 ? 1 : i152 > (i142 * 2) + i162 ? 2 : 3);
                                        }
                                        o oVarP5 = hVar4.f19056b.q("左侧").p("长按" + atomicInteger42.get());
                                        hVar4.f19077y = oVarP5;
                                        if (!oVarP5.f19478a.isEmpty()) {
                                            hVar4.f19055a.G.postDelayed(hVar2, 600L);
                                        }
                                    } else {
                                        if (action != 1) {
                                            if (action != 2) {
                                                break;
                                            } else {
                                                int i172 = rawX - hVar4.l;
                                                int i182 = rawY - hVar4.f19066m;
                                                float fSqrt = (float) Math.sqrt((i182 * i182) + (i172 * i172));
                                                if (hVar4.f19068o == 1) {
                                                    hVar4.f19075w.e(fSqrt);
                                                }
                                                if (!hVar4.f19064j && !hVar4.f19065k) {
                                                    if (!atomicBoolean22.get() && fSqrt > 15.0f) {
                                                        atomicBoolean22.set(true);
                                                        hVar4.f19055a.G.removeCallbacks(hVar2);
                                                    }
                                                    if (fSqrt < 50.0f) {
                                                        atomicInteger32.set(0);
                                                    } else if (Math.abs(i172) > Math.abs(i182)) {
                                                        if (i172 > 0) {
                                                            atomicInteger32.set(4);
                                                        } else {
                                                            atomicInteger32.set(3);
                                                        }
                                                    } else if (i182 > 0) {
                                                        atomicInteger32.set(2);
                                                    } else {
                                                        atomicInteger32.set(1);
                                                    }
                                                    if (!hVar4.f19069p) {
                                                        if (atomicInteger32.get() > 0) {
                                                            hVar4.f19065k = true;
                                                            if (atomicInteger32.get() == 1) {
                                                                oVarP2 = hVar4.f19056b.q("左侧").p("上滑" + atomicInteger42.get());
                                                            } else if (atomicInteger32.get() == 2) {
                                                                oVarP2 = hVar4.f19056b.q("左侧").p("下滑" + atomicInteger42.get());
                                                            } else if (atomicInteger32.get() != 3 && atomicInteger32.get() == 4) {
                                                                oVarP2 = hVar4.f19056b.q("左侧").p("右滑" + atomicInteger42.get());
                                                            } else {
                                                                oVarP2 = null;
                                                            }
                                                            if (oVarP2 != null && !oVarP2.f19478a.isEmpty()) {
                                                                hVar4.f19055a.b(oVarP2);
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                            return false;
                                        }
                                        hVar4.f19055a.G.removeCallbacks(hVar2);
                                        if (hVar4.f19068o == 1) {
                                            hVar4.f19075w.b();
                                        }
                                        if (!hVar4.f19064j && !hVar4.f19065k) {
                                            if (hVar4.f19069p && atomicInteger32.get() > 0) {
                                                if (atomicInteger32.get() == 1) {
                                                    oVarP = hVar4.f19056b.q("左侧").p("上滑" + atomicInteger42.get());
                                                } else if (atomicInteger32.get() == 2) {
                                                    oVarP = hVar4.f19056b.q("左侧").p("下滑" + atomicInteger42.get());
                                                } else if (atomicInteger32.get() != 3 && atomicInteger32.get() == 4) {
                                                    oVarP = hVar4.f19056b.q("左侧").p("右滑" + atomicInteger42.get());
                                                } else {
                                                    oVarP = null;
                                                }
                                                if (oVarP != null && !oVarP.f19478a.isEmpty()) {
                                                    hVar4.f19055a.b(oVarP);
                                                }
                                            } else if (System.currentTimeMillis() - hVar4.f19067n <= 500) {
                                                o oVarP6 = hVar4.f19056b.q("左侧").p("单击" + atomicInteger42.get());
                                                hVar4.f19077y = oVarP6;
                                                if (!oVarP6.f19478a.isEmpty()) {
                                                    hVar4.f19055a.b(hVar4.f19077y);
                                                } else if (Build.VERSION.SDK_INT >= 24) {
                                                    WindowManager.LayoutParams layoutParams32 = hVar4.f19059e;
                                                    layoutParams32.width = 0;
                                                    hVar4.f19057c.updateViewLayout(hVar4.f19058d, layoutParams32);
                                                    hVar4.f19055a.N0.execute(new f(hVar4, 1));
                                                    hVar4.f19055a.G.postDelayed(new f(hVar4, 2), 300L);
                                                }
                                            }
                                        }
                                    }
                                    return true;
                                case 1:
                                    return a(view22, motionEvent);
                                default:
                                    h hVar5 = hVar;
                                    hVar5.getClass();
                                    int rawX2 = (int) motionEvent.getRawX();
                                    int rawY2 = (int) motionEvent.getRawY();
                                    try {
                                        action2 = motionEvent.getAction();
                                        hVar3 = hVar5.z;
                                        atomicBoolean32 = atomicBoolean3;
                                        atomicInteger52 = atomicInteger5;
                                        atomicInteger62 = atomicInteger6;
                                    } catch (Exception unused3) {
                                    }
                                    if (action2 == 0) {
                                        hVar5.f19064j = false;
                                        hVar5.f19065k = false;
                                        atomicBoolean32.set(false);
                                        atomicInteger52.set(0);
                                        hVar5.l = rawX2;
                                        hVar5.f19066m = rawY2;
                                        hVar5.f19067n = System.currentTimeMillis();
                                        if (hVar5.f19068o == 1) {
                                            hVar5.f19075w.c(1);
                                        }
                                        int i192 = iE7;
                                        if (i192 == 2) {
                                            atomicInteger62.set((hVar5.f19061g.height / 2) + hVar5.f19071s > hVar5.f19066m ? 1 : 2);
                                        } else if (i192 == 3) {
                                            int i20 = hVar5.f19061g.height / 3;
                                            int i21 = hVar5.f19066m;
                                            int i22 = hVar5.f19071s;
                                            atomicInteger62.set(i21 < i20 + i22 ? 1 : i21 > (i20 * 2) + i22 ? 2 : 3);
                                        }
                                        o oVarP7 = hVar5.f19056b.q("右侧").p("长按" + atomicInteger62.get());
                                        hVar5.f19077y = oVarP7;
                                        if (!oVarP7.f19478a.isEmpty()) {
                                            hVar5.f19055a.G.postDelayed(hVar3, 600L);
                                        }
                                    } else {
                                        if (action2 != 1) {
                                            if (action2 != 2) {
                                                break;
                                            } else {
                                                int i23 = rawX2 - hVar5.l;
                                                int i24 = rawY2 - hVar5.f19066m;
                                                float fSqrt2 = (float) Math.sqrt((i24 * i24) + (i23 * i23));
                                                if (hVar5.f19068o == 1) {
                                                    hVar5.f19075w.e(fSqrt2);
                                                }
                                                if (!hVar5.f19064j && !hVar5.f19065k) {
                                                    if (!atomicBoolean32.get() && fSqrt2 > 15.0f) {
                                                        atomicBoolean32.set(true);
                                                        hVar5.f19055a.G.removeCallbacks(hVar3);
                                                    }
                                                    if (fSqrt2 < 50.0f) {
                                                        atomicInteger52.set(0);
                                                    } else if (Math.abs(i23) > Math.abs(i24)) {
                                                        if (i23 > 0) {
                                                            atomicInteger52.set(4);
                                                        } else {
                                                            atomicInteger52.set(3);
                                                        }
                                                    } else if (i24 > 0) {
                                                        atomicInteger52.set(2);
                                                    } else {
                                                        atomicInteger52.set(1);
                                                    }
                                                    if (!hVar5.f19069p) {
                                                        if (atomicInteger52.get() > 0) {
                                                            hVar5.f19065k = true;
                                                            if (atomicInteger52.get() == 1) {
                                                                oVarP4 = hVar5.f19056b.q("右侧").p("上滑" + atomicInteger62.get());
                                                            } else if (atomicInteger52.get() == 2) {
                                                                oVarP4 = hVar5.f19056b.q("右侧").p("下滑" + atomicInteger62.get());
                                                            } else if (atomicInteger52.get() == 3) {
                                                                oVarP4 = hVar5.f19056b.q("右侧").p("左滑" + atomicInteger62.get());
                                                            } else {
                                                                atomicInteger52.get();
                                                                oVarP4 = null;
                                                            }
                                                            if (oVarP4 != null && !oVarP4.f19478a.isEmpty()) {
                                                                hVar5.f19055a.b(oVarP4);
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                            return false;
                                        }
                                        hVar5.f19055a.G.removeCallbacks(hVar3);
                                        if (hVar5.f19068o == 1) {
                                            hVar5.f19075w.b();
                                        }
                                        if (!hVar5.f19064j && !hVar5.f19065k) {
                                            if (hVar5.f19069p && atomicInteger52.get() > 0) {
                                                if (atomicInteger52.get() == 1) {
                                                    oVarP3 = hVar5.f19056b.q("右侧").p("上滑" + atomicInteger62.get());
                                                } else if (atomicInteger52.get() == 2) {
                                                    oVarP3 = hVar5.f19056b.q("右侧").p("下滑" + atomicInteger62.get());
                                                } else if (atomicInteger52.get() == 3) {
                                                    oVarP3 = hVar5.f19056b.q("右侧").p("左滑" + atomicInteger62.get());
                                                } else {
                                                    atomicInteger52.get();
                                                    oVarP3 = null;
                                                }
                                                if (oVarP3 != null && !oVarP3.f19478a.isEmpty()) {
                                                    hVar5.f19055a.b(oVarP3);
                                                }
                                            } else if (System.currentTimeMillis() - hVar5.f19067n <= 500) {
                                                int iE42 = hVar5.f19056b.o("rightSplit").e();
                                                hVar5.f19076x = iE42;
                                                if (iE42 == 2) {
                                                    hVar5.f19076x = hVar5.f19066m < ((Point) hVar5.f19055a.f3937i.f18898e).y / 2 ? 1 : 2;
                                                } else if (iE42 == 3) {
                                                    int i25 = ((Point) hVar5.f19055a.f3937i.f18898e).y / 3;
                                                    int i26 = hVar5.f19066m;
                                                    hVar5.f19076x = i26 < i25 ? 1 : i26 > i25 * 2 ? 2 : 3;
                                                }
                                                o oVarP8 = hVar5.f19056b.q("右侧").p("单击" + hVar5.f19076x);
                                                hVar5.f19077y = oVarP8;
                                                if (!oVarP8.f19478a.isEmpty()) {
                                                    hVar5.f19055a.b(hVar5.f19077y);
                                                } else if (Build.VERSION.SDK_INT >= 24) {
                                                    WindowManager.LayoutParams layoutParams42 = hVar5.f19061g;
                                                    layoutParams42.width = 0;
                                                    hVar5.f19057c.updateViewLayout(hVar5.f19060f, layoutParams42);
                                                    hVar5.f19055a.N0.execute(new f(hVar5, 3));
                                                    hVar5.f19055a.G.postDelayed(new f(hVar5, 4), 300L);
                                                }
                                            }
                                        }
                                    }
                                    return true;
                            }
                        }
                    });
                }
                View view4 = hVar.f19058d;
                if (view4 != null) {
                    hVar.f19057c.addView(view4, hVar.f19059e);
                }
                View view5 = hVar.f19060f;
                if (view5 != null) {
                    hVar.f19057c.addView(view5, hVar.f19061g);
                }
                View view6 = hVar.f19062h;
                if (view6 != null) {
                    hVar.f19057c.addView(view6, hVar.f19063i);
                    break;
                }
                break;
            case 1:
                wa.b.a(this.f19048b.f19055a, r1.l, r1.f19066m, 50L);
                break;
            case 2:
                h hVar2 = this.f19048b;
                hVar2.f19059e.width = hVar2.f19056b.o("leftSize").e();
                hVar2.f19057c.updateViewLayout(hVar2.f19058d, hVar2.f19059e);
                break;
            case 3:
                wa.b.a(this.f19048b.f19055a, r1.l, r1.f19066m, 50L);
                break;
            case 4:
                h hVar3 = this.f19048b;
                hVar3.f19061g.width = hVar3.f19056b.o("rightSize").e();
                hVar3.f19057c.updateViewLayout(hVar3.f19060f, hVar3.f19061g);
                break;
            case 5:
                wa.b.a(this.f19048b.f19055a, r1.l, r1.f19066m, 50L);
                break;
            default:
                h hVar4 = this.f19048b;
                hVar4.f19063i.height = hVar4.f19056b.o("rightSize").e();
                hVar4.f19057c.updateViewLayout(hVar4.f19062h, hVar4.f19063i);
                break;
        }
    }
}
