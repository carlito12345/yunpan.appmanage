.class public final Lvb/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lvb/s;


# direct methods
.method public synthetic constructor <init>(Lvb/s;I)V
    .locals 0

    .line 1
    iput p2, p0, Lvb/r;->a:I

    iput-object p1, p0, Lvb/r;->b:Lvb/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget v0, p0, Lvb/r;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lvb/r;->b:Lvb/s;

    .line 7
    .line 8
    iget-object v1, v0, Lvb/s;->x:Ltb/u;

    .line 9
    .line 10
    invoke-virtual {v1}, Ltb/u;->g()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    iget-object v2, v0, Lvb/s;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 15
    .line 16
    const-wide/16 v3, 0xc8

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {v2}, Lio/github/rosemoe/sora/widget/CodeEditor;->getSnippetController()Lac/b;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 28
    .line 29
    .line 30
    move-result-wide v5

    .line 31
    iget-wide v7, v0, Lvb/s;->z:J

    .line 32
    .line 33
    sub-long/2addr v5, v7

    .line 34
    cmp-long v1, v5, v3

    .line 35
    .line 36
    if-lez v1, :cond_0

    .line 37
    .line 38
    invoke-virtual {v2}, Lio/github/rosemoe/sora/widget/CodeEditor;->getScroller()Ltb/m;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    iget-object v1, v1, Ltb/m;->b:Landroid/widget/OverScroller;

    .line 43
    .line 44
    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_0

    .line 49
    .line 50
    invoke-virtual {v0}, Lvb/s;->f()V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {v2, p0, v3, v4}, Lio/github/rosemoe/sora/widget/CodeEditor;->Y(Ljava/lang/Runnable;J)V

    .line 55
    .line 56
    .line 57
    :goto_0
    return-void

    .line 58
    :pswitch_0
    iget-object v0, p0, Lvb/r;->b:Lvb/s;

    .line 59
    .line 60
    iget-object v1, v0, Lvb/s;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 61
    .line 62
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getEventHandler()Ltb/u;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v1}, Ltb/u;->m()Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    iget-object v2, v0, Lvb/s;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 71
    .line 72
    if-nez v1, :cond_1

    .line 73
    .line 74
    invoke-virtual {v2}, Lio/github/rosemoe/sora/widget/CodeEditor;->getCursor()Lmb/j;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v1}, Lmb/j;->a()Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-nez v1, :cond_1

    .line 83
    .line 84
    invoke-virtual {v0}, Lub/b;->b()V

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_1
    invoke-virtual {v2}, Lio/github/rosemoe/sora/widget/CodeEditor;->getCursor()Lmb/j;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {v0}, Lmb/j;->a()Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-nez v0, :cond_2

    .line 97
    .line 98
    const-wide/16 v0, 0x64

    .line 99
    .line 100
    invoke-virtual {v2, p0, v0, v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->Y(Ljava/lang/Runnable;J)V

    .line 101
    .line 102
    .line 103
    :cond_2
    :goto_1
    return-void

    .line 104
    nop

    .line 105
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
