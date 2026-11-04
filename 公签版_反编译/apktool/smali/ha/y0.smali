.class public final synthetic Lha/y0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lea/b;
.implements Lec/d;


# instance fields
.field public final synthetic a:Lha/g1;


# direct methods
.method public synthetic constructor <init>(Lha/g1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lha/y0;->a:Lha/g1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public f(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lha/y0;->a:Lha/g1;

    invoke-static {v0, p1}, Lha/g1;->a(Lha/g1;Z)V

    return-void
.end method

.method public g(Lmc/b;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lha/y0;->a:Lha/g1;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v1, v0, Lha/a4;->b:Landroid/content/Context;

    .line 7
    .line 8
    iget-object v0, v0, Lha/g1;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    .line 10
    invoke-static {v1, v0}, Lha/g1;->c(Landroid/content/Context;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception v0

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v2, "\u62a5\u9519\uff1a"

    .line 18
    .line 19
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 37
    .line 38
    .line 39
    return-void
.end method
