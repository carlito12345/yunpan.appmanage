.class public final Lfa/l0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lfa/o0;


# direct methods
.method public constructor <init>(Lfa/o0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfa/l0;->a:Lfa/o0;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 1

    .line 1
    const v0, 0x750f7

    .line 2
    .line 3
    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    if-nez p2, :cond_1

    .line 8
    .line 9
    iget-object p1, p0, Lfa/l0;->a:Lfa/o0;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lfa/o0;->e()V

    .line 15
    .line 16
    .line 17
    iget-object p2, p1, Lfa/o0;->f:Lcom/bumptech/glide/manager/s;

    .line 18
    .line 19
    iget-object p1, p1, Lfa/o0;->g:Lfa/m0;

    .line 20
    .line 21
    invoke-static {p2, p1}, Lhi/b;->e(Lcom/bumptech/glide/manager/s;Lfa/m0;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    :goto_0
    return-void
.end method
