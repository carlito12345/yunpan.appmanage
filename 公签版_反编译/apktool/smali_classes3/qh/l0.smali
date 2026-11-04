.class public final Lqh/l0;
.super Lqh/r0;
.source "SourceFile"


# instance fields
.field public final d:Lkf/d;

.field public e:Ljava/lang/String;

.field public final f:Lkf/d;

.field public final g:Lkf/d;

.field public h:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lqh/r0;-><init>(I)V

    .line 3
    .line 4
    .line 5
    new-instance v0, Lkf/d;

    .line 6
    .line 7
    const/16 v1, 0xc

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {v0, v1, v2}, Lkf/d;-><init>(IZ)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lqh/l0;->d:Lkf/d;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lqh/l0;->e:Ljava/lang/String;

    .line 17
    .line 18
    new-instance v0, Lkf/d;

    .line 19
    .line 20
    invoke-direct {v0, v1, v2}, Lkf/d;-><init>(IZ)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lqh/l0;->f:Lkf/d;

    .line 24
    .line 25
    new-instance v0, Lkf/d;

    .line 26
    .line 27
    invoke-direct {v0, v1, v2}, Lkf/d;-><init>(IZ)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lqh/l0;->g:Lkf/d;

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lqh/l0;->h:Z

    .line 34
    .line 35
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
    iget-object v0, p0, Lqh/l0;->d:Lkf/d;

    .line 7
    .line 8
    invoke-virtual {v0}, Lkf/d;->reset()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lqh/l0;->e:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v0, p0, Lqh/l0;->f:Lkf/d;

    .line 15
    .line 16
    invoke-virtual {v0}, Lkf/d;->reset()V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lqh/l0;->g:Lkf/d;

    .line 20
    .line 21
    invoke-virtual {v0}, Lkf/d;->reset()V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lqh/l0;->h:Z

    .line 26
    .line 27
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "<!doctype "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lqh/l0;->d:Lkf/d;

    .line 9
    .line 10
    invoke-virtual {v1}, Lkf/d;->R()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, ">"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    return-object v0
.end method
