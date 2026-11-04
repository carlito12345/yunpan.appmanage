.class public final synthetic Lha/s0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lha/ia;
.implements Lea/f;
.implements Lc6/e;


# instance fields
.field public final synthetic a:Lha/x0;


# direct methods
.method public synthetic constructor <init>(Lha/x0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lha/s0;->a:Lha/x0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lx9/w3;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lha/s0;->a:Lha/x0;

    .line 2
    .line 3
    iget-object v0, v0, Lha/x0;->q:Lx9/d0;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public b(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lha/s0;->a:Lha/x0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    const/4 p1, 0x3

    .line 9
    invoke-static {p1}, Ld/b;->k0(I)Lmc/g;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    new-instance v1, Lha/p0;

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v1, v2, v0}, Lha/p0;-><init>(ILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v1}, Lec/b;->b(Lec/e;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v1, 0x1

    .line 24
    if-ne p1, v1, :cond_1

    .line 25
    .line 26
    new-instance p1, Lha/vb;

    .line 27
    .line 28
    iget-object v1, v0, Lha/a4;->a:Landroid/app/Activity;

    .line 29
    .line 30
    iget-object v2, v0, Lha/a4;->b:Landroid/content/Context;

    .line 31
    .line 32
    invoke-direct {p1, v1, v2}, Lha/vb;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    .line 33
    .line 34
    .line 35
    new-instance v1, Lha/s0;

    .line 36
    .line 37
    invoke-direct {v1, v0}, Lha/s0;-><init>(Lha/x0;)V

    .line 38
    .line 39
    .line 40
    const-string v0, "\u8bf7\u9009\u62e9\u6587\u4ef6"

    .line 41
    .line 42
    invoke-virtual {p1, v0, v1}, Lha/vb;->c(Ljava/lang/String;Lea/f;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    :goto_0
    return-void
.end method

.method public x(Lc6/g;Landroid/view/View;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lha/s0;->a:Lha/x0;

    .line 2
    .line 3
    iget-object p2, p1, Lha/x0;->q:Lx9/d0;

    .line 4
    .line 5
    invoke-virtual {p2}, Lc6/g;->b()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    const/4 v0, 0x1

    .line 10
    if-ne p2, v0, :cond_0

    .line 11
    .line 12
    iget-object p2, p1, Lha/x0;->h:Landroid/widget/TextView;

    .line 13
    .line 14
    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object p1, p1, Lha/x0;->q:Lx9/d0;

    .line 18
    .line 19
    invoke-virtual {p1, p3}, Lc6/g;->C(I)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
