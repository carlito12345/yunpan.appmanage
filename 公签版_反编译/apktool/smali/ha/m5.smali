.class public final Lha/m5;
.super Lha/a4;
.source "SourceFile"


# static fields
.field public static final synthetic w:I


# instance fields
.field public final g:Z

.field public final h:Z

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;

.field public final k:Landroid/view/Display;

.field public l:Lha/g5;

.field public final m:Landroid/os/Handler;

.field public n:Landroid/hardware/display/VirtualDisplay;

.field public p:I

.field public q:I

.field public r:I

.field public s:Landroid/content/Context;

.field public t:Landroid/view/WindowManager;

.field public v:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/yunpan/appmanage/ui/ActivityDisplayManager;Lcom/yunpan/appmanage/ui/ActivityDisplayManager;ZZLandroid/view/Display;Ljava/lang/String;)V
    .locals 1

    .line 1
    const v0, 0x7f0e009f

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, v0}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;I)V

    .line 5
    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lha/m5;->g:Z

    .line 9
    .line 10
    iput-boolean p1, p0, Lha/m5;->h:Z

    .line 11
    .line 12
    const-string p1, "DisplayShowHzhDialog"

    .line 13
    .line 14
    iput-object p1, p0, Lha/m5;->i:Ljava/lang/String;

    .line 15
    .line 16
    new-instance p1, Landroid/os/Handler;

    .line 17
    .line 18
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lha/m5;->m:Landroid/os/Handler;

    .line 26
    .line 27
    iput-boolean p3, p0, Lha/m5;->g:Z

    .line 28
    .line 29
    iput-boolean p4, p0, Lha/m5;->h:Z

    .line 30
    .line 31
    iput-object p5, p0, Lha/m5;->k:Landroid/view/Display;

    .line 32
    .line 33
    iput-object p6, p0, Lha/m5;->j:Ljava/lang/String;

    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 3

    .line 1
    iget-object v0, p0, Lha/m5;->m:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 8
    .line 9
    const/16 v2, 0x13

    .line 10
    .line 11
    if-lt v0, v2, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lha/m5;->n:Landroid/hardware/display/VirtualDisplay;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    :try_start_0
    invoke-static {v0}, Lcom/hierynomus/security/jce/a;->p(Landroid/hardware/display/VirtualDisplay;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    :catchall_0
    iput-object v1, p0, Lha/m5;->n:Landroid/hardware/display/VirtualDisplay;

    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lha/m5;->l:Lha/g5;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 27
    .line 28
    .line 29
    :cond_1
    iget-boolean v0, p0, Lha/m5;->h:Z

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    iget-object v0, p0, Lha/m5;->t:Landroid/view/WindowManager;

    .line 34
    .line 35
    iget-object v1, p0, Lha/m5;->v:Landroid/view/View;

    .line 36
    .line 37
    invoke-interface {v0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    .line 38
    .line 39
    .line 40
    :cond_2
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 11

    .line 1
    invoke-super {p0, p1}, Lha/a4;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f0b036b

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    new-instance v0, Lcom/google/android/material/datepicker/l;

    .line 12
    .line 13
    const/16 v1, 0xd

    .line 14
    .line 15
    invoke-direct {v0, p0, v1}, Lcom/google/android/material/datepicker/l;-><init>(Landroid/view/View$OnCreateContextMenuListener;I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    .line 20
    .line 21
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 22
    .line 23
    const/16 v0, 0x15

    .line 24
    .line 25
    if-lt p1, v0, :cond_2

    .line 26
    .line 27
    iget-boolean v0, p0, Lha/m5;->h:Z

    .line 28
    .line 29
    iget-object v1, p0, Lha/m5;->k:Landroid/view/Display;

    .line 30
    .line 31
    iget-object v2, p0, Lha/a4;->b:Landroid/content/Context;

    .line 32
    .line 33
    const v3, 0x7f0b0584

    .line 34
    .line 35
    .line 36
    const v4, 0x7f0e005c

    .line 37
    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    invoke-virtual {v2, v1}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iput-object v0, p0, Lha/m5;->s:Landroid/content/Context;

    .line 46
    .line 47
    const-string v1, "window"

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Landroid/view/WindowManager;

    .line 54
    .line 55
    iput-object v0, p0, Lha/m5;->t:Landroid/view/WindowManager;

    .line 56
    .line 57
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 58
    .line 59
    const/16 v1, 0x1a

    .line 60
    .line 61
    if-lt p1, v1, :cond_0

    .line 62
    .line 63
    const/16 p1, 0x7f6

    .line 64
    .line 65
    const/16 v8, 0x7f6

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    const/16 p1, 0x7d2

    .line 69
    .line 70
    const/16 v8, 0x7d2

    .line 71
    .line 72
    :goto_0
    const/4 v6, -0x1

    .line 73
    const/4 v7, -0x1

    .line 74
    const/16 v9, 0x328

    .line 75
    .line 76
    const/4 v10, -0x3

    .line 77
    move-object v5, v0

    .line 78
    invoke-direct/range {v5 .. v10}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 79
    .line 80
    .line 81
    iget-object p1, p0, Lha/m5;->s:Landroid/content/Context;

    .line 82
    .line 83
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    const/4 v1, 0x0

    .line 88
    invoke-virtual {p1, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    iput-object p1, p0, Lha/m5;->v:Landroid/view/View;

    .line 93
    .line 94
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    check-cast p1, Landroid/view/SurfaceView;

    .line 99
    .line 100
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    new-instance v2, Lha/l5;

    .line 105
    .line 106
    invoke-direct {v2, p0, p1}, Lha/l5;-><init>(Lha/m5;Landroid/view/SurfaceView;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 110
    .line 111
    .line 112
    iget-object p1, p0, Lha/m5;->t:Landroid/view/WindowManager;

    .line 113
    .line 114
    iget-object v1, p0, Lha/m5;->v:Landroid/view/View;

    .line 115
    .line 116
    invoke-interface {p1, v1, v0}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_1
    new-instance p1, Lha/g5;

    .line 121
    .line 122
    const/4 v0, 0x4

    .line 123
    invoke-direct {p1, p0, v2, v1, v0}, Lha/g5;-><init>(Lha/a4;Landroid/content/Context;Landroid/view/Display;I)V

    .line 124
    .line 125
    .line 126
    iput-object p1, p0, Lha/m5;->l:Lha/g5;

    .line 127
    .line 128
    invoke-virtual {p1, v4}, Landroid/app/Dialog;->setContentView(I)V

    .line 129
    .line 130
    .line 131
    iget-object p1, p0, Lha/m5;->l:Lha/g5;

    .line 132
    .line 133
    invoke-virtual {p1}, Landroid/app/Presentation;->show()V

    .line 134
    .line 135
    .line 136
    iget-object p1, p0, Lha/m5;->l:Lha/g5;

    .line 137
    .line 138
    invoke-virtual {p1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    check-cast p1, Landroid/view/SurfaceView;

    .line 143
    .line 144
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    new-instance v1, Lha/l5;

    .line 149
    .line 150
    invoke-direct {v1, p0, p1}, Lha/l5;-><init>(Lha/m5;Landroid/view/SurfaceView;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 154
    .line 155
    .line 156
    :cond_2
    :goto_1
    return-void
.end method
