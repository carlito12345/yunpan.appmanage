.class public final Lb2/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Lf2/c0;

.field public final c:Ljava/util/concurrent/CopyOnWriteArrayList;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILf2/c0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb2/d;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput p2, p0, Lb2/d;->a:I

    iput-object p3, p0, Lb2/d;->b:Lf2/c0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu1/f;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lb2/d;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lf2/h0;

    .line 18
    .line 19
    iget-object v2, v1, Lf2/h0;->b:Ljava/lang/Object;

    .line 20
    .line 21
    new-instance v3, La2/c0;

    .line 22
    .line 23
    const/16 v4, 0x13

    .line 24
    .line 25
    invoke-direct {v3, p1, v4, v2}, La2/c0;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    iget-object v1, v1, Lf2/h0;->a:Landroid/os/Handler;

    .line 29
    .line 30
    invoke-static {v1, v3}, Lu1/f0;->J(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    return-void
.end method
