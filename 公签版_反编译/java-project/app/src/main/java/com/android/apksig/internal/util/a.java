package com.android.apksig.internal.util;

import f2.c0;
import f2.t;
import f2.y;
import java.nio.ByteBuffer;
import java.util.concurrent.Phaser;
import y1.s0;
import z1.e;

/* loaded from: classes.dex */
public final /* synthetic */ class a implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3269a = 0;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f3270b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f3271c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f3272d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f3273e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f3274f;

    public /* synthetic */ a(VerityTreeBuilder verityTreeBuilder, ByteBuffer byteBuffer, int i10, byte[][] bArr, Phaser phaser) {
        this.f3271c = verityTreeBuilder;
        this.f3272d = byteBuffer;
        this.f3270b = i10;
        this.f3273e = bArr;
        this.f3274f = phaser;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f3269a) {
            case 0:
                byte[][] bArr = (byte[][]) this.f3273e;
                Phaser phaser = (Phaser) this.f3274f;
                ((VerityTreeBuilder) this.f3271c).lambda$digestDataByChunks$0((ByteBuffer) this.f3272d, this.f3270b, bArr, phaser);
                break;
            default:
                e eVar = (e) ((s0) this.f3271c).f18807b.f10961i;
                android.util.Pair pair = (android.util.Pair) this.f3272d;
                eVar.G(((Integer) pair.first).intValue(), (c0) pair.second, (t) this.f3273e, (y) this.f3274f, this.f3270b);
                break;
        }
    }

    public /* synthetic */ a(s0 s0Var, android.util.Pair pair, t tVar, y yVar, int i10) {
        this.f3271c = s0Var;
        this.f3272d = pair;
        this.f3273e = tVar;
        this.f3274f = yVar;
        this.f3270b = i10;
    }
}
