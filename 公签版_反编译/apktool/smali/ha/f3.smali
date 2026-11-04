.class public final synthetic Lha/f3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lha/a4;


# direct methods
.method public synthetic constructor <init>(Lha/a4;I)V
    .locals 0

    .line 1
    iput p2, p0, Lha/f3;->a:I

    iput-object p1, p0, Lha/f3;->b:Lha/a4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 5

    .line 1
    iget v0, p0, Lha/f3;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lha/f3;->b:Lha/a4;

    .line 7
    .line 8
    check-cast v0, Lha/r3;

    .line 9
    .line 10
    iget v1, v0, Lha/r3;->t:I

    .line 11
    .line 12
    if-ltz v1, :cond_1

    .line 13
    .line 14
    iget v2, v0, Lha/r3;->v:I

    .line 15
    .line 16
    if-ltz v2, :cond_1

    .line 17
    .line 18
    const/16 v3, 0x64

    .line 19
    .line 20
    if-lt v1, v3, :cond_0

    .line 21
    .line 22
    sget-object v4, Lcom/yunpan/appmanage/carsdk/j0;->a:Lcom/yunpan/appmanage/carsdk/k0;

    .line 23
    .line 24
    sub-int/2addr v1, v3

    .line 25
    invoke-virtual {v4, v1, v2}, Lcom/yunpan/appmanage/carsdk/k0;->h(II)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object v3, v0, Lha/r3;->y:Landroid/media/AudioManager;

    .line 30
    .line 31
    const/4 v4, 0x0

    .line 32
    invoke-virtual {v3, v1, v2, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 33
    .line 34
    .line 35
    :goto_0
    const/4 v1, -0x1

    .line 36
    iput v1, v0, Lha/r3;->t:I

    .line 37
    .line 38
    iput v1, v0, Lha/r3;->v:I

    .line 39
    .line 40
    :cond_1
    iget-object v1, v0, Lha/r3;->B:Landroid/media/audiofx/LoudnessEnhancer;

    .line 41
    .line 42
    const/4 v2, 0x0

    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    :try_start_0
    invoke-static {v1}, Lcom/hierynomus/security/jce/a;->r(Landroid/media/audiofx/LoudnessEnhancer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    :catch_0
    iput-object v2, v0, Lha/r3;->B:Landroid/media/audiofx/LoudnessEnhancer;

    .line 49
    .line 50
    :cond_2
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Lha/r3;->c()V

    .line 54
    .line 55
    .line 56
    iget-object p1, v0, Lha/r3;->h:Landroid/widget/TextView;

    .line 57
    .line 58
    const-string v1, "\u8bd5\u542c"

    .line 59
    .line 60
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    .line 62
    .line 63
    iput-object v2, v0, Lha/r3;->k:Landroid/media/MediaPlayer;

    .line 64
    .line 65
    return-void

    .line 66
    :pswitch_0
    iget-object v0, p0, Lha/f3;->b:Lha/a4;

    .line 67
    .line 68
    check-cast v0, Lha/j3;

    .line 69
    .line 70
    iget v1, v0, Lha/j3;->y:I

    .line 71
    .line 72
    if-ltz v1, :cond_4

    .line 73
    .line 74
    iget v2, v0, Lha/j3;->z:I

    .line 75
    .line 76
    if-ltz v2, :cond_4

    .line 77
    .line 78
    const/16 v3, 0x64

    .line 79
    .line 80
    if-lt v1, v3, :cond_3

    .line 81
    .line 82
    sget-object v4, Lcom/yunpan/appmanage/carsdk/j0;->a:Lcom/yunpan/appmanage/carsdk/k0;

    .line 83
    .line 84
    sub-int/2addr v1, v3

    .line 85
    invoke-virtual {v4, v1, v2}, Lcom/yunpan/appmanage/carsdk/k0;->h(II)V

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_3
    iget-object v3, v0, Lha/j3;->A:Landroid/media/AudioManager;

    .line 90
    .line 91
    const/4 v4, 0x0

    .line 92
    invoke-virtual {v3, v1, v2, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 93
    .line 94
    .line 95
    :goto_1
    const/4 v1, -0x1

    .line 96
    iput v1, v0, Lha/j3;->y:I

    .line 97
    .line 98
    iput v1, v0, Lha/j3;->z:I

    .line 99
    .line 100
    :cond_4
    iget-object v1, v0, Lha/j3;->D:Landroid/media/audiofx/LoudnessEnhancer;

    .line 101
    .line 102
    const/4 v2, 0x0

    .line 103
    if-eqz v1, :cond_5

    .line 104
    .line 105
    :try_start_1
    invoke-static {v1}, Lcom/hierynomus/security/jce/a;->r(Landroid/media/audiofx/LoudnessEnhancer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 106
    .line 107
    .line 108
    :catch_1
    iput-object v2, v0, Lha/j3;->D:Landroid/media/audiofx/LoudnessEnhancer;

    .line 109
    .line 110
    :cond_5
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0}, Lha/j3;->c()V

    .line 114
    .line 115
    .line 116
    iput-object v2, v0, Lha/j3;->p:Landroid/media/MediaPlayer;

    .line 117
    .line 118
    iget-object p1, v0, Lha/j3;->l:Landroid/widget/TextView;

    .line 119
    .line 120
    const-string v0, "\u8bd5\u542c\u64ad\u653e"

    .line 121
    .line 122
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    .line 124
    .line 125
    return-void

    .line 126
    nop

    .line 127
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
