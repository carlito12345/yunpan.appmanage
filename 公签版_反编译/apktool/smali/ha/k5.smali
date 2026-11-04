.class public final Lha/k5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field public final synthetic a:Lha/l5;


# direct methods
.method public constructor <init>(Lha/l5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lha/k5;->a:Lha/l5;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3

    .line 1
    iget-object p2, p0, Lha/k5;->a:Lha/l5;

    .line 2
    .line 3
    iget-object v0, p2, Lha/l5;->b:Lha/m5;

    .line 4
    .line 5
    iget-object v1, v0, Lha/m5;->n:Landroid/hardware/display/VirtualDisplay;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    iget v2, v0, Lha/m5;->p:I

    .line 10
    .line 11
    if-ne p3, v2, :cond_0

    .line 12
    .line 13
    iget v2, v0, Lha/m5;->q:I

    .line 14
    .line 15
    if-eq p4, v2, :cond_1

    .line 16
    .line 17
    :cond_0
    iput p3, v0, Lha/m5;->p:I

    .line 18
    .line 19
    iput p4, v0, Lha/m5;->q:I

    .line 20
    .line 21
    :try_start_0
    iget v0, v0, Lha/m5;->r:I

    .line 22
    .line 23
    invoke-static {v1, p3, p4, v0}, Lg7/d;->r(Landroid/hardware/display/VirtualDisplay;III)V

    .line 24
    .line 25
    .line 26
    iget-object p3, p2, Lha/l5;->b:Lha/m5;

    .line 27
    .line 28
    iget p4, p3, Lha/m5;->p:I

    .line 29
    .line 30
    iget p3, p3, Lha/m5;->q:I

    .line 31
    .line 32
    invoke-interface {p1, p4, p3}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p2, Lha/l5;->b:Lha/m5;

    .line 36
    .line 37
    iget-object p3, p1, Lha/m5;->i:Ljava/lang/String;

    .line 38
    .line 39
    iget p3, p1, Lha/m5;->p:I

    .line 40
    .line 41
    iget p1, p1, Lha/m5;->q:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    iget-object p1, p2, Lha/l5;->b:Lha/m5;

    .line 45
    .line 46
    iget-object p1, p1, Lha/m5;->i:Ljava/lang/String;

    .line 47
    .line 48
    :cond_1
    :goto_0
    return-void
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lha/k5;->a:Lha/l5;

    .line 2
    .line 3
    iget-object v1, v0, Lha/l5;->b:Lha/m5;

    .line 4
    .line 5
    iget v2, v1, Lha/m5;->p:I

    .line 6
    .line 7
    iget v1, v1, Lha/m5;->q:I

    .line 8
    .line 9
    invoke-interface {p1, v2, v1}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 10
    .line 11
    .line 12
    iget-object v0, v0, Lha/l5;->b:Lha/m5;

    .line 13
    .line 14
    iget-object v1, v0, Lha/m5;->n:Landroid/hardware/display/VirtualDisplay;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    :try_start_0
    iget-object v1, v0, Lha/a4;->b:Landroid/content/Context;

    .line 20
    .line 21
    const-string v2, "display"

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 28
    .line 29
    iget v2, v0, Lha/m5;->p:I

    .line 30
    .line 31
    iget v3, v0, Lha/m5;->q:I

    .line 32
    .line 33
    iget v4, v0, Lha/m5;->r:I

    .line 34
    .line 35
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-static {v1, v2, v3, v4, p1}, Lcom/hierynomus/security/jce/a;->b(Landroid/hardware/display/DisplayManager;IIILandroid/view/Surface;)Landroid/hardware/display/VirtualDisplay;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iput-object p1, v0, Lha/m5;->n:Landroid/hardware/display/VirtualDisplay;

    .line 44
    .line 45
    invoke-static {p1}, Lcom/hierynomus/security/jce/a;->c(Landroid/hardware/display/VirtualDisplay;)Landroid/view/Display;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .line 51
    .line 52
    :catchall_0
    :goto_0
    iget-object p1, v0, Lha/m5;->j:Ljava/lang/String;

    .line 53
    .line 54
    iget-object v1, v0, Lha/m5;->n:Landroid/hardware/display/VirtualDisplay;

    .line 55
    .line 56
    if-eqz v1, :cond_4

    .line 57
    .line 58
    invoke-static {v1}, Lcom/hierynomus/security/jce/a;->c(Landroid/hardware/display/VirtualDisplay;)Landroid/view/Display;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    if-nez v1, :cond_1

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_1
    iget-object v1, v0, Lha/m5;->n:Landroid/hardware/display/VirtualDisplay;

    .line 66
    .line 67
    invoke-static {v1}, Lcom/hierynomus/security/jce/a;->c(Landroid/hardware/display/VirtualDisplay;)Landroid/view/Display;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    iget-object v0, v0, Lha/a4;->b:Landroid/content/Context;

    .line 76
    .line 77
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    if-nez p1, :cond_2

    .line 86
    .line 87
    const-string p1, "\u672a\u627e\u5230\u76ee\u6807App"

    .line 88
    .line 89
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 90
    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_2
    const/high16 v2, 0x10000000

    .line 94
    .line 95
    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 96
    .line 97
    .line 98
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 99
    .line 100
    const/16 v3, 0x1a

    .line 101
    .line 102
    if-lt v2, v3, :cond_3

    .line 103
    .line 104
    invoke-static {}, Ld2/c;->f()Landroid/app/ActivityOptions;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-static {v2, v1}, Leg/a;->j(Landroid/app/ActivityOptions;I)V

    .line 109
    .line 110
    .line 111
    :try_start_1
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 116
    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_3
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 120
    .line 121
    new-instance v2, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    const-string v3, "am start -n \'"

    .line 124
    .line 125
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    const-string p1, "\' --display "

    .line 140
    .line 141
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    const/4 v1, 0x0

    .line 152
    invoke-virtual {v0, p1, v1}, La2/w0;->g(Ljava/lang/String;Lfa/z;)V

    .line 153
    .line 154
    .line 155
    goto :goto_2

    .line 156
    :cond_4
    :goto_1
    const-string p1, "\u6743\u9650\u4e0d\u8db3\uff0c\u65e0\u6cd5\u521b\u5efa"

    .line 157
    .line 158
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 159
    .line 160
    .line 161
    :catchall_1
    :goto_2
    return-void
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lha/k5;->a:Lha/l5;

    .line 2
    .line 3
    iget-object p1, p1, Lha/l5;->b:Lha/m5;

    .line 4
    .line 5
    sget v0, Lha/m5;->w:I

    .line 6
    .line 7
    iget-object v0, p1, Lha/m5;->n:Landroid/hardware/display/VirtualDisplay;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    :try_start_0
    invoke-static {v0}, Lcom/hierynomus/security/jce/a;->p(Landroid/hardware/display/VirtualDisplay;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    :catchall_0
    const/4 v0, 0x0

    .line 15
    iput-object v0, p1, Lha/m5;->n:Landroid/hardware/display/VirtualDisplay;

    .line 16
    .line 17
    :cond_0
    return-void
.end method
