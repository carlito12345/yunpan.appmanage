.class public Lqh/j0;
.super Lqh/r0;
.source "SourceFile"


# instance fields
.field public final d:Lkf/d;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x5

    .line 1
    invoke-direct {p0, v0}, Lqh/r0;-><init>(I)V

    .line 2
    new-instance v0, Lkf/d;

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkf/d;-><init>(IZ)V

    iput-object v0, p0, Lqh/j0;->d:Lkf/d;

    return-void
.end method

.method public constructor <init>(Lqh/j0;)V
    .locals 3

    const/4 v0, 0x5

    .line 3
    invoke-direct {p0, v0}, Lqh/r0;-><init>(I)V

    .line 4
    new-instance v0, Lkf/d;

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkf/d;-><init>(IZ)V

    iput-object v0, p0, Lqh/j0;->d:Lkf/d;

    .line 5
    iget v1, p1, Lqh/r0;->b:I

    iput v1, p0, Lqh/r0;->b:I

    .line 6
    iget v1, p1, Lqh/r0;->c:I

    iput v1, p0, Lqh/r0;->c:I

    .line 7
    iget-object p1, p1, Lqh/j0;->d:Lkf/d;

    invoke-virtual {p1}, Lkf/d;->R()Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-virtual {v0}, Lkf/d;->reset()V

    .line 9
    iput-object p1, v0, Lkf/d;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final g()V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lqh/r0;->b:I

    .line 3
    .line 4
    iput v0, p0, Lqh/r0;->c:I

    .line 5
    .line 6
    iget-object v0, p0, Lqh/j0;->d:Lkf/d;

    .line 7
    .line 8
    invoke-virtual {v0}, Lkf/d;->reset()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lqh/j0;->d:Lkf/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Lkf/d;->R()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
