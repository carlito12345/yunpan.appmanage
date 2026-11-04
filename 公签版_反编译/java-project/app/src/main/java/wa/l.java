package wa;

import android.content.Intent;
import android.os.Message;
import com.yunpan.appmanage.bean.TimePeriodBean;
import com.yunpan.appmanage.service.AccService;
import j$.util.function.Consumer$CC;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.function.Consumer;

/* loaded from: classes.dex */
public final /* synthetic */ class l implements Consumer {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f17680a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ s f17681b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f17682c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f17683d;

    public /* synthetic */ l(s sVar, Object obj, Object obj2, int i10) {
        this.f17680a = i10;
        this.f17681b = sVar;
        this.f17682c = obj;
        this.f17683d = obj2;
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final void q(Object obj) {
        switch (this.f17680a) {
            case 0:
                String str = (String) this.f17682c;
                Intent intent = (Intent) this.f17683d;
                z7.p pVar = (z7.p) obj;
                s sVar = this.f17681b;
                sVar.getClass();
                try {
                    if (pVar.g().o("isOpen").b()) {
                        z7.s sVarQ = pVar.g().q("event");
                        if (sVarQ.o("type").e() == 401 && sVarQ.o("action").i().equals(str)) {
                            if (sVarQ.f19480a.containsKey("extras")) {
                                z7.o oVarF = sVarQ.o("extras").f();
                                for (int i10 = 0; i10 < oVarF.f19478a.size(); i10++) {
                                    z7.s sVarG = oVarF.l(i10).g();
                                    if (!intent.hasExtra(sVarG.o("name").i())) {
                                        break;
                                    } else {
                                        if (sVarG.o("extraType").e() != 1) {
                                            if (sVarG.o("extraType").e() != 2) {
                                                if (sVarG.o("extraType").e() != 3) {
                                                    if (sVarG.o("extraType").e() != 3) {
                                                        if (sVarG.o("extraType").e() != 5) {
                                                            if (sVarG.o("extraType").e() == 4 && intent.getFloatExtra(sVarG.o("name").i(), -11.0f) != sVarG.o("value").d()) {
                                                                break;
                                                            }
                                                        } else if (intent.getDoubleExtra(sVarG.o("name").i(), -11.0d) != sVarG.o("value").c()) {
                                                            break;
                                                        }
                                                    } else if (intent.getBooleanExtra(sVarG.o("name").i(), false) != sVarG.o("value").b()) {
                                                        break;
                                                    }
                                                } else if (intent.getLongExtra(sVarG.o("name").i(), -11L) != sVarG.o("value").h()) {
                                                    break;
                                                }
                                            } else if (intent.getIntExtra(sVarG.o("name").i(), -11) != sVarG.o("value").e()) {
                                                break;
                                            }
                                        } else if (!intent.getStringExtra(sVarG.o("name").i()).equals(sVarG.o("value").i())) {
                                            break;
                                        }
                                    }
                                }
                            }
                            sVar.f17709e.b(pVar.g().p("click"));
                            break;
                        }
                    } else {
                        break;
                    }
                } catch (Exception e7) {
                    e7.printStackTrace();
                    return;
                }
                break;
            default:
                AccService accService = (AccService) this.f17682c;
                AtomicInteger atomicInteger = (AtomicInteger) this.f17683d;
                z7.p pVar2 = (z7.p) obj;
                s sVar2 = this.f17681b;
                sVar2.getClass();
                try {
                    if (pVar2.g().o("isOpen").b()) {
                        z7.s sVarQ2 = pVar2.g().q("event");
                        if (sVarQ2.o("type").e() == 100) {
                            sVar2.f17713i.put(sVarQ2.o("str1").i(), pVar2.g().p("click"));
                        } else if (sVarQ2.o("type").e() == 101) {
                            sVar2.f17714j.put(sVarQ2.o("str1").i(), pVar2.g().p("click"));
                        } else if (sVarQ2.o("type").e() == 401) {
                            sVar2.l.add(sVarQ2.o("action").i());
                        } else if (sVarQ2.o("type").e() == 501) {
                            sVar2.r.add(new TimePeriodBean(sVarQ2.o("startH").e(), sVarQ2.o("startM").e(), sVarQ2.o("endH").e(), sVarQ2.o("endM").e(), pVar2.g().p("click")));
                        } else if (sVarQ2.o("type").e() == 506) {
                            Message messageObtain = Message.obtain();
                            messageObtain.what = 506;
                            messageObtain.arg1 = sVarQ2.o("time").e();
                            messageObtain.obj = pVar2.g().p("click");
                            accService.l.sendMessageDelayed(messageObtain, (atomicInteger.addAndGet(1) * 5000) + 10000);
                        } else if (sVarQ2.o("type").e() == 502) {
                            if (sVarQ2.o("isDesc").b()) {
                                sVar2.f17722t.put(Integer.valueOf(sVarQ2.o("value").e()), pVar2.g().p("click"));
                            } else {
                                sVar2.f17721s.put(Integer.valueOf(sVarQ2.o("value").e()), pVar2.g().p("click"));
                            }
                        } else if (sVarQ2.o("type").e() == 503) {
                            if (sVarQ2.o("isDesc").b()) {
                                sVar2.f17724v.put(Integer.valueOf(sVarQ2.o("value").e()), pVar2.g().p("click"));
                            } else {
                                sVar2.f17723u.put(Integer.valueOf(sVarQ2.o("value").e()), pVar2.g().p("click"));
                            }
                        }
                    }
                    break;
                } catch (Exception e10) {
                    e10.printStackTrace();
                    return;
                }
        }
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        int i10 = this.f17680a;
        return Consumer$CC.$default$andThen(this, consumer);
    }
}
