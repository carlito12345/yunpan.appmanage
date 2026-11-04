.class public final synthetic La2/x0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu1/j;


# instance fields
.field public final synthetic a:J


# direct methods
.method public synthetic constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, La2/x0;->a:J

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p1, La2/i1;

    .line 2
    .line 3
    iget-object v0, p1, La2/i1;->b:La2/n1;

    .line 4
    .line 5
    iget-object v1, v0, La2/n1;->j:La2/i1;

    .line 6
    .line 7
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object p1, v0, La2/n1;->n:La1/i;

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    iget-object p1, p1, La1/i;->b:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p1, La2/q1;

    .line 22
    .line 23
    iput-boolean v0, p1, La2/q1;->M1:Z

    .line 24
    .line 25
    iget-object p1, p1, La2/q1;->A1:La2/j0;

    .line 26
    .line 27
    iget-object v0, p1, La2/j0;->b:Landroid/os/Handler;

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    new-instance v1, La2/h0;

    .line 32
    .line 33
    iget-wide v2, p0, La2/x0;->a:J

    .line 34
    .line 35
    const/4 v4, 0x0

    .line 36
    invoke-direct {v1, v4, v2, v3, p1}, La2/h0;-><init>(IJLjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 40
    .line 41
    .line 42
    :cond_1
    :goto_0
    return-void
.end method
