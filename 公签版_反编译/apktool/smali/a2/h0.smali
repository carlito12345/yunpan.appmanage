.class public final synthetic La2/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:J

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IJLjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, La2/h0;->a:I

    iput-object p4, p0, La2/h0;->c:Ljava/lang/Object;

    iput-wide p2, p0, La2/h0;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-wide v0, p0, La2/h0;->b:J

    .line 2
    .line 3
    iget-object v2, p0, La2/h0;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iget v3, p0, La2/h0;->a:I

    .line 6
    .line 7
    packed-switch v3, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast v2, Lvb/k;

    .line 11
    .line 12
    iget-wide v3, v2, Lvb/k;->D:J

    .line 13
    .line 14
    iget-wide v5, v2, Lvb/k;->C:J

    .line 15
    .line 16
    cmp-long v7, v3, v5

    .line 17
    .line 18
    if-gez v7, :cond_1

    .line 19
    .line 20
    iget-wide v3, v2, Lvb/k;->r:J

    .line 21
    .line 22
    cmp-long v5, v3, v0

    .line 23
    .line 24
    if-nez v5, :cond_1

    .line 25
    .line 26
    iget-object v0, v2, Lub/b;->a:Landroid/widget/PopupWindow;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v0, 0x1

    .line 36
    invoke-virtual {v2, v0}, Lub/b;->a(Z)V

    .line 37
    .line 38
    .line 39
    :cond_1
    :goto_0
    return-void

    .line 40
    :pswitch_0
    check-cast v2, La2/j0;

    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    sget-object v3, Lu1/f0;->a:Ljava/lang/String;

    .line 46
    .line 47
    iget-object v2, v2, La2/j0;->c:Ly1/t;

    .line 48
    .line 49
    iget-object v2, v2, Ly1/t;->a:Ly1/x;

    .line 50
    .line 51
    iget-object v2, v2, Ly1/x;->t:Lz1/e;

    .line 52
    .line 53
    invoke-virtual {v2}, Lz1/e;->M()Lz1/a;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    new-instance v4, Lz1/c;

    .line 58
    .line 59
    invoke-direct {v4, v3, v0, v1}, Lz1/c;-><init>(Lz1/a;J)V

    .line 60
    .line 61
    .line 62
    const/16 v0, 0x3f2

    .line 63
    .line 64
    invoke-virtual {v2, v3, v0, v4}, Lz1/e;->N(Lz1/a;ILu1/j;)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    nop

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
