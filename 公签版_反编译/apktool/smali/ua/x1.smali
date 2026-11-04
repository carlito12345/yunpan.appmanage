.class public final synthetic Lua/x1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lha/ea;
.implements Lea/e;


# instance fields
.field public final synthetic a:Lcom/yunpan/appmanage/ui/ActivityFloatButton;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityFloatButton;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lua/x1;->a:Lcom/yunpan/appmanage/ui/ActivityFloatButton;

    iput p2, p0, Lua/x1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(I)V
    .locals 5

    .line 1
    sget v0, Lcom/yunpan/appmanage/ui/ActivityFloatButton;->N:I

    .line 2
    .line 3
    iget-object v0, p0, Lua/x1;->a:Lcom/yunpan/appmanage/ui/ActivityFloatButton;

    .line 4
    .line 5
    iget v1, p0, Lua/x1;->b:I

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/yunpan/appmanage/ui/ActivityFloatButton;->x(I)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    if-ne p1, v2, :cond_1

    .line 18
    .line 19
    new-instance p1, Lha/i0;

    .line 20
    .line 21
    iget-object v2, v0, Lda/g;->A:Lda/g;

    .line 22
    .line 23
    iget-object v3, v0, Lcom/yunpan/appmanage/ui/ActivityFloatButton;->K:Lx9/t2;

    .line 24
    .line 25
    invoke-virtual {v3, v1}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Lz7/s;

    .line 30
    .line 31
    new-instance v4, Lua/x1;

    .line 32
    .line 33
    invoke-direct {v4, v0, v1}, Lua/x1;-><init>(Lcom/yunpan/appmanage/ui/ActivityFloatButton;I)V

    .line 34
    .line 35
    .line 36
    invoke-direct {p1, v0, v2, v3, v4}, Lha/i0;-><init>(Landroid/app/Activity;Landroid/content/Context;Lz7/s;Lea/e;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 40
    .line 41
    .line 42
    :cond_1
    :goto_0
    return-void
.end method

.method public k(Lz7/s;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lua/x1;->a:Lcom/yunpan/appmanage/ui/ActivityFloatButton;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityFloatButton;->K:Lx9/t2;

    .line 4
    .line 5
    iget v2, p0, Lua/x1;->b:I

    .line 6
    .line 7
    invoke-virtual {v1, v2, p1}, Lc6/g;->D(ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityFloatButton;->C:Lz7/s;

    .line 11
    .line 12
    iget v3, v0, Lcom/yunpan/appmanage/ui/ActivityFloatButton;->D:I

    .line 13
    .line 14
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v1, v3}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1, v2, p1}, Lz7/o;->o(ILz7/p;)V

    .line 23
    .line 24
    .line 25
    iget-object p1, v0, Lda/g;->A:Lda/g;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityFloatButton;->C:Lz7/s;

    .line 28
    .line 29
    invoke-static {p1, v0}, Lq4/a;->O(Landroid/content/Context;Lz7/s;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method
