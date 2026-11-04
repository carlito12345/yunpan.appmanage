.class public final Lua/b7;
.super Lha/l2;
.source "SourceFile"


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Lcom/yunpan/appmanage/ui/ActivitySystemAnimator;


# direct methods
.method public constructor <init>(Lcom/yunpan/appmanage/ui/ActivitySystemAnimator;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lua/b7;->d:Lcom/yunpan/appmanage/ui/ActivitySystemAnimator;

    .line 2
    .line 3
    iput p2, p0, Lua/b7;->b:I

    .line 4
    .line 5
    iput p3, p0, Lua/b7;->c:I

    .line 6
    .line 7
    const/16 p1, 0x1c

    .line 8
    .line 9
    invoke-direct {p0, p1}, Lha/l2;-><init>(I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final B(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    const-string p1, "\u8bbe\u7f6e\u5931\u8d25"

    .line 2
    .line 3
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->y(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onComplete()V
    .locals 4

    .line 1
    iget v0, p0, Lua/b7;->c:I

    .line 2
    .line 3
    iget-object v1, p0, Lua/b7;->d:Lcom/yunpan/appmanage/ui/ActivitySystemAnimator;

    .line 4
    .line 5
    iget v2, p0, Lua/b7;->b:I

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    iget-object v1, v1, Lcom/yunpan/appmanage/ui/ActivitySystemAnimator;->E:Lx9/c0;

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Lx9/c0;->G(I)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v3, 0x1

    .line 16
    if-ne v2, v3, :cond_1

    .line 17
    .line 18
    iget-object v1, v1, Lcom/yunpan/appmanage/ui/ActivitySystemAnimator;->G:Lx9/c0;

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Lx9/c0;->G(I)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 v3, 0x2

    .line 25
    if-ne v2, v3, :cond_2

    .line 26
    .line 27
    iget-object v1, v1, Lcom/yunpan/appmanage/ui/ActivitySystemAnimator;->I:Lx9/c0;

    .line 28
    .line 29
    invoke-virtual {v1, v0}, Lx9/c0;->G(I)V

    .line 30
    .line 31
    .line 32
    :cond_2
    :goto_0
    return-void
.end method
