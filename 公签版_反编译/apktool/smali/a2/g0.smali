.class public final synthetic La2/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p2, p0, La2/g0;->a:I

    iput-object p3, p0, La2/g0;->c:Ljava/lang/Object;

    iput p1, p0, La2/g0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    iget v1, p0, La2/g0;->b:I

    .line 3
    .line 4
    iget-object v2, p0, La2/g0;->c:Ljava/lang/Object;

    .line 5
    .line 6
    iget v3, p0, La2/g0;->a:I

    .line 7
    .line 8
    packed-switch v3, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast v2, Ly1/f0;

    .line 12
    .line 13
    iget-object v0, v2, Ly1/f0;->y:Lz1/e;

    .line 14
    .line 15
    invoke-virtual {v0}, Lz1/e;->I()Lz1/a;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    new-instance v3, Lua/t6;

    .line 20
    .line 21
    const/16 v4, 0x10

    .line 22
    .line 23
    invoke-direct {v3, v2, v1, v4}, Lua/t6;-><init>(Lz1/a;II)V

    .line 24
    .line 25
    .line 26
    const/16 v1, 0x40a

    .line 27
    .line 28
    invoke-virtual {v0, v2, v1, v3}, Lz1/e;->N(Lz1/a;ILu1/j;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :pswitch_0
    check-cast v2, Ls1/d;

    .line 33
    .line 34
    iget-object v0, v2, Ls1/d;->b:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 35
    .line 36
    invoke-interface {v0, v1}, Landroid/media/AudioManager$OnAudioFocusChangeListener;->onAudioFocusChange(I)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :pswitch_1
    check-cast v2, Lo0/b;

    .line 41
    .line 42
    invoke-virtual {v2, v1}, Lo0/b;->h(I)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :pswitch_2
    check-cast v2, Lcom/google/android/material/sidesheet/SideSheetBehavior;

    .line 47
    .line 48
    iget-object v3, v2, Lcom/google/android/material/sidesheet/SideSheetBehavior;->p:Ljava/lang/ref/WeakReference;

    .line 49
    .line 50
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    check-cast v3, Landroid/view/View;

    .line 55
    .line 56
    if-eqz v3, :cond_0

    .line 57
    .line 58
    invoke-virtual {v2, v3, v1, v0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->t(Landroid/view/View;IZ)V

    .line 59
    .line 60
    .line 61
    :cond_0
    return-void

    .line 62
    :pswitch_3
    check-cast v2, La2/j0;

    .line 63
    .line 64
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    sget-object v3, Lu1/f0;->a:Ljava/lang/String;

    .line 68
    .line 69
    iget-object v2, v2, La2/j0;->c:Ly1/t;

    .line 70
    .line 71
    iget-object v2, v2, Ly1/t;->a:Ly1/x;

    .line 72
    .line 73
    iget-object v2, v2, Ly1/x;->E:Lb5/i;

    .line 74
    .line 75
    new-instance v3, Lfa/d0;

    .line 76
    .line 77
    const/4 v4, 0x5

    .line 78
    invoke-direct {v3, v1, v4}, Lfa/d0;-><init>(II)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    iget-object v5, v2, Lb5/i;->c:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast v5, Lu1/b0;

    .line 91
    .line 92
    iget-object v5, v5, Lu1/b0;->a:Landroid/os/Handler;

    .line 93
    .line 94
    invoke-virtual {v5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    const/4 v6, 0x1

    .line 99
    if-ne v4, v5, :cond_1

    .line 100
    .line 101
    const/4 v0, 0x1

    .line 102
    :cond_1
    invoke-static {v0}, La9/o;->t(Z)V

    .line 103
    .line 104
    .line 105
    iget v0, v2, Lb5/i;->a:I

    .line 106
    .line 107
    add-int/2addr v0, v6

    .line 108
    iput v0, v2, Lb5/i;->a:I

    .line 109
    .line 110
    new-instance v0, Ls1/f;

    .line 111
    .line 112
    const/4 v4, 0x3

    .line 113
    invoke-direct {v0, v2, v4, v3}, Ls1/f;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v2, v0}, Lb5/i;->l(Ljava/lang/Runnable;)V

    .line 117
    .line 118
    .line 119
    iget-object v0, v2, Lb5/i;->e:Ljava/lang/Object;

    .line 120
    .line 121
    check-cast v0, Ljava/lang/Integer;

    .line 122
    .line 123
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-virtual {v2, v0}, Lb5/i;->q(Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    return-void

    .line 131
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
