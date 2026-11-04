package com.yunpan.appmanage.db;

import com.yunpan.appmanage.ui.ActivityClean;
import j$.util.function.Consumer$CC;
import java.util.LinkedList;
import java.util.function.Consumer;
import jg.v;

/* loaded from: classes.dex */
public final /* synthetic */ class b implements Consumer {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3921a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f3922b;

    public /* synthetic */ b(int i10, Object obj) {
        this.f3921a = i10;
        this.f3922b = obj;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        Object obj2 = this.f3922b;
        switch (this.f3921a) {
            case 0:
                MyDb.lambda$addIfFile$0((String) obj2, (String) obj);
                break;
            case 1:
                ((LinkedList) obj2).addLast((v) obj);
                break;
            default:
                int i10 = ActivityClean.M;
                ((ActivityClean) obj2).x((String) obj);
                break;
        }
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        int i10 = this.f3921a;
        return Consumer$CC.$default$andThen(this, consumer);
    }
}
