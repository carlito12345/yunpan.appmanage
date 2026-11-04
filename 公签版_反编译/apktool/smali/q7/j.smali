.class public final synthetic Lq7/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lq7/j;->a:I

    iput-object p2, p0, Lq7/j;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    iget p1, p0, Lq7/j;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lq7/j;->b:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p1, Landroid/view/View;

    .line 15
    .line 16
    invoke-static {p1}, Ls1/g;->Y(Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    return p1

    .line 21
    :pswitch_0
    iget-object p1, p0, Lq7/j;->b:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast p1, Lq7/l;

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    const/4 v0, 0x0

    .line 33
    const/4 v1, 0x1

    .line 34
    if-ne p2, v1, :cond_4

    .line 35
    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 37
    .line 38
    .line 39
    move-result-wide v2

    .line 40
    iget-wide v4, p1, Lq7/l;->o:J

    .line 41
    .line 42
    sub-long/2addr v2, v4

    .line 43
    const-wide/16 v4, 0x0

    .line 44
    .line 45
    cmp-long p2, v2, v4

    .line 46
    .line 47
    if-ltz p2, :cond_2

    .line 48
    .line 49
    const-wide/16 v4, 0x12c

    .line 50
    .line 51
    cmp-long p2, v2, v4

    .line 52
    .line 53
    if-lez p2, :cond_1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    const/4 p2, 0x0

    .line 57
    goto :goto_1

    .line 58
    :cond_2
    :goto_0
    const/4 p2, 0x1

    .line 59
    :goto_1
    if-eqz p2, :cond_3

    .line 60
    .line 61
    iput-boolean v0, p1, Lq7/l;->m:Z

    .line 62
    .line 63
    :cond_3
    invoke-virtual {p1}, Lq7/l;->u()V

    .line 64
    .line 65
    .line 66
    iput-boolean v1, p1, Lq7/l;->m:Z

    .line 67
    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 69
    .line 70
    .line 71
    move-result-wide v1

    .line 72
    iput-wide v1, p1, Lq7/l;->o:J

    .line 73
    .line 74
    :cond_4
    return v0

    .line 75
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
